#!/usr/bin/env python3
"""Generate source-summary propositions and conditional sentence proofs.

The generated Lean theorems have the form

    source-summary facts -> guide-sentence formula

They do not assert that a paper is true and do not assert that automatic
Japanese/English atomization preserves every nuance.  Those are independent
adequacy and empirical-validation obligations in the output ledger.
"""

from __future__ import annotations

import csv
import hashlib
import json
import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable

from generate_evidence_coverage import OUT, ROOT, read_csv, write_csv
from generate_semantic_assurance import ATOM_PATTERNS as TECHNIQUE_PATTERNS


LEAN_DIR = ROOT / "formal" / "lean" / "RagEvidence"
GENERATED_LEAN = LEAN_DIR / "LiteratureGenerated.lean"
PROOFS_LEAN = LEAN_DIR / "LiteratureProofs.lean"
MANIFEST = OUT / "literature_entailment_manifest.json"


EXTRA_GUIDE_PATTERNS: dict[str, tuple[str, ...]] = {
    "rag=true": (r"\bRAG\b", r"検索拡張生成", r"retrieval[- ]augmented"),
    "retrieval=true": (r"検索", r"取得", r"retriev", r"検索器"),
    "generation=true": (r"生成", r"回答", r"言語モデル", r"generate"),
    "external_knowledge=true": (r"外部(?:知識|情報|記憶|資料)", r"Knowledge Bases?", r"知識ベース"),
    "parametric_memory=true": (r"内部知識", r"パラメトリック", r"parametric"),
    "nonparametric_memory=true": (r"検索可能な記憶", r"非パラメトリック", r"non[- ]parametric"),
    "knowledge_intensive=true": (r"知識集約", r"knowledge[- ]intensive"),
    "open_domain_qa=true": (r"オープンドメイン", r"open[- ]domain"),
    "citation=true": (r"引用", r"citation", r"出典付き"),
    "attribution=true": (r"帰属", r"attribution", r"出典対応"),
    "factuality=true": (r"事実性", r"factual", r"ファクト"),
    "hallucination=true": (r"ハルシネーション", r"幻覚", r"hallucinat"),
    "verification=true": (r"検証", r"照合", r"verify", r"verification"),
    "unanswerable=true": (r"回答不能", r"回答できない", r"unanswerable"),
    "answerability=true": (r"回答可能", r"answerab"),
    "evidence_support=true": (r"根拠", r"支持", r"ground", r"evidence"),
    "temporal_freshness=true": (r"鮮度", r"最新", r"時間", r"時点", r"古い資料", r"tempor"),
    "data_quality=true": (r"データ品質", r"妥当性", r"data quality", r"data validation"),
    "dataset_documentation=true": (r"データセット.*(?:記録|文書)", r"Datasheets", r"Data Statements"),
    "model_documentation=true": (r"モデルカード", r"Model Cards?"),
    "dataset_shift=true": (r"分布変化", r"dataset shift", r"distribution shift"),
    "layout=true": (r"レイアウト", r"document layout"),
    "ocr=true": (r"\bOCR\b", r"光学文字認識"),
    "table_extraction=true": (r"表抽出", r"table extraction"),
    "context_compression=true": (r"Context圧縮", r"コンテキスト圧縮", r"context compression"),
    "long_context=true": (r"長いContext", r"長文脈", r"long context", r"Lost in the Middle"),
    "evaluation=true": (r"評価", r"測定", r"診断", r"benchmark", r"ベンチマーク"),
    "benchmark=true": (r"ベンチマーク", r"benchmark", r"評価用データセット"),
    "recall_metric=true": (r"Recall", r"再現率", r"検索精度", r"top[- ]?\d+"),
    "ranking_metric=true": (r"nDCG", r"順位.*指標", r"累積利得"),
    "human_evaluation=true": (r"人手評価", r"human evaluation"),
    "llm_judge=true": (r"LLM[- ]as[- ]a[- ]Judge", r"モデル評価者"),
    "ab_testing=true": (r"A[/-]B", r"比較実験", r"controlled experiment"),
    "latency=true": (r"latency", r"レイテンシ", r"応答時間", r"p95"),
    "cost=true": (r"費用", r"コスト", r"cost"),
    "scalability=true": (r"大規模", r"scale", r"スケーラ"),
    "fault_tolerance=true": (r"耐障害", r"再試行", r"fault", r"障害"),
    "dataflow=true": (r"dataflow", r"データフロー", r"pipeline", r"パイプライン"),
    "acid=true": (r"\bACID\b", r"トランザクション"),
    "authorization=true": (r"認可", r"権限", r"アクセス制御", r"authorization", r"ACL"),
    "multi_tenant=true": (r"tenant", r"テナント", r"multi[- ]tenant"),
    "security=true": (r"セキュリティ", r"攻撃", r"防御", r"security"),
    "prompt_injection=true": (r"Prompt Injection", r"プロンプトインジェクション", r"命令.*注入"),
    "privacy=true": (r"プライバシー", r"個人情報", r"privacy", r"PII"),
    "membership_inference=true": (r"membership inference", r"メンバーシップ推論"),
    "training_data_extraction=true": (r"学習データ.*抽出", r"extracting training data"),
    "differential_privacy=true": (r"差分プライバシー", r"differential privacy"),
    "tool_use=true": (r"tool", r"ツール", r"ReAct"),
    "self_reflection=true": (r"自己反省", r"自己批評", r"self[- ]reflection", r"Self[- ]RAG"),
    "modular=true": (r"モジュール", r"modular", r"ルーティング"),
    "text_to_sql=true": (r"Text[- ]to[- ]SQL", r"自然言語.*SQL", r"schema linking"),
    "structured_output=true": (r"構造化出力", r"structured output"),
    "bedrock_kb=true": (r"Bedrock", r"Knowledge Bases?", r"Knowledge Base"),
    "retrieve_and_generate=true": (r"RetrieveAndGenerate",),
    "s3_vectors=true": (r"S3 Vectors?",),
    "opensearch=true": (r"OpenSearch",),
    "aurora_pg=true": (r"Aurora PostgreSQL", r"pgvector"),
    "mongodb_atlas=true": (r"MongoDB Atlas",),
    "metadata_filter=true": (r"metadata filter", r"metadata.*フィルタ", r"RetrievalFilter"),
    "embedding_model=true": (r"embedding model", r"埋め込みモデル", r"Titan Text Embeddings", r"Cohere Embed"),
    "dimension_contract=true": (r"次元", r"dimension"),
    "guardrails=true": (r"Guardrails?", r"ガードレール"),
    "parsing=true": (r"parse", r"解析", r"パース"),
    "technical_debt=true": (r"技術的負債", r"technical debt"),
    "fairness=true": (r"公平", r"fairness", r"bias", r"バイアス"),
    "risk=true": (r"リスク", r"危険", r"risk", r"dangers"),
    "empirical_result=true": (r"上回", r"改善", r"結果", r"実験", r"報告", r"outperform", r"state[- ]of[- ]the[- ]art"),
}


OFFICIAL_SOURCE_OVERRIDES: dict[str, set[str]] = {
    "SRC-178": {"retrieval=true", "generation=true", "citation=true", "bedrock_kb=true", "retrieve_and_generate=true"},
    "SRC-179": {"retrieval=true", "external_knowledge=true", "dense=true", "s3_vectors=true", "bedrock_kb=true", "metadata_filter=true"},
    "SRC-180": {"embedding_model=true", "dimension_contract=true", "bedrock_kb=true"},
    "SRC-181": {"embedding_model=true", "dimension_contract=true", "dense=true", "bedrock_kb=true"},
    "SRC-182": {"embedding_model=true", "dimension_contract=true", "dense=true", "bedrock_kb=true"},
    "SRC-183": {"s3_vectors=true", "dense=true", "dimension_contract=true", "metadata_filter=true"},
    "SRC-184": {"parsing=true", "layout=true", "ocr=true", "bedrock_kb=true"},
    "SRC-185": {"parsing=true", "chunking=true", "bedrock_kb=true"},
    "SRC-186": {"chunking=true", "hierarchical=true", "bedrock_kb=true"},
    "SRC-187": {"retrieval=true", "filter_aware=true", "rerank=true", "bedrock_kb=true"},
    "SRC-188": {"metadata_filter=true", "bedrock_kb=true"},
    "SRC-189": {"s3_vectors=true", "metadata_filter=true"},
    "SRC-190": {"rerank=true", "bedrock_kb=true"},
    "SRC-191": {"structured_output=true", "bedrock_kb=true"},
    "SRC-192": {"rag=true", "evaluation=true", "bedrock_kb=true"},
    "SRC-193": {"multimodal=true", "retrieval=true", "generation=true", "bedrock_kb=true"},
}


SOURCE_ATOM_ADDITIONS: dict[str, set[str]] = {
    "SRC-001": {"rag=true", "retrieval=true", "generation=true", "external_knowledge=true", "parametric_memory=true", "nonparametric_memory=true"},
    "SRC-023": {"technical_debt=true", "risk=true"},
    "SRC-118": {"security=true", "authorization=true"},
    "SRC-137": {"fairness=true", "risk=true"},
    "SRC-138": {"fairness=true", "risk=true"},
}


NEGATION = re.compile(r"(?:では|は|を|が)?(?:ない|ありません|ません|せず|不要|禁止|異なり)")
IMPLICATION = re.compile(r"場合(?:は|に)?|とき(?:は|に)?|なら(?:ば)?|際(?:は|に)?|ためには")
DISJUNCTION = re.compile(r"または|もしくは|あるいは|いずれか|どちらか")


Formula = tuple


def split_values(value: str) -> list[str]:
    return [item.strip() for item in value.split(";") if item.strip()]


def unique(values: Iterable[str]) -> list[str]:
    result: list[str] = []
    for value in values:
        if value and value not in result:
            result.append(value)
    return result


def guide_atoms(text: str) -> list[str]:
    patterns = dict(TECHNIQUE_PATTERNS)
    patterns.update(EXTRA_GUIDE_PATTERNS)
    found: list[str] = []
    for atom, candidates in patterns.items():
        if any(re.search(pattern, text, re.I) for pattern in candidates):
            found.append(atom.strip())
    return unique(found)


def conjunction(atoms: list[str]) -> Formula | None:
    if not atoms:
        return None
    formula: Formula = ("atom", atoms[0])
    for atom in atoms[1:]:
        formula = ("and", formula, ("atom", atom))
    return formula


def disjunction(parts: list[Formula]) -> Formula:
    formula = parts[0]
    for part in parts[1:]:
        formula = ("or", formula, part)
    return formula


def decompose(text: str) -> tuple[Formula | None, str, str]:
    atoms = guide_atoms(text)
    if not atoms:
        return None, "UNFORMALIZED", "no controlled semantic atom recognized"
    if NEGATION.search(text):
        base = conjunction(atoms)
        return ("not", base), "NOT", "negation scope is represented but the positive-fact prover does not discharge it"
    implication = IMPLICATION.search(text)
    if implication:
        left_atoms = guide_atoms(text[: implication.start()])
        right_atoms = guide_atoms(text[implication.end() :])
        left = conjunction(left_atoms)
        right = conjunction(right_atoms)
        if left is not None and right is not None:
            return ("imp", left, right), "IMPLIES", "antecedent and consequent were separated at an explicit conditional marker"
        return None, "UNFORMALIZED", "conditional marker found but antecedent/consequent atoms were incomplete"
    if DISJUNCTION.search(text):
        parts = [conjunction(guide_atoms(part)) for part in DISJUNCTION.split(text)]
        complete = [part for part in parts if part is not None]
        if len(complete) >= 2:
            return disjunction(complete), "OR", "explicit Japanese disjunction marker"
    return conjunction(atoms), "ATOM" if len(atoms) == 1 else "AND", "positive controlled-atom composition"


def formula_atoms(formula: Formula | None) -> list[str]:
    if formula is None:
        return []
    if formula[0] == "atom":
        return [formula[1]]
    if formula[0] == "not":
        return formula_atoms(formula[1])
    return unique(formula_atoms(formula[1]) + formula_atoms(formula[2]))


def formula_text(formula: Formula | None) -> str:
    if formula is None:
        return "UNFORMALIZED"
    if formula[0] == "atom":
        return f"ATOM({formula[1]})"
    if formula[0] == "not":
        return f"NOT({formula_text(formula[1])})"
    return f"{formula[0].upper()}({formula_text(formula[1])}, {formula_text(formula[2])})"


def derives(facts: set[str], formula: Formula | None) -> bool:
    if formula is None:
        return False
    if formula[0] == "atom":
        return formula[1] in facts
    if formula[0] == "and":
        return derives(facts, formula[1]) and derives(facts, formula[2])
    if formula[0] == "or":
        return derives(facts, formula[1]) or derives(facts, formula[2])
    return False


def source_number(source_id: str) -> int:
    return int(source_id.split("-")[1])


def sentence_number(sentence_id: str) -> int:
    return int(sentence_id.split("-")[1])


def source_atom_catalog() -> tuple[list[dict[str, str]], dict[str, set[str]]]:
    rows = read_csv(OUT / "source_summary_formalizations.csv")
    result: dict[str, set[str]] = {}
    for row in rows:
        atoms = set(split_values(row["formal_atoms"]))
        if row["source_id"] in OFFICIAL_SOURCE_OVERRIDES:
            atoms = set(OFFICIAL_SOURCE_OVERRIDES[row["source_id"]])
        atoms.update(SOURCE_ATOM_ADDITIONS.get(row["source_id"], set()))
        result[row["source_id"]] = atoms
        row["formal_atoms"] = ";".join(sorted(atoms))
        row["source_formula"] = "AND(" + ", ".join(sorted(atoms)) + ")" if atoms else "EMPTY"
        row["lean_symbol"] = f"SRC_{source_number(row['source_id']):03d}_sourceTheorem"
        row["projection_adequacy"] = (
            "CURATED_OFFICIAL_SPEC_PROJECTION"
            if row["source_id"] in OFFICIAL_SOURCE_OVERRIDES
            else "CONTROLLED_TERM_PROJECTION_REQUIRES_CLAIM_POLARITY_REVIEW"
        )
        row["truth_boundary"] = "The source summary is a formal premise; publication does not make its external-world claim a Lean theorem."
    return rows, result


def build_candidate_indexes(
    sentences: list[dict[str, str]], sources: list[dict[str, str]]
) -> tuple[dict[str, list[str]], dict[str, list[str]], dict[str, list[str]]]:
    unit: dict[str, list[str]] = defaultdict(list)
    chapter: dict[str, list[str]] = defaultdict(list)
    file_sources: dict[str, list[str]] = defaultdict(list)
    for source in sources:
        for unit_id in split_values(source.get("used_by_units", "")):
            unit[unit_id].append(source["source_id"])
            chapter[unit_id.split(".")[0]].append(source["source_id"])
    for row in sentences:
        for source_id in split_values(row["source_ids"]):
            file_sources[row["file"]].append(source_id)
            chapter[row["chapter"]].append(source_id)
    return (
        {key: unique(values) for key, values in unit.items()},
        {key: unique(values) for key, values in file_sources.items()},
        {key: unique(values) for key, values in chapter.items()},
    )


def rank_sources(
    candidates: list[str], guide: set[str], source_atoms: dict[str, set[str]], limit: int
) -> list[str]:
    ranked = sorted(
        unique(candidates),
        key=lambda source_id: (
            -len(guide.intersection(source_atoms.get(source_id, set()))),
            source_number(source_id),
        ),
    )
    if guide:
        overlapping = [source_id for source_id in ranked if guide.intersection(source_atoms.get(source_id, set()))]
        if overlapping:
            return overlapping[:limit]
    return ranked[:limit]


@dataclass
class ProofRow:
    row: dict[str, str]
    formula: Formula | None
    source_facts: set[str]


def sentence_rows(
    all_sentences: list[dict[str, str]],
    trusted_sources: list[dict[str, str]],
    source_atoms: dict[str, set[str]],
) -> list[ProofRow]:
    required = [row for row in all_sentences if row["evidence_required"] == "yes"]
    unit_sources, file_sources, chapter_sources = build_candidate_indexes(required, trusted_sources)
    source_urls = {row["source_id"]: row["url"] for row in trusted_sources}
    output: list[ProofRow] = []
    for row in required:
        formula, operator, decomposition_note = decompose(row["sentence"])
        atoms = set(formula_atoms(formula))
        direct = split_values(row["source_ids"])
        if direct:
            selected = direct
            basis = "existing_direct_paragraph_or_technology_mapping"
            mapping_validation = "EXISTING_MAPPING_REQUIRES_SEMANTIC_REVIEW"
        else:
            pools = [
                (unit_sources.get(row["unit_id"], []), "same_unit_candidate"),
                (file_sources.get(row["file"], []), "same_file_candidate"),
                (chapter_sources.get(row["chapter"], []), "same_chapter_candidate"),
            ]
            selected = []
            basis = "no_candidate_primary_source"
            for pool, pool_basis in pools:
                if pool:
                    selected = rank_sources(pool, atoms, source_atoms, 5)
                    basis = pool_basis
                    if atoms.intersection(set().union(*(source_atoms.get(s, set()) for s in selected))):
                        break
            mapping_validation = "CANDIDATE_REQUIRES_DOMAIN_REVIEW" if selected else "UNRESOLVED"
        facts = set().union(*(source_atoms.get(source_id, set()) for source_id in selected)) if selected else set()
        source_projection_adequacy = (
            "CURATED_OFFICIAL_SPEC_PROJECTION"
            if selected and all(source_id in OFFICIAL_SOURCE_OVERRIDES for source_id in selected)
            else "CONTROLLED_TERM_PROJECTION_REQUIRES_CLAIM_POLARITY_REVIEW"
        )
        derived = derives(facts, formula)
        unsupported = sorted(atoms - facts)
        if formula is None:
            proof_status = "INCONCLUSIVE_UNFORMALIZED_SENTENCE"
            proof_reason = decomposition_note
        elif not selected:
            proof_status = "INCONCLUSIVE_NO_PRIMARY_SOURCE_CANDIDATE"
            proof_reason = "no primary source candidate was found at direct, unit, file, or chapter scope"
        elif operator in {"IMPLIES", "NOT"}:
            proof_status = "INCONCLUSIVE_RELATION_NOT_SUPPORTED_BY_POSITIVE_SOURCE_FACTS"
            proof_reason = "implication/negation requires a relation-preserving source formalization"
        elif derived:
            proof_status = "PROVED_SOURCE_SUMMARY_ENTAILS_GUIDE_FORMULA"
            proof_reason = "Lean checks the positive propositional derivation under source-summary premises"
        else:
            proof_status = "INCONCLUSIVE_UNSUPPORTED_ATOMS"
            proof_reason = "guide formula contains atoms absent from the selected source summaries"
        result = {
            "sentence_id": row["sentence_id"],
            "unit_id": row["unit_id"],
            "file": row["file"],
            "line_start": row["line_start"],
            "sentence": row["sentence"],
            "claim_type": row["claim_type"],
            "logical_operator": operator,
            "guide_formula": formula_text(formula),
            "guide_atoms": ";".join(sorted(atoms)),
            "candidate_source_ids": ";".join(selected),
            "candidate_source_urls": ";".join(source_urls[source_id] for source_id in selected),
            "source_mapping_basis": basis,
            "source_mapping_validation": mapping_validation,
            "source_projection_adequacy": source_projection_adequacy,
            "source_theorem_symbols": ";".join(f"SRC_{source_number(source_id):03d}_sourceTheorem" for source_id in selected),
            "source_formula_atoms": ";".join(sorted(facts)),
            "unsupported_atoms": ";".join(unsupported),
            "logical_proof_status": proof_status,
            "logical_proof_assurance": "MODEL_PROVED" if derived else "INCONCLUSIVE",
            "lean_theorem": f"literature_SENT_{sentence_number(row['sentence_id']):04d}" if derived else "",
            "natural_language_adequacy": "INCONCLUSIVE_REQUIRES_BILINGUAL_DOMAIN_REVIEW",
            "end_to_end_assurance": "INCONCLUSIVE",
            "proof_reason": proof_reason,
            "validation_boundary": "Conditional proof only: source-summary formula truth and NL-to-formula adequacy are separate obligations.",
        }
        output.append(ProofRow(result, formula, facts))
    return output


def metric(metric_id: str, name: str, numerator: int, denominator: int, interpretation: str) -> dict[str, object]:
    return {
        "metric_id": metric_id,
        "metric": name,
        "numerator": numerator,
        "denominator": denominator,
        "coverage_percent": round(numerator * 100 / denominator, 2) if denominator else 0.0,
        "interpretation": interpretation,
    }


def summary_rows(rows: list[ProofRow], source_rows: list[dict[str, str]]) -> list[dict[str, object]]:
    data = [item.row for item in rows]
    formalized = [row for row in data if row["guide_formula"] != "UNFORMALIZED"]
    sourced = [row for row in data if row["candidate_source_ids"]]
    direct = [row for row in data if row["source_mapping_basis"] == "existing_direct_paragraph_or_technology_mapping"]
    proved = [row for row in data if row["logical_proof_assurance"] == "MODEL_PROVED"]
    relation_unproved = [row for row in data if row["logical_operator"] in {"IMPLIES", "NOT"}]
    inspected_abstracts = [row for row in source_rows if row["evidence_scope"] == "abstract"]
    polarity_reviewed = [
        row for row in source_rows if row["projection_adequacy"] == "CURATED_OFFICIAL_SPEC_PROJECTION"
    ]
    return [
        metric("LIT-COV-001", "一次資料要旨・仕様ページ検査", len(source_rows), len(source_rows), f"{len(source_rows)}件の信頼できる一次資料ページを検査"),
        metric("LIT-COV-002", "公式Abstractを直接検査", len(inspected_abstracts), len(source_rows), "Abstractが明示された一次資料"),
        metric("LIT-COV-003", "センテンス論理式分解", len(formalized), len(rows), "Atom/AND/OR/IMPLIES/NOTへ分解できた根拠必須文"),
        metric("LIT-COV-004", "一次資料候補割当", len(sourced), len(rows), "直接・節・ファイル・章スコープの候補を持つ文"),
        metric("LIT-COV-005", "既存直接マッピング", len(direct), len(rows), "既存の直接・段落・具体技術マッピング"),
        metric("LIT-COV-006", "文献要旨からの条件付き論理証明", len(proved), len(rows), "source-summary factsからguide formulaをLeanで導出"),
        metric("LIT-COV-007", "関係構造未証明", len(relation_unproved), len(rows), "含意・否定の関係を要旨atomだけでは保存できない文"),
        metric("LIT-COV-008", "自然言語込みEnd-to-End証明", 0, len(rows), "バイリンガル意味写像の独立レビュー未完了のため0"),
        metric("LIT-COV-009", "一次資料命題の主張極性レビュー", len(polarity_reviewed), len(source_rows), f"公式仕様{len(polarity_reviewed)}件は手動curation済み、論文等{len(source_rows) - len(polarity_reviewed)}件は主張・比較対象の区別を要レビュー"),
    ]


def lean_list(values: Iterable[int]) -> str:
    return "[" + ", ".join(str(value) for value in values) + "]"


def lean_formula(formula: Formula | None, atom_ids: dict[str, int]) -> str:
    if formula is None:
        return ".atom 0"
    if formula[0] == "atom":
        return f".atom {atom_ids[formula[1]]}"
    if formula[0] == "not":
        return f".neg ({lean_formula(formula[1], atom_ids)})"
    constructor = {"and": "and", "or": "or", "imp": "imp"}[formula[0]]
    return f".{constructor} ({lean_formula(formula[1], atom_ids)}) ({lean_formula(formula[2], atom_ids)})"


def lean_membership(identifier: int, fact_ids: list[int]) -> str:
    """Construct a kernel-reducible List.Mem proof without decision tactics."""
    try:
        index = fact_ids.index(identifier)
    except ValueError as error:
        raise ValueError(f"cannot construct membership for missing atom id: {identifier}") from error
    remaining = fact_ids[index + 1 :]
    proof = f"List.Mem.head {lean_list(remaining)}"
    for preceding in reversed(fact_ids[:index]):
        proof = f"List.Mem.tail {preceding} ({proof})"
    return proof


def lean_derivation(
    formula: Formula,
    facts: set[str],
    atom_ids: dict[str, int],
    fact_ids: list[int],
) -> str:
    if formula[0] == "atom":
        if formula[1] not in facts:
            raise ValueError(f"cannot derive missing atom: {formula[1]}")
        return f".atom ({lean_membership(atom_ids[formula[1]], fact_ids)})"
    if formula[0] == "and":
        return (
            f".and ({lean_derivation(formula[1], facts, atom_ids, fact_ids)}) "
            f"({lean_derivation(formula[2], facts, atom_ids, fact_ids)})"
        )
    if formula[0] == "or":
        if derives(facts, formula[1]):
            return f".orLeft ({lean_derivation(formula[1], facts, atom_ids, fact_ids)})"
        if derives(facts, formula[2]):
            return f".orRight ({lean_derivation(formula[2], facts, atom_ids, fact_ids)})"
    raise ValueError(f"unsupported derivation formula: {formula_text(formula)}")


def generate_lean(source_rows: list[dict[str, str]], proof_rows: list[ProofRow]) -> int:
    atoms = sorted(
        set().union(
            *(set(split_values(row["formal_atoms"])) for row in source_rows),
            *(set(formula_atoms(item.formula)) for item in proof_rows),
        )
    )
    atom_ids = {atom: index for index, atom in enumerate(atoms, 1)}
    source_entries: list[str] = []
    source_defs: list[str] = []
    for row in source_rows:
        atom_values = [atom_ids[atom] for atom in split_values(row["formal_atoms"])]
        number = source_number(row["source_id"])
        source_defs.append(f"def SRC_{number:03d}_sourceTheorem : List Nat := {lean_list(atom_values)}")
        source_entries.append(
            "  { id := %d, inspected := true, facts := SRC_%03d_sourceTheorem }" % (number, number)
        )
    sentence_entries: list[str] = []
    derived_ids: list[int] = []
    for item in proof_rows:
        row = item.row
        number = sentence_number(row["sentence_id"])
        source_facts = sorted(atom_ids[atom] for atom in item.source_facts)
        derived = row["logical_proof_assurance"] == "MODEL_PROVED"
        if derived:
            derived_ids.append(number)
        sentence_entries.append(
            "  { id := %d, formalized := %s, sourceIds := %s, sourceFacts := %s, guideFormula := %s, reportedDerived := %s, endToEnd := false }"
            % (
                number,
                "true" if item.formula is not None else "false",
                lean_list(source_number(source_id) for source_id in split_values(row["candidate_source_ids"])),
                lean_list(source_facts),
                lean_formula(item.formula, atom_ids),
                "true" if derived else "false",
            )
        )
    generated = f"""-- Generated by tools/formal_review/generate_literature_entailment.py.
-- Source summaries are conditional premises, not axioms asserting external truth.

import RagEvidence.LiteratureLogic

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureGenerated

open LiteratureLogic

structure SourceTheorem where
  id : Nat
  inspected : Bool
  facts : List Nat
  deriving Repr, DecidableEq

structure SentenceProofRow where
  id : Nat
  formalized : Bool
  sourceIds : List Nat
  sourceFacts : List Nat
  guideFormula : Formula
  reportedDerived : Bool
  endToEnd : Bool
  deriving Repr, DecidableEq

{chr(10).join(source_defs)}

def sourceTheorems : List SourceTheorem := [
{',\n'.join(source_entries)}
]

def sentenceProofRows : List SentenceProofRow := [
{',\n'.join(sentence_entries)}
]

def reportedDerivedIds : List Nat := {lean_list(derived_ids)}
def reportedRequiredCount : Nat := {len(proof_rows)}
def reportedSourceCount : Nat := {len(source_rows)}
def reportedAtomCount : Nat := {len(atom_ids)}

end RagEvidence.LiteratureGenerated
"""
    GENERATED_LEAN.write_text(generated, encoding="utf-8")

    per_sentence: list[str] = []
    axiom_prints: list[str] = []
    for item in proof_rows:
        if item.row["logical_proof_assurance"] != "MODEL_PROVED":
            continue
        number = sentence_number(item.row["sentence_id"])
        source_facts = sorted(atom_ids[atom] for atom in item.source_facts)
        theorem_name = f"literature_SENT_{number:04d}"
        per_sentence.append(
            f"""theorem {theorem_name} :
    ∀ valuation : Nat → Prop,
      allFacts valuation {lean_list(source_facts)} →
      Formula.Holds valuation ({lean_formula(item.formula, atom_ids)}) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := {lean_derivation(item.formula, item.source_facts, atom_ids, source_facts)})
    (valuation := valuation)
    hFacts
"""
        )
        axiom_prints.append(f"#print axioms RagEvidence.LiteratureProofs.{theorem_name}")

    proofs = f"""import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = {len(derived_ids)} := by
  decide

theorem every_required_sentence_assessed : sentenceProofRows.length = reportedRequiredCount := by
  decide

theorem every_primary_source_summarized : sourceTheorems.length = reportedSourceCount := by
  decide

theorem conditional_proofs_are_nonvacuous :
    sentenceProofRows.all (fun row =>
      if row.reportedDerived then
        row.formalized && decide (row.sourceIds != []) && decide (row.sourceFacts != [])
      else true) = true := by
  decide

theorem no_end_to_end_upgrade_without_adequacy_review :
    sentenceProofRows.all (fun row => !row.endToEnd) = true := by
  decide

theorem source_theorem_catalog_is_inhabited : reportedSourceCount > 0 := by
  decide

theorem semantic_atom_catalog_is_inhabited : reportedAtomCount > 0 := by
  decide

{chr(10).join(per_sentence)}

end RagEvidence.LiteratureProofs

#print axioms RagEvidence.LiteratureProofs.reported_literature_entailments_count_exact
#print axioms RagEvidence.LiteratureProofs.every_required_sentence_assessed
#print axioms RagEvidence.LiteratureProofs.every_primary_source_summarized
#print axioms RagEvidence.LiteratureProofs.conditional_proofs_are_nonvacuous
#print axioms RagEvidence.LiteratureProofs.no_end_to_end_upgrade_without_adequacy_review
#print axioms RagEvidence.LiteratureProofs.source_theorem_catalog_is_inhabited
#print axioms RagEvidence.LiteratureProofs.semantic_atom_catalog_is_inhabited
{chr(10).join(axiom_prints)}
"""
    PROOFS_LEAN.write_text(proofs, encoding="utf-8")
    return len(atom_ids)


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    sentences = read_csv(OUT / "sentence_evidence.csv")
    trusted = read_csv(OUT / "trusted_primary_sources.csv")
    source_rows, source_atoms = source_atom_catalog()
    proof_rows = sentence_rows(sentences, trusted, source_atoms)
    summaries = summary_rows(proof_rows, source_rows)

    write_csv(OUT / "literature_source_theorems.csv", source_rows, list(source_rows[0]))
    write_csv(OUT / "sentence_logical_proofs.csv", [item.row for item in proof_rows], list(proof_rows[0].row))
    write_csv(OUT / "logical_proof_summary.csv", summaries, list(summaries[0]))
    atom_count = generate_lean(source_rows, proof_rows)

    generated = [
        OUT / "literature_source_theorems.csv",
        OUT / "sentence_logical_proofs.csv",
        OUT / "logical_proof_summary.csv",
        GENERATED_LEAN,
        PROOFS_LEAN,
    ]
    metrics = {row["metric_id"]: row for row in summaries}
    manifest = {
        "method_version": 1,
        "authoritative_commit": "bfd1a104189827dff1d2febc13a0cce48120c6de",
        "primary_sources": len(source_rows),
        "required_sentences": len(proof_rows),
        "formalized_sentences": metrics["LIT-COV-003"]["numerator"],
        "sourced_sentences": metrics["LIT-COV-004"]["numerator"],
        "conditional_logical_proofs": metrics["LIT-COV-006"]["numerator"],
        "end_to_end_proofs": metrics["LIT-COV-008"]["numerator"],
        "source_projections_claim_polarity_reviewed": metrics["LIT-COV-009"]["numerator"],
        "atom_count": atom_count,
        "assurance_boundary": {
            "proved": "For reported rows, Lean proves source-summary facts entail the decomposed positive guide formula under any valuation.",
            "not_proved": "External truth of paper claims and semantic adequacy of bilingual natural-language formalization.",
            "anti_circularity": "Source summaries are explicit theorem premises, not custom Lean axioms and not copied from guide sentences.",
        },
        "sha256": {path.relative_to(ROOT).as_posix(): sha256(path) for path in generated},
    }
    MANIFEST.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(manifest, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
