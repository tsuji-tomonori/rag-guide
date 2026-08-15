#!/usr/bin/env python3
"""Record third-party adjudication of conflicting candidate corrections."""

from __future__ import annotations

import csv
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "formal" / "review-data"
PRIMARY = DATA / "wave4_primary_candidate_corrections.csv"
INDEPENDENT = DATA / "wave4_independent_candidate_corrections.csv"
OUTPUT = DATA / "wave4_candidate_correction_reconciliation.csv"

SELECTIONS = {
    "SENT-0083": "PRIMARY",
    "SENT-0282": "INDEPENDENT",
    "SENT-1088": "INDEPENDENT",
    "SENT-1164": "INDEPENDENT",
    "SENT-1735": "INDEPENDENT",
    "SENT-1775": "PRIMARY",
    "SENT-2615": "PRIMARY",
    "SENT-2623": "INDEPENDENT",
    "SENT-2689": "INDEPENDENT",
    "SENT-2760": "PRIMARY",
    "SENT-2876": "INDEPENDENT",
    "SENT-2895": "PRIMARY",
    "SENT-2916": "PRIMARY",
    "SENT-2981": "PRIMARY",
    "SENT-2995": "PRIMARY",
    "SENT-3002": "INDEPENDENT",
    "SENT-3079": "INDEPENDENT",
    "SENT-3994": "PRIMARY",
    "SENT-4106": "PRIMARY",
    "SENT-4172": "PRIMARY",
    "SENT-4203": "INDEPENDENT",
    "SENT-4224": "INDEPENDENT",
    "SENT-4232": "PRIMARY",
    "SENT-4234": "PRIMARY",
    "SENT-4237": "PRIMARY",
    "SENT-4238": "PRIMARY",
    "SENT-4240": "PRIMARY",
    "SENT-4243": "CUSTOM",
}

CUSTOM_VALUES = {
    "SENT-4243": "本章では、REALMの事前学習時検索とRETROのchunk-level検索を検索結合位置の異なる候補として扱い、corpus更新、学習費用、推論費用を各研究の条件を分けて比較します。",
}

FIELDS = [
    "sentence_id", "field", "primary_value", "independent_value",
    "final_value", "decision_basis", "adjudicator", "adjudication_date",
]


def read(path: Path) -> dict[tuple[str, str], dict[str, str]]:
    with path.open(encoding="utf-8-sig", newline="") as handle:
        rows = list(csv.DictReader(handle))
    return {(row["sentence_id"], row["field"]): row for row in rows}


def main() -> int:
    primary = read(PRIMARY)
    independent = read(INDEPENDENT)
    conflicts = {
        key for key in set(primary) & set(independent)
        if primary[key]["replacement_value"] != independent[key]["replacement_value"]
    }
    if conflicts != {(sentence_id, "revised_sentence") for sentence_id in SELECTIONS}:
        raise SystemExit("correction conflict set drift")

    output: list[dict[str, str]] = []
    for sentence_id, field in sorted(conflicts):
        primary_value = primary[(sentence_id, field)]["replacement_value"]
        independent_value = independent[(sentence_id, field)]["replacement_value"]
        selection = SELECTIONS[sentence_id]
        if selection == "PRIMARY":
            final = primary_value
            basis = "複数sourceの役割分離、原文の具体情報、またはローカル規範の適用範囲をより完全に保持する一次案を採用。"
        elif selection == "INDEPENDENT":
            final = independent_value
            basis = "観測可能な条件・閾値・安全境界をより明確にし、過剰な外部帰属を避ける独立案を採用。"
        else:
            final = CUSTOM_VALUES[sentence_id]
            basis = "両案を統合し、方式ごとの検索結合位置と、比較する運用軸を一文で明示。"
        output.append({
            "sentence_id": sentence_id,
            "field": field,
            "primary_value": primary_value,
            "independent_value": independent_value,
            "final_value": final,
            "decision_basis": basis,
            "adjudicator": "codex-wave4-adjudicator",
            "adjudication_date": "2026-08-15",
        })

    with OUTPUT.open("w", encoding="utf-8-sig", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=FIELDS, lineterminator="\n")
        writer.writeheader()
        writer.writerows(output)
    print(f"candidate correction conflicts reconciled: {len(output)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
