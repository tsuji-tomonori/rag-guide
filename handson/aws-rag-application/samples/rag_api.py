#!/usr/bin/env python3
"""Run the Bedrock APIs used by the minimal four-element RAG lab."""

from __future__ import annotations

import argparse
import json
import os
import sys
from typing import Any

import boto3
from botocore.exceptions import BotoCoreError, ClientError


REGION = os.getenv("AWS_REGION", "ap-northeast-1")
KNOWLEDGE_BASE_ID = os.getenv("KB_ID", "")
GENERATION_MODEL_ARN = os.getenv(
    "GENERATION_MODEL_ARN",
    (
        f"arn:aws:bedrock:{REGION}::foundation-model/"
        "anthropic.claude-haiku-4-5-20251001-v1:0"
    ),
)
RERANKER_MODEL_ARN = os.getenv("RERANKER_MODEL_ARN", "")
MAX_QUESTION_CHARACTERS = 1_000
TEXT_PREVIEW_CHARACTERS = 1_200


def env_int(name: str, default: int) -> int:
    """Read an integer environment variable with a useful error."""
    raw = os.getenv(name, str(default))
    try:
        return int(raw)
    except ValueError as error:
        raise SystemExit(f"{name}は整数で指定してください: {raw}") from error


NUMBER_OF_RESULTS = env_int("RETRIEVAL_RESULTS", 5)
NUMBER_OF_RERANKED_RESULTS = env_int("RERANKED_RESULTS", 5)


def s3_uri(item: dict[str, Any]) -> str:
    """Return an S3 URI from a Bedrock retrieval result or citation."""
    location = item.get("location") or {}
    return str((location.get("s3Location") or {}).get("uri", ""))


def text_content(item: dict[str, Any]) -> str:
    """Return a bounded text preview from a Bedrock content object."""
    content = item.get("content") or {}
    text = str(content.get("text", "")).strip()
    if len(text) <= TEXT_PREVIEW_CHARACTERS:
        return text
    return text[:TEXT_PREVIEW_CHARACTERS] + "..."


def vector_search_configuration() -> dict[str, Any]:
    """Build the shared retrieval settings, optionally with reranking."""
    configuration: dict[str, Any] = {
        "numberOfResults": NUMBER_OF_RESULTS,
        "overrideSearchType": "SEMANTIC",
    }
    if RERANKER_MODEL_ARN:
        configuration["rerankingConfiguration"] = {
            "type": "BEDROCK_RERANKING_MODEL",
            "bedrockRerankingConfiguration": {
                "numberOfRerankedResults": NUMBER_OF_RERANKED_RESULTS,
                "modelConfiguration": {
                    "modelArn": RERANKER_MODEL_ARN,
                },
                "metadataConfiguration": {
                    "selectionMode": "ALL",
                },
            },
        }
    return configuration


def retrieve(
    client: Any, question: str
) -> tuple[list[dict[str, Any]], dict[str, Any]]:
    """Call Retrieve and normalize its ordered results."""
    response = client.retrieve(
        knowledgeBaseId=KNOWLEDGE_BASE_ID,
        retrievalQuery={"text": question},
        retrievalConfiguration={
            "vectorSearchConfiguration": vector_search_configuration()
        },
    )
    raw_results = response.get("retrievalResults", [])
    results = [
        {
            "rank": rank,
            "score": item.get("score"),
            "text": text_content(item),
            "source_uri": s3_uri(item),
        }
        for rank, item in enumerate(raw_results, start=1)
    ]
    summary = {
        "requested_results": NUMBER_OF_RESULTS,
        "reranker_enabled": bool(RERANKER_MODEL_ARN),
        "reranked_results": (
            NUMBER_OF_RERANKED_RESULTS if RERANKER_MODEL_ARN else None
        ),
        "returned_results": len(results),
        "results": results,
    }
    return raw_results, summary


def normalized_citations(response: dict[str, Any]) -> list[dict[str, Any]]:
    """Flatten source references from RetrieveAndGenerate citations."""
    citations: list[dict[str, Any]] = []
    seen: set[tuple[str, str]] = set()

    for citation in response.get("citations", []):
        generated_part = (
            citation.get("generatedResponsePart", {})
            .get("textResponsePart", {})
            .get("text", "")
        )
        for reference in citation.get("retrievedReferences", []):
            uri = s3_uri(reference)
            source_text = text_content(reference)
            identity = (uri, source_text)
            if identity in seen:
                continue
            seen.add(identity)
            citations.append(
                {
                    "generated_text": generated_part,
                    "source_uri": uri,
                    "source_text": source_text,
                }
            )
    return citations


def retrieve_and_generate(client: Any, question: str) -> dict[str, Any]:
    """Call RetrieveAndGenerate and normalize the answer and citations."""
    response = client.retrieve_and_generate(
        input={"text": question},
        retrieveAndGenerateConfiguration={
            "type": "KNOWLEDGE_BASE",
            "knowledgeBaseConfiguration": {
                "knowledgeBaseId": KNOWLEDGE_BASE_ID,
                "modelArn": GENERATION_MODEL_ARN,
                "retrievalConfiguration": {
                    "vectorSearchConfiguration": vector_search_configuration()
                },
            },
        },
    )
    return {
        "answer": (response.get("output") or {}).get("text", ""),
        "citations": normalized_citations(response),
        "session_id": response.get("sessionId", ""),
    }


def validate(question: str) -> None:
    """Validate local inputs before making chargeable API requests."""
    if not KNOWLEDGE_BASE_ID:
        raise SystemExit(
            "KB_IDが未設定です。export KB_ID=実際のKnowledge-Base-ID "
            "を実行してください。"
        )
    if not question:
        raise SystemExit("質問が空です。")
    if len(question) > MAX_QUESTION_CHARACTERS:
        raise SystemExit(
            f"質問は{MAX_QUESTION_CHARACTERS}文字以内にしてください。"
        )
    if not 1 <= NUMBER_OF_RESULTS <= 100:
        raise SystemExit("RETRIEVAL_RESULTSは1から100で指定してください。")
    if RERANKER_MODEL_ARN and not (
        1 <= NUMBER_OF_RERANKED_RESULTS <= NUMBER_OF_RESULTS
    ):
        raise SystemExit(
            "RERANKED_RESULTSは1以上かつRETRIEVAL_RESULTS以下にしてください。"
        )


def parse_args() -> argparse.Namespace:
    """Parse the API mode and required question."""
    parser = argparse.ArgumentParser(
        description=(
            "Retrieveで順位を確認し、RetrieveAndGenerateで回答を取得します。"
        )
    )
    parser.add_argument(
        "--mode",
        choices=("retrieve", "generate", "both"),
        default="both",
        help="実行する工程。既定値はboth。",
    )
    parser.add_argument("question", help="Knowledge Baseへ送る一つの質問")
    return parser.parse_args()


def main() -> None:
    """Run the selected API calls and print one machine-readable document."""
    args = parse_args()
    question = args.question.strip()
    validate(question)

    client = boto3.client("bedrock-agent-runtime", region_name=REGION)
    try:
        retrieval = None
        generation = None
        if args.mode in {"retrieve", "both"}:
            _, retrieval = retrieve(client, question)
        if args.mode in {"generate", "both"}:
            generation = retrieve_and_generate(client, question)
    except (BotoCoreError, ClientError) as error:
        if isinstance(error, ClientError):
            details = error.response.get("Error", {})
            code = details.get("Code", error.__class__.__name__)
            message = details.get("Message", str(error))
        else:
            code = error.__class__.__name__
            message = str(error)
        print(
            json.dumps(
                {"error": code, "message": message},
                ensure_ascii=False,
                indent=2,
            ),
            file=sys.stderr,
        )
        raise SystemExit(1) from error

    output = {
        "aws_region": REGION,
        "knowledge_base_id": KNOWLEDGE_BASE_ID,
        "question": question,
        "mode": args.mode,
    }
    if retrieval is not None:
        output["retrieval"] = retrieval
    if generation is not None:
        output["generation"] = generation
    print(json.dumps(output, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
