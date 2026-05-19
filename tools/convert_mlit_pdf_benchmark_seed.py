#!/usr/bin/env python3
"""Convert the MLIT PDF figure/table RAG benchmark seed workbook.

The repository intentionally avoids an openpyxl dependency for this small
seed. This script reads the XLSX package with the Python standard library and
writes diff-friendly CSV plus benchmark-runner-oriented JSONL.
"""

from __future__ import annotations

import argparse
import csv
import json
import posixpath
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path
from zipfile import ZipFile


NS = {
    "a": "http://schemas.openxmlformats.org/spreadsheetml/2006/main",
    "r": "http://schemas.openxmlformats.org/officeDocument/2006/relationships",
}

BENCHMARK_QA_COLUMNS = [
    "id",
    "domain",
    "source_doc_id",
    "source_doc_title",
    "publisher",
    "source_url",
    "source_page_or_slide",
    "evidence_locator",
    "evidence_type",
    "question_type",
    "reasoning_tags",
    "question_ja",
    "gold_answer_ja",
    "answer_format",
    "evidence_summary_ja",
    "retrieval_target",
    "difficulty",
    "scoring_notes_ja",
    "requires_visual",
    "negative_or_unanswerable",
]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("workbook", type=Path)
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=Path("memorag-bedrock-mvp/benchmark/datasets/mlit-pdf-figure-table-rag-seed-v1"),
    )
    args = parser.parse_args()

    sheets = read_xlsx(args.workbook)
    required_sheets = {"Benchmark_QA", "Source_Docs", "Rubric", "Tag_Definitions", "Summary"}
    missing_sheets = sorted(required_sheets - sheets.keys())
    if missing_sheets:
        raise SystemExit(f"Missing required sheets: {', '.join(missing_sheets)}")

    qa_rows = rows_as_dicts(sheets["Benchmark_QA"])
    validate_qa_rows(qa_rows)

    args.output_dir.mkdir(parents=True, exist_ok=True)
    write_csv(args.output_dir / "qa.csv", BENCHMARK_QA_COLUMNS, qa_rows)
    write_jsonl(args.output_dir / "qa.jsonl", [to_benchmark_row(row) for row in qa_rows])

    for sheet_name, file_name in [
        ("Source_Docs", "source_docs.csv"),
        ("Rubric", "rubric.csv"),
        ("Tag_Definitions", "tag_definitions.csv"),
    ]:
        rows = rows_as_dicts(sheets[sheet_name])
        write_csv(args.output_dir / file_name, list(rows[0].keys()), rows)

    write_summary(args.output_dir / "workbook_summary.json", sheets, qa_rows)
    print(f"Wrote MLIT PDF benchmark seed files to {args.output_dir}")
    return 0


def read_xlsx(path: Path) -> dict[str, list[list[str]]]:
    with ZipFile(path) as archive:
        shared_strings = read_shared_strings(archive)
        workbook = ET.fromstring(archive.read("xl/workbook.xml"))
        rels = ET.fromstring(archive.read("xl/_rels/workbook.xml.rels"))
        rel_map = {rel.attrib["Id"]: rel.attrib["Target"] for rel in rels}
        sheets: dict[str, list[list[str]]] = {}
        sheets_node = workbook.find("a:sheets", NS)
        if sheets_node is None:
            raise ValueError("Workbook does not contain a sheets node")
        for sheet in sheets_node:
            name = sheet.attrib["name"]
            rel_id = sheet.attrib[f"{{{NS['r']}}}id"]
            target = rel_map[rel_id].lstrip("/")
            sheet_path = target if target.startswith("xl/") else posixpath.normpath(posixpath.join("xl", target))
            sheets[name] = read_sheet(archive, sheet_path, shared_strings)
        return sheets


def read_shared_strings(archive: ZipFile) -> list[str]:
    if "xl/sharedStrings.xml" not in archive.namelist():
        return []
    root = ET.fromstring(archive.read("xl/sharedStrings.xml"))
    return ["".join(text.text or "" for text in item.findall(".//a:t", NS)) for item in root.findall("a:si", NS)]


def read_sheet(archive: ZipFile, sheet_path: str, shared_strings: list[str]) -> list[list[str]]:
    root = ET.fromstring(archive.read(sheet_path))
    rows: list[list[str]] = []
    for row in root.findall(".//a:sheetData/a:row", NS):
        values: list[str] = []
        for cell in row.findall("a:c", NS):
            index = column_index(cell.attrib["r"])
            while len(values) <= index:
                values.append("")
            values[index] = cell_value(cell, shared_strings)
        while values and values[-1] == "":
            values.pop()
        rows.append(values)
    return rows


def column_index(reference: str) -> int:
    match = re.match(r"[A-Z]+", reference)
    if not match:
        raise ValueError(f"Invalid cell reference: {reference}")
    index = 0
    for char in match.group(0):
        index = index * 26 + ord(char) - 64
    return index - 1


def cell_value(cell: ET.Element, shared_strings: list[str]) -> str:
    cell_type = cell.attrib.get("t")
    if cell_type == "inlineStr":
        return "".join(text.text or "" for text in cell.findall(".//a:t", NS))
    value = cell.find("a:v", NS)
    if value is None:
        return ""
    raw = value.text or ""
    if cell_type == "s":
        return shared_strings[int(raw)]
    if cell_type == "b":
        return "TRUE" if raw == "1" else "FALSE"
    return raw


def rows_as_dicts(rows: list[list[str]]) -> list[dict[str, str]]:
    if not rows:
        return []
    headers = rows[0]
    output = []
    for raw in rows[1:]:
        if not any(raw):
            continue
        padded = raw + [""] * (len(headers) - len(raw))
        output.append({header: padded[index] for index, header in enumerate(headers)})
    return output


def validate_qa_rows(rows: list[dict[str, str]]) -> None:
    if len(rows) != 36:
        raise SystemExit(f"Expected 36 QA rows, got {len(rows)}")
    seen: set[str] = set()
    missing_columns = sorted(set(BENCHMARK_QA_COLUMNS) - set(rows[0].keys()))
    if missing_columns:
        raise SystemExit(f"Missing Benchmark_QA columns: {', '.join(missing_columns)}")
    for index, row in enumerate(rows, start=2):
        row_id = row["id"].strip()
        if not row_id:
            raise SystemExit(f"Missing id at Benchmark_QA row {index}")
        if row_id in seen:
            raise SystemExit(f"Duplicate id: {row_id}")
        seen.add(row_id)
        for column in ["source_doc_id", "question_ja", "gold_answer_ja", "source_url"]:
            if not row[column].strip():
                raise SystemExit(f"Missing {column} for {row_id}")
        for column in ["requires_visual", "negative_or_unanswerable"]:
            if row[column] not in {"Yes", "No"}:
                raise SystemExit(f"Invalid {column} for {row_id}: {row[column]}")


def to_benchmark_row(row: dict[str, str]) -> dict[str, object]:
    answerable = row["negative_or_unanswerable"] != "Yes"
    converted: dict[str, object] = {
        "id": row["id"],
        "question": row["question_ja"],
        "answerable": answerable,
        "expectedResponseType": "answer" if answerable else "refusal",
        "referenceAnswer": row["gold_answer_ja"],
        "expectedAnswer": row["gold_answer_ja"],
        "expectedDocumentIds": [row["source_doc_id"]],
        "expectedFiles": [f"{row['source_doc_id']}.pdf"],
        "expectedPages": [row["source_page_or_slide"]],
        "complexity": complexity_for(row),
        "topK": 20,
        "memoryTopK": 6,
        "minScore": 0.15,
        "useMemory": False,
        "metadata": {
            "sourceDataset": "mlit-pdf-figure-table-rag-seed-v1",
            "domain": row["domain"],
            "sourceDocId": row["source_doc_id"],
            "sourceDocTitle": row["source_doc_title"],
            "publisher": row["publisher"],
            "sourceUrl": row["source_url"],
            "sourcePageOrSlide": row["source_page_or_slide"],
            "evidenceLocator": row["evidence_locator"],
            "evidenceType": row["evidence_type"],
            "questionType": row["question_type"],
            "reasoningTags": split_tags(row["reasoning_tags"]),
            "answerFormat": row["answer_format"],
            "evidenceSummaryJa": row["evidence_summary_ja"],
            "retrievalTarget": row["retrieval_target"],
            "difficulty": row["difficulty"],
            "scoringNotesJa": row["scoring_notes_ja"],
            "requiresVisual": row["requires_visual"] == "Yes",
            "negativeOrUnanswerable": row["negative_or_unanswerable"] == "Yes",
        },
    }
    if answerable:
        converted["expectedContains"] = expected_contains(row["gold_answer_ja"])
        converted["expectedFactSlots"] = [
            {
                "id": "gold_answer_core",
                "description": row["scoring_notes_ja"],
                "mustContain": expected_contains(row["gold_answer_ja"]),
                "expectedDocumentIds": [row["source_doc_id"]],
            }
        ]
    else:
        converted["unanswerableType"] = "missing_fact"
    return converted


def complexity_for(row: dict[str, str]) -> str:
    if row["negative_or_unanswerable"] == "Yes":
        return "out_of_scope"
    question_type = row["question_type"]
    if question_type == "scenario_judgement":
        return "procedure"
    if row["difficulty"] == "hard":
        return "multi_hop"
    if "table" in row["evidence_type"] or "比較" in row["reasoning_tags"]:
        return "comparison"
    return "simple"


def split_tags(value: str) -> list[str]:
    return [item.strip() for item in re.split(r"[,、]", value) if item.strip()]


def expected_contains(answer: str) -> list[str]:
    normalized = answer.replace("。", "、")
    parts = [part.strip(" 、") for part in re.split(r"[、，]", normalized) if part.strip(" 、")]
    return parts[:5] if parts else [answer]


def write_csv(path: Path, fieldnames: list[str], rows: list[dict[str, str]]) -> None:
    with path.open("w", newline="", encoding="utf-8") as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames, extrasaction="ignore", lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)


def write_jsonl(path: Path, rows: list[dict[str, object]]) -> None:
    with path.open("w", encoding="utf-8") as file:
        for row in rows:
            file.write(json.dumps(row, ensure_ascii=False, sort_keys=True) + "\n")


def write_summary(path: Path, sheets: dict[str, list[list[str]]], qa_rows: list[dict[str, str]]) -> None:
    summary = {
        "source": "mlit_pdf_figure_table_rag_benchmark_seed.xlsx",
        "sheets": {
            name: {
                "rows": len(rows),
                "columns": max((len(row) for row in rows), default=0),
            }
            for name, rows in sheets.items()
        },
        "qaCount": len(qa_rows),
        "requiresVisualCount": sum(1 for row in qa_rows if row["requires_visual"] == "Yes"),
        "negativeOrUnanswerableCount": sum(1 for row in qa_rows if row["negative_or_unanswerable"] == "Yes"),
    }
    path.write_text(json.dumps(summary, ensure_ascii=False, indent=2, sort_keys=True) + "\n", encoding="utf-8")


if __name__ == "__main__":
    sys.exit(main())
