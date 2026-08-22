#!/usr/bin/env python3
"""Validate the Issue #35 review queue without certifying human judgments."""

from __future__ import annotations

import csv
import hashlib
import json
import re
import subprocess
import unicodedata
from collections import Counter
from datetime import date
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "formal" / "review-data"
FINAL_VERDICTS = {
    "APPROPRIATE_SUPPORTED", "APPROPRIATE_NORMATIVE",
    "APPROPRIATE_AFTER_QUALIFICATION", "REWRITE_REQUIRED",
    "REMOVE_OR_REPLACE", "CONTRADICTED", "BLOCKED",
}
SOURCE_ROLES = {
    "AUTHOR_CLAIM", "DEFINITION_OR_SPEC", "EMPIRICAL_RESULT",
    "COMPARATOR_DESCRIPTION", "BACKGROUND_CITATION", "LIMITATION", "HYPOTHESIS",
}
TRUTH_LEVELS = {
    "SOURCE_ASSERTED", "REPRODUCED", "OFFICIAL_SPEC", "RUNTIME_VERIFIED",
    "NOT_APPLICABLE", "UNVERIFIED",
}
ACTIONABLE_VERDICTS = {
    "APPROPRIATE_AFTER_QUALIFICATION", "REWRITE_REQUIRED",
    "REMOVE_OR_REPLACE", "CONTRADICTED",
}
FORBIDDEN_GENERIC_REWRITE_FRAGMENTS = (
    "が評価したデータセット、モデル、比較器、指標の範囲では",
    "本ガイドで扱う対象構成では、",
    "本ガイドの対象構成では、",
    "利用時点の対象リージョンで各サービス間の対応を確認したうえで、",
)
FORBIDDEN_GENERIC_NORMATIVE_CRITERIA = {
    "文中の比較について対象dataset、gold evidence、baseline、candidate数、指標、合否閾値を固定し、平均値だけでなく失敗sliceと回帰を記録する。",
    "文中の認可・隔離・情報保護を検索または実行の前に強制し、許可外の文書、chunk、引数が候補、context、回答、traceへ入らないことを負試験で確認する。",
    "文中の工程順と分岐ごとに入力、出力、責任主体、成功条件、失敗時の遷移をmanifestへ定義し、統合試験で追跡可能性を確認する。",
    "文中のサービス、API、field、operator、region、versionを設定manifestへ固定し、利用時点の公式仕様で対応状況と制限を確認した構成だけを統合試験へ進める。",
    "本文、図表、評価台帳で文中の用語と工程名を同じ意味で用い、入力、出力、単位、責任範囲をこの定義に一致させる。",
    "文中の識別子、設定、成果物を同じ版IDまたはtrace IDで結び、任意の回答から元文書、chunk、検索順位、設定版まで再現できることを確認する。",
}
FORBIDDEN_GENERIC_NORMATIVE_EXCEPTIONS = {
    "文中の数値は初期候補であり、dataset、model、index、負荷、言語、業務リスクが変わる場合は再測定して閾値を更新する。",
    "法令、契約、組織方針がより厳しい統制を求める場合はそちらを優先する。可用性対策を理由に認可や機密保護を緩和しない。",
    "より単純な工程が同じ品質、安全性、遅延、費用、追跡可能性の受入条件を満たす場合は、その代替構成を採用できる。",
    "対象region/versionの公式仕様が非対応または変更済みの場合は適用せず、同じ要件を満たす対応機能か独自実装へ切り替えて再試験する。",
    "公式標準や製品仕様の用語を別の意味で用いる場合は、名称、単位、変換規則を分けて併記し、既存記録を移行する。",
    "保存期間や個人情報の制約がある場合は値を削除するのではなく、承認済みの仮名化、分離保管、期間制限で追跡可能性を維持する。",
}


def action_required(row: dict[str, str]) -> bool:
    # NORMATIVE changes the evidence classification even when prose is kept.
    return row["appropriateness_verdict"] in ACTIONABLE_VERDICTS or (
        row["appropriateness_verdict"] == "APPROPRIATE_NORMATIVE"
    )
BASELINE_DOCS_COMMIT = "52bebecfb2a435d0e7ff2efea557c5799674ded6"
CONFIG = OUT / "appropriateness_review_config.json"
APPLICATIONS = "appropriateness_review_application_map.csv"
RELATIONS = "appropriateness_relation_evidence.csv"
SHEET_EXPORT = OUT / "appropriateness_sheet_export.csv"
SHEET_EXPORT_MANIFEST = OUT / "appropriateness_sheet_export_manifest.json"
SHEET_READBACK = OUT / "appropriateness_sheet_readback.json"
POST_REVIEW = OUT / "appropriateness_post_review_recalculation.json"
CLASSIFICATION_OVERRIDES = "appropriateness_classification_overrides.csv"
MARKDOWN_LINK = re.compile(r"\[([^\]]+)\]\([^)]+\)")


def rows(name: str) -> list[dict[str, str]]:
    with (OUT / name).open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def require(condition: bool, message: str) -> None:
    if not condition:
        raise SystemExit(message)


def canonical_reviewer(value: str) -> str:
    return unicodedata.normalize("NFKC", value).strip().casefold()


def require_iso_date(value: str, message: str) -> date:
    try:
        return date.fromisoformat(value)
    except (TypeError, ValueError) as error:
        raise SystemExit(message) from error


def split_values(value: str) -> list[str]:
    return [item.strip() for item in value.split(";") if item.strip()]


def text_sha256(value: str) -> str:
    return hashlib.sha256(value.encode("utf-8")).hexdigest()


def normalized_plain_text(value: str) -> str:
    text = MARKDOWN_LINK.sub(lambda match: match.group(1), value)
    text = re.sub(r"!\[([^\]]*)\]\([^)]+\)", r"\1", text)
    text = re.sub(r"<[^>]+>", " ", text)
    text = re.sub(r"[`*_~]", "", text)
    text = re.sub(r"^\s*(?:[-+*]|\d+[.)])\s+", "", text)
    return re.sub(r"\s+", " ", text).strip()


def normalized_template_shell(value: str, claims: tuple[str, ...] = ()) -> str:
    """Canonicalize prose while retaining genuinely distinguishing short labels."""

    def normalize_fragment(fragment: str) -> str:
        normalized = unicodedata.normalize("NFKC", fragment).casefold()
        normalized = re.sub(r"\s+", " ", normalized).strip()
        return normalized

    def claim_projections(claim: str) -> set[str]:
        base = normalize_fragment(claim)
        if not base:
            return set()
        projections = {base}
        plain = re.sub(r"\[([^\]]+)\]\([^)]+\)", r"\1", base)
        plain = re.sub(r"[`*_~]", "", plain)
        plain = normalize_fragment(plain)
        if plain:
            projections.add(plain)
        for projection in tuple(projections):
            slash_projection = re.sub(
                r"[、,，。:：;；]+", "/", projection
            )
            slash_projection = re.sub(r"/+", "/", slash_projection).strip("/ ")
            if slash_projection:
                projections.add(slash_projection)
        return projections

    def mask_quoted_payload(match: re.Match[str]) -> str:
        payload = normalize_fragment(match.group(1))
        # A short identifier or term can legitimately distinguish two otherwise
        # identical rules.  Longer quoted prose is sentence-specific payload and
        # must not be allowed to manufacture uniqueness.
        if (
            1 <= len(payload) <= 24
            and not re.search(r"[\s、。！？!?;；,，]", payload)
            and "<payload>" not in payload
        ):
            return match.group(0)
        return "<QUOTE>"

    result = normalize_fragment(value)
    payloads: set[str] = set()
    for claim in claims:
        payloads.update(claim_projections(claim))
    for payload in sorted(payloads, key=len, reverse=True):
        result = result.replace(payload, "<payload>")
    # Generated review prose must not become "unique" merely by paraphrasing
    # the row payload inside an otherwise fixed scaffold.  Normalize only the
    # slots bounded by these complete scaffold markers; ordinary prose and
    # short labels remain untouched.
    result = re.sub(
        r"(判断対象は、).*?(規則です。外部資料から一般的な効果を導くのではなく、"
        r"次の検査を受入条件とします。)",
        r"\1<payload>\2",
        result,
    )
    result = re.sub(
        r"(判断対象は、).*?(ことに限定した修正です。現文の)",
        r"\1<payload>\2",
        result,
    )
    result = re.sub(
        r"(現文の).*?(と関係).*?(には、)",
        r"\1<payload>\2<payload>\3",
        result,
    )
    result = re.sub(
        r"(検証対象として ).*?( を区別し、この文が断定する ).*?"
        r"( と関係 ).*?( について、)",
        r"\1<payload>\2<payload>\3<payload>\4",
        result,
    )
    result = re.sub(r"https?://[^\s<>]+", "<url>", result)
    # Japanese letters are ``\w`` in Python, so a word boundary does not exist
    # between an ID and a following particle such as 「は」.  Match the complete
    # ID token directly to prevent row IDs from manufacturing template uniqueness.
    result = re.sub(r"sent-\d+", "<sentence_id>", result)
    result = re.sub(r"src-\d+", "<source_id>", result)
    result = re.sub(r"\[([^\]]+)\]\([^)]+\)", r"\1", result)
    result = re.sub(r"[`*_~]", "", result)
    previous = None
    while result != previous:
        previous = result
        result = result.replace("「<payload>」", "<payload>")
        result = result.replace("『<payload>』", "<payload>")
        result = re.sub(r"「([^「」]*)」", mask_quoted_payload, result)
        result = re.sub(r"『([^『』]*)』", mask_quoted_payload, result)
    result = re.sub(r"【([^】]*)】", mask_quoted_payload, result)
    result = re.sub(r"[、,，]+", "、", result)
    result = re.sub(r"[。]+", "。", result)
    return re.sub(r"\s+", " ", result).strip()


def balanced_without_same_delimiter_nesting(value: str, opening: str, closing: str) -> bool:
    open_span = False
    for character in value:
        if character == opening:
            if open_span:
                return False
            open_span = True
        elif character == closing:
            if not open_span:
                return False
            open_span = False
    return not open_span


def file_sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def json_object(path: Path) -> dict[str, object]:
    require(path.exists(), f"required Wave 4 manifest is absent: {path.relative_to(ROOT)}")
    value = json.loads(path.read_text(encoding="utf-8"))
    require(isinstance(value, dict), f"expected JSON object: {path.relative_to(ROOT)}")
    return value


def git_diff_status(*args: str) -> int:
    return subprocess.run(
        ["git", "diff", "--quiet", *args, "--", "docs"],
        cwd=ROOT,
        check=False,
    ).returncode


def main() -> int:
    queue = rows("appropriateness_review_queue.csv")
    decisions = rows("appropriateness_review_decisions.csv")
    gold = rows("appropriateness_gold_fixture.csv")
    applications = rows(APPLICATIONS)
    relations = rows(RELATIONS)
    summary = {row["metric_id"]: row for row in rows("appropriateness_review_summary.csv")}
    manifest = json.loads((OUT / "appropriateness_review_manifest.json").read_text(encoding="utf-8"))
    config = json_object(CONFIG)
    target_commit = str(config.get("target_docs_commit", ""))
    require(config.get("baseline_docs_commit") == BASELINE_DOCS_COMMIT, "baseline docs commit drift")
    require(config.get("baseline_review_count") == 678, "baseline review count drift")
    require(bool(target_commit), "target docs commit is absent")

    require(len(queue) == 678, "Issue #35 queue must contain exactly 678 unresolved sentences")
    require(len(decisions) == 678, "every queued sentence must have one decision row")
    queue_ids = [row["sentence_id"] for row in queue]
    decision_ids = [row["sentence_id"] for row in decisions]
    require(queue_ids == decision_ids, "decision ledger must preserve exact queue order and identity")
    require(len(set(queue_ids)) == len(queue_ids), "duplicate sentence_id in review queue")
    require(len(gold) >= 20 and len(gold) <= 30, "gold fixture must contain 20-30 sentences")
    require(len({row["source_state"] for row in gold}) == 3, "gold fixture must cover all unresolved source states")

    calibrated = 0
    for row in gold:
        status = row.get("calibration_status", "")
        require(status in {"PENDING_TWO_REVIEWER_CALIBRATION", "CALIBRATED"}, f"invalid gold calibration status: {row['sentence_id']}")
        if status != "CALIBRATED":
            continue
        require(row.get("agreed_verdict") in FINAL_VERDICTS - {"BLOCKED"}, f"calibrated gold row without final verdict: {row['sentence_id']}")
        primary = canonical_reviewer(row.get("primary_reviewer", ""))
        independent_reviewer = canonical_reviewer(row.get("independent_reviewer", ""))
        require(primary and independent_reviewer, f"calibrated gold row without two reviewers: {row['sentence_id']}")
        require(primary != independent_reviewer, f"self-calibrated gold row: {row['sentence_id']}")
        primary_date = require_iso_date(row.get("primary_review_date", ""), f"invalid gold primary review date: {row['sentence_id']}")
        independent_date = require_iso_date(row.get("independent_review_date", ""), f"invalid gold independent review date: {row['sentence_id']}")
        require(independent_date >= primary_date, f"gold independent review predates primary review: {row['sentence_id']}")
        calibrated += 1

    queue_by_id = {row["sentence_id"]: row for row in queue}
    trusted_source_ids = {
        row["source_id"] for row in rows("trusted_primary_sources.csv")
        if row["eligibility"] == "eligible"
    }
    today = date.today()
    for row in decisions:
        sentence_id = row["sentence_id"]
        require(row["appropriateness_verdict"] in FINAL_VERDICTS, f"invalid verdict: {sentence_id}")
        require(row["external_truth_level"] in TRUTH_LEVELS, f"invalid external truth level: {sentence_id}")
        require(row["verdict_reason"], f"verdict without reason: {sentence_id}")
        require(
            not (
                "この記述は " in row["verdict_reason"]
                and " を本ガイドの設計・評価・運用へ適用する規則で" in row["verdict_reason"]
            ),
            f"malformed generated verdict reason remains: {sentence_id}",
        )
        require(row["action"], f"verdict without action: {sentence_id}")
        require(row["docs_commit"] == manifest["authoritative_docs_commit"], f"docs commit drift: {sentence_id}")
        require(row["original_sentence"] == queue_by_id[sentence_id]["sentence"], f"sentence text drift: {sentence_id}")
        if row["appropriateness_verdict"] == "BLOCKED":
            require(row["owner"], f"BLOCKED row without owner: {sentence_id}")
            require(row["due_date"], f"BLOCKED row without due date: {sentence_id}")
            require(row["unblock_condition"], f"BLOCKED row without unblock condition: {sentence_id}")
            date.fromisoformat(row["due_date"])
        else:
            primary = canonical_reviewer(row["primary_reviewer"])
            independent_reviewer = canonical_reviewer(row["independent_reviewer"])
            require(primary, f"final row without primary reviewer: {sentence_id}")
            require(independent_reviewer, f"final row without independent reviewer: {sentence_id}")
            require(primary != independent_reviewer, f"self-approved final row: {sentence_id}")
            primary_date = require_iso_date(row["primary_review_date"], f"invalid primary review date: {sentence_id}")
            independent_date = require_iso_date(row["independent_review_date"], f"invalid independent review date: {sentence_id}")
            require(independent_date >= primary_date, f"independent review predates primary review: {sentence_id}")
            require(row["review_status"] == "FINAL_TWO_REVIEWER_APPROVED", f"final row lacks final two-reviewer status: {sentence_id}")
        if row["appropriateness_verdict"] in {
            "APPROPRIATE_SUPPORTED", "APPROPRIATE_AFTER_QUALIFICATION",
        }:
            require(row["primary_source_ids"], f"source verdict without primary source: {sentence_id}")
            require(all(
                source_id in trusted_source_ids
                for source_id in split_values(row["primary_source_ids"])
            ), f"source verdict references an unknown primary source: {sentence_id}")
            require(row["source_locator"], f"source verdict without source locator: {sentence_id}")
            require(row["source_claim_role"] in SOURCE_ROLES, f"source verdict without reviewed source role: {sentence_id}")
            require(
                row["external_truth_level"] in {
                    "SOURCE_ASSERTED", "REPRODUCED", "OFFICIAL_SPEC", "RUNTIME_VERIFIED",
                },
                f"source verdict without verified truth boundary: {sentence_id}",
            )
            require(not row["unsupported_atoms"], f"source verdict still has unsupported atoms: {sentence_id}")
            require(not row["unsupported_relation"], f"source verdict still has unsupported relation: {sentence_id}")
            require(row["supported_atoms"] and row["supported_atoms"] != "NONE_DIRECTLY_VERIFIED", f"source verdict lacks verified atoms: {sentence_id}")
        if row["appropriateness_verdict"] == "APPROPRIATE_NORMATIVE":
            require(row["normative_criteria"], f"normative row without decision criteria: {sentence_id}")
            require(row["exceptions"], f"normative row without exceptions: {sentence_id}")
            require(row["normative_criteria"] not in FORBIDDEN_GENERIC_NORMATIVE_CRITERIA, f"generic normative criteria remains: {sentence_id}")
            require(row["exceptions"] not in FORBIDDEN_GENERIC_NORMATIVE_EXCEPTIONS, f"generic normative exception remains: {sentence_id}")
            require(row["source_claim_role"] == "DEFINITION_OR_SPEC", f"normative row has non-definition role: {sentence_id}")
            require(row["external_truth_level"] == "NOT_APPLICABLE", f"normative row has external truth claim: {sentence_id}")
            require(not row["primary_source_ids"], f"normative row retains candidate external sources: {sentence_id}")
            require(not row["source_locator"], f"normative row retains external locator: {sentence_id}")
            require(not row["supported_atoms"], f"normative row retains supported atoms: {sentence_id}")
            require(not row["unsupported_atoms"], f"normative row retains unsupported atoms: {sentence_id}")
            require(not row["unsupported_relation"], f"normative row retains unsupported relation: {sentence_id}")
        elif row["appropriateness_verdict"] != "BLOCKED":
            require(row["normative_criteria"] == "NOT_APPLICABLE_NON_NORMATIVE", f"non-normative row has normative criteria: {sentence_id}")
            require(row["exceptions"] == "NOT_APPLICABLE_NON_NORMATIVE", f"non-normative row has normative exceptions: {sentence_id}")
        if row["appropriateness_verdict"] == "APPROPRIATE_AFTER_QUALIFICATION":
            require(row["revised_sentence"], f"qualification verdict without revised sentence: {sentence_id}")
        if row["appropriateness_verdict"] in {"REWRITE_REQUIRED", "CONTRADICTED"}:
            require(row["revised_sentence"], f"rewrite/correction verdict without revised sentence: {sentence_id}")
        if queue_by_id[sentence_id]["source_projection_adequacy"].startswith("CONTROLLED") and row["appropriateness_verdict"] != "BLOCKED":
            require(row["source_claim_role"] in SOURCE_ROLES, f"controlled projection without polarity review: {sentence_id}")
        if row["appropriateness_verdict"] in {"REWRITE_REQUIRED", "REMOVE_OR_REPLACE", "CONTRADICTED", "APPROPRIATE_AFTER_QUALIFICATION"}:
            require(row["action"], f"actionable verdict without action: {sentence_id}")
        if row["appropriateness_verdict"] in {"REWRITE_REQUIRED", "CONTRADICTED"}:
            require(row["revised_sentence"] != row["original_sentence"], f"actionable verdict is a no-op: {sentence_id}")
        if row["revised_sentence"] and row["appropriateness_verdict"] != "REMOVE_OR_REPLACE":
            require(row["revised_sentence"] in row["action"], f"action does not name exact revised sentence: {sentence_id}")
            require(not any(
                fragment in row["revised_sentence"]
                for fragment in FORBIDDEN_GENERIC_REWRITE_FRAGMENTS
            ), f"generic source-scope rewrite remains: {sentence_id}")
            require(not row["revised_sentence"].startswith("利用時点の対象リージョンの公式仕様で"), f"generic official-spec rewrite remains: {sentence_id}")
        if row["appropriateness_verdict"] == "APPROPRIATE_SUPPORTED":
            expected_action = (
                f"{row['scope']} の本文を維持し、"
                "確定した一次資料locator・主張役割・外的真偽境界を台帳へ固定する。"
            )
        elif row["appropriateness_verdict"] == "REMOVE_OR_REPLACE":
            expected_action = (
                f"{row['scope']} のMarkdown表示は維持し、"
                "Wave 4分類overrideで技術的事実の命題集合から除外する。"
            )
        elif row["revised_sentence"]:
            expected_action = (
                f"{row['scope']} の現文を次の文へ置換する: {row['revised_sentence']} "
                "再抽出した文面と分類を照合する。"
            )
        else:
            expected_action = (
                f"{row['scope']} の本文を維持し、"
                "normative_criteriaとexceptionsを設計台帳へ固定する。"
            )
        require(row["action"] == expected_action, f"action is not exact: {sentence_id}")
        if row["lean_theorem"]:
            require(row["lean_assurance"] == "MODEL_PROVED", f"Lean theorem without MODEL_PROVED label: {sentence_id}")
            require(row["axiom_audit"] == "NO_AXIOMS", f"Lean theorem without clean axiom audit: {sentence_id}")
        for field in ("revised_sentence", "normative_criteria", "exceptions", "action"):
            value = row[field]
            for opening, closing in (("「", "」"), ("『", "』")):
                require(
                    balanced_without_same_delimiter_nesting(value, opening, closing),
                    f"unbalanced or same-delimiter nested quote: {sentence_id}: {field}",
                )

    reason_counts = Counter(
        row["verdict_reason"] for row in decisions
        if row["appropriateness_verdict"] != "BLOCKED"
    )
    require(
        not any(count > 1 for count in reason_counts.values()),
        "generic duplicate verdict reasons remain",
    )
    reason_shell_counts = Counter(
        normalized_template_shell(
            row["verdict_reason"],
            (
                row["original_sentence"], row["revised_sentence"],
                row["normative_criteria"], row["exceptions"], row["source_locator"],
            ),
        )
        for row in decisions
        if row["appropriateness_verdict"] != "BLOCKED"
    )
    require(
        not any(count > 1 for count in reason_shell_counts.values()),
        "generic normalized verdict reason shells remain",
    )
    normative_rows = [
        row for row in decisions
        if row["appropriateness_verdict"] == "APPROPRIATE_NORMATIVE"
    ]
    for field in ("normative_criteria", "exceptions"):
        shell_counts = Counter(
            normalized_template_shell(
                row[field], (row["revised_sentence"], row["original_sentence"])
            )
            for row in normative_rows
        )
        require(
            not any(
                count > 1 for count in shell_counts.values()
            ),
            f"generic normalized {field} shells remain",
        )
    revision_shell_counts = Counter(
        normalized_template_shell(row["revised_sentence"], (row["original_sentence"],))
        for row in decisions
        if row["appropriateness_verdict"] in {
            "APPROPRIATE_AFTER_QUALIFICATION", "REWRITE_REQUIRED", "CONTRADICTED",
        }
    )
    require(
        not any(count > 1 for count in revision_shell_counts.values()),
        "generic normalized revised_sentence shells remain",
    )

    application_by_id: dict[str, dict[str, str]] = {}
    for row in applications:
        sentence_id = row.get("sentence_id", "")
        require(sentence_id in queue_by_id, f"application row is outside baseline queue: {sentence_id}")
        require(sentence_id not in application_by_id, f"duplicate application row: {sentence_id}")
        application_by_id[sentence_id] = row
    retired_ids = {
        sentence_id
        for sentence_id, application in application_by_id.items()
        if application["application_status"] == "REMOVED_VERIFIED"
        and not split_values(application["target_sentence_ids"])
    }

    classification_rows = rows(CLASSIFICATION_OVERRIDES)
    classification_by_id: dict[str, dict[str, str]] = {}
    for row in classification_rows:
        sentence_id = row.get("baseline_sentence_id", "")
        require(sentence_id in queue_by_id, f"classification override is outside baseline queue: {sentence_id}")
        require(sentence_id not in classification_by_id, f"duplicate classification override: {sentence_id}")
        classification_by_id[sentence_id] = row
    expected_classification_ids = {
        row["sentence_id"] for row in decisions
        if row["sentence_id"] not in retired_ids
        and (
            row["appropriateness_verdict"] == "APPROPRIATE_NORMATIVE"
        or (
            row["appropriateness_verdict"] == "REMOVE_OR_REPLACE"
            and bool(row["revised_sentence"])
        ))
    }
    require(
        set(classification_by_id) == expected_classification_ids,
        "classification overrides must exactly match final NORMATIVE and retained REMOVE targets",
    )
    decisions_by_id = {row["sentence_id"]: row for row in decisions}
    for sentence_id, override in classification_by_id.items():
        decision = decisions_by_id[sentence_id]
        verdict = decision["appropriateness_verdict"]
        target = decision["revised_sentence"] or decision["original_sentence"]
        expected_claim_type = (
            "normative_design_statement"
            if verdict == "APPROPRIATE_NORMATIVE"
            else "expository_or_structural"
        )
        require(override["file"] == queue_by_id[sentence_id]["file"], f"classification override file drift: {sentence_id}")
        require(override["target_sentence"] == target, f"classification override target drift: {sentence_id}")
        require(override["target_sentence_sha256"] == text_sha256(target), f"classification override hash mismatch: {sentence_id}")
        require(override["source_verdict"] == verdict, f"classification override verdict drift: {sentence_id}")
        require(override["claim_type"] == expected_claim_type, f"classification override claim type drift: {sentence_id}")
        require(override["evidence_required"] == "no", f"classification override is not fail-closed to no: {sentence_id}")
        require(override["review_status"] == "FINAL_TWO_REVIEWER_APPROVED", f"classification override lacks final review: {sentence_id}")

    current_sentences = {row["sentence_id"]: row for row in rows("sentence_evidence.csv")}
    actionable = [row for row in decisions if action_required(row)]
    for decision in actionable:
        sentence_id = decision["sentence_id"]
        require(sentence_id in application_by_id, f"actionable verdict without application map: {sentence_id}")
        application = application_by_id[sentence_id]
        require(application["baseline_docs_commit"] == BASELINE_DOCS_COMMIT, f"application baseline drift: {sentence_id}")
        require(application["target_docs_commit"] == target_commit, f"application target commit drift: {sentence_id}")
        require(application["file"] == queue_by_id[sentence_id]["file"], f"application file drift: {sentence_id}")
        require(application["action_kind"] == decision["appropriateness_verdict"], f"application verdict drift: {sentence_id}")
        require(application["source_text_sha256"] == text_sha256(decision["original_sentence"]), f"application source text hash mismatch: {sentence_id}")
        target_file = (ROOT / application["file"]).resolve()
        require(target_file.is_relative_to((ROOT / "docs").resolve()), f"application target escapes docs/: {sentence_id}")
        require(application["applied_by"], f"application without applier: {sentence_id}")
        require_iso_date(application["applied_date"], f"invalid application date: {sentence_id}")
        target_ids = split_values(application["target_sentence_ids"])
        if target_file.is_file():
            require(application["target_file_sha256"] == file_sha256(target_file), f"application target file hash mismatch: {sentence_id}")
        else:
            require(not target_ids, f"absent application file has target sentence IDs: {sentence_id}")
            require(application["target_file_sha256"] == "", f"absent application file has a hash: {sentence_id}")
        if not target_ids:
            require(application["application_status"] == "REMOVED_VERIFIED", f"removal not verified: {sentence_id}")
            current_file_text = normalized_plain_text("".join(
                row["sentence"] for row in current_sentences.values()
                if row["file"] == application["file"]
            ))
            expected_target = decision["revised_sentence"] or decision["original_sentence"]
            require(
                normalized_plain_text(expected_target) not in current_file_text,
                f"retired target text still exists: {sentence_id}",
            )
            require(
                normalized_plain_text(decision["original_sentence"]) not in current_file_text,
                f"retired original text still exists: {sentence_id}",
            )
        else:
            require(application["application_status"] == "APPLIED_VERIFIED", f"application not verified: {sentence_id}")
            require(target_ids, f"application has no target sentence IDs: {sentence_id}")
            require(len(target_ids) == len(set(target_ids)), f"application repeats target sentence IDs: {sentence_id}")
            require(all(target_id in current_sentences for target_id in target_ids), f"application target sentence is absent: {sentence_id}")
            target_rows = [current_sentences[target_id] for target_id in target_ids]
            require(all(row["file"] == application["file"] for row in target_rows), f"application target moved to unexpected file: {sentence_id}")
            target_numbers = [int(target_id.split("-")[1]) for target_id in target_ids]
            require(
                target_numbers == list(range(target_numbers[0], target_numbers[0] + len(target_numbers))),
                f"application target sentence IDs are not consecutive and ordered: {sentence_id}",
            )
            target_text = "\n".join(row["sentence"] for row in target_rows)
            require(application["target_text_sha256"] == text_sha256(target_text), f"application target text hash mismatch: {sentence_id}")
            expected_target = decision["revised_sentence"] or decision["original_sentence"]
            require(
                normalized_plain_text("".join(row["sentence"] for row in target_rows))
                == normalized_plain_text(expected_target),
                f"application target does not equal final decision text: {sentence_id}",
            )
            if decision["appropriateness_verdict"] in {"APPROPRIATE_NORMATIVE", "REMOVE_OR_REPLACE"}:
                require(all(row["evidence_required"] == "no" for row in target_rows), f"reclassified structural sentence still requires evidence: {sentence_id}")

    relation_by_id: dict[str, dict[str, str]] = {}
    for row in relations:
        sentence_id = row.get("sentence_id", "")
        require(sentence_id in queue_by_id, f"relation row is outside baseline queue: {sentence_id}")
        require(sentence_id not in relation_by_id, f"duplicate relation evidence row: {sentence_id}")
        relation_by_id[sentence_id] = row
    relation_scope = [
        row for row in decisions
        if row["appropriateness_verdict"] != "BLOCKED"
        and row["logical_operator"] in {"NOT", "IMPLIES"}
    ]
    for decision in relation_scope:
        sentence_id = decision["sentence_id"]
        require(sentence_id in relation_by_id, f"final relation without evidence row: {sentence_id}")
        relation = relation_by_id[sentence_id]
        require(relation["logical_operator"] == decision["logical_operator"], f"relation operator drift: {sentence_id}")
        require(relation["relation_status"] == "VERIFIED", f"relation evidence is not verified: {sentence_id}")
        require(relation["relation_disposition"] in {"SOURCE_SUPPORTED", "SPEC_CONTRACT_SUPPORTED", "REMOVED_BY_REWRITE"}, f"invalid relation disposition: {sentence_id}")
        require(canonical_reviewer(relation["relation_reviewer"]), f"relation evidence lacks reviewer: {sentence_id}")
        require_iso_date(relation["relation_review_date"], f"invalid relation review date: {sentence_id}")
        if relation["relation_disposition"] == "SOURCE_SUPPORTED":
            require(relation["evidence_source_ids"] and relation["evidence_locator"], f"source-supported relation lacks source/locator: {sentence_id}")
        elif relation["relation_disposition"] == "SPEC_CONTRACT_SUPPORTED":
            require(relation["spec_contract"], f"spec-supported relation lacks contract: {sentence_id}")
        else:
            require(sentence_id in application_by_id, f"rewritten relation lacks application evidence: {sentence_id}")

    blocked = sum(row["appropriateness_verdict"] == "BLOCKED" for row in decisions)
    independent = sum(
        row["appropriateness_verdict"] != "BLOCKED"
        and canonical_reviewer(row["primary_reviewer"])
        and canonical_reviewer(row["independent_reviewer"])
        and canonical_reviewer(row["primary_reviewer"]) != canonical_reviewer(row["independent_reviewer"])
        and row["review_status"] == "FINAL_TWO_REVIEWER_APPROVED"
        for row in decisions
    )
    polarity_scope = [
        row for row in queue
        if row["source_projection_adequacy"] == "CONTROLLED_TERM_PROJECTION_REQUIRES_CLAIM_POLARITY_REVIEW"
    ]
    polarity_done = sum(
        decisions_by_id[row["sentence_id"]]["source_claim_role"] in SOURCE_ROLES
        and decisions_by_id[row["sentence_id"]]["appropriateness_verdict"] != "BLOCKED"
        and decisions_by_id[row["sentence_id"]]["review_status"] == "FINAL_TWO_REVIEWER_APPROVED"
        for row in polarity_scope
    )
    applied = sum(row["sentence_id"] in application_by_id for row in actionable)
    relation_done = sum(row["sentence_id"] in relation_by_id for row in relation_scope)

    sheet_export_manifest = json_object(SHEET_EXPORT_MANIFEST)
    require(sheet_export_manifest["export_sha256"] == file_sha256(SHEET_EXPORT), "sheet export manifest hash mismatch")
    require(sheet_export_manifest["row_count"] == len(queue), "sheet export row count mismatch")
    sheet_readback = json_object(SHEET_READBACK)
    readback_file = sheet_readback.get("readback_file")
    readback_path = (ROOT / str(readback_file)).resolve() if readback_file else None
    readback_matches = bool(
        readback_path
        and readback_path.is_relative_to(OUT.resolve())
        and readback_path.is_file()
        and sheet_readback.get("readback_sha256") == file_sha256(readback_path)
        and rows(readback_path.relative_to(OUT).as_posix()) == rows(SHEET_EXPORT.relative_to(OUT).as_posix())
    )
    sheet_verified = bool(
        sheet_readback.get("verification_status") == "VERIFIED"
        and sheet_readback.get("authoritative_docs_commit") == target_commit
        and sheet_readback.get("export_sha256") == sheet_export_manifest["export_sha256"]
        and sheet_readback.get("row_count") == len(queue)
        and sheet_readback.get("remote_revision_id")
        and readback_matches
    )
    if sheet_verified:
        require_iso_date(str(sheet_readback.get("verified_date", "")), "invalid Sheet readback verification date")
    post_review = json_object(POST_REVIEW)
    coverage_manifest = json_object(OUT / "coverage_manifest.json")
    semantic_manifest = json_object(OUT / "semantic_assurance_manifest.json")
    literature_manifest = json_object(OUT / "literature_entailment_manifest.json")
    semantic_summary = {
        row["metric_id"]: row for row in rows("semantic_assurance_summary.csv")
    }
    literature_summary = {
        row["metric_id"]: row for row in rows("logical_proof_summary.csv")
    }
    proofs = rows("sentence_logical_proofs.csv")
    expected_source_files = {
        relative: file_sha256(ROOT / relative)
        for relative in (
            "formal/review-data/coverage_manifest.json",
            "formal/review-data/semantic_assurance_manifest.json",
            "formal/review-data/literature_entailment_manifest.json",
            "formal/review-data/semantic_assurance_summary.csv",
            "formal/review-data/logical_proof_summary.csv",
            "formal/review-data/sentence_logical_proofs.csv",
        )
    }
    expected_manifest_commits = {
        "coverage": coverage_manifest.get("canonical_commit"),
        "semantic": semantic_manifest.get("authoritative_commit"),
        "literature": literature_manifest.get("authoritative_commit"),
    }
    docs_changed = target_commit != BASELINE_DOCS_COMMIT and git_diff_status(
        BASELINE_DOCS_COMMIT, target_commit
    ) == 1
    current_docs_match_target = git_diff_status(target_commit) == 0
    recalculation_verified = bool(
        post_review.get("verification_status") == "VERIFIED"
        and post_review.get("baseline_docs_commit") == BASELINE_DOCS_COMMIT
        and post_review.get("target_docs_commit") == target_commit
        and post_review.get("docs_changed") is docs_changed is True
        and post_review.get("current_docs_match_target") is current_docs_match_target is True
        and post_review.get("upstream_manifest_commits") == expected_manifest_commits
        and all(value == target_commit for value in expected_manifest_commits.values())
        and post_review.get("evidence_required_sentences") == len(proofs)
        and post_review.get("conditional_logical_proofs") == sum(
            row["logical_proof_assurance"] == "MODEL_PROVED" for row in proofs
        )
        and post_review.get("end_to_end_assurance_count") == int(
            literature_summary["LIT-COV-008"]["numerator"]
        )
        and post_review.get("end_to_end_assurance_denominator") == int(
            literature_summary["LIT-COV-008"]["denominator"]
        )
        and post_review.get("independently_verified_external_truth_count") == int(
            semantic_summary["TRUTH-COV-004"]["numerator"]
        )
        and post_review.get("independently_verified_external_truth_denominator") == int(
            semantic_summary["TRUTH-COV-004"]["denominator"]
        )
        and post_review.get("source_files") == expected_source_files
    )
    completion = int(summary["APR-006"]["numerator"])
    require(completion in {0, 1}, "completion gate must be binary")
    require(
        completion == int(
            blocked == 0
            and independent == len(decisions)
            and polarity_done == len(polarity_scope)
            and calibrated == len(gold)
            and applied == len(actionable)
            and relation_done == len(relation_scope)
            and sheet_verified
            and recalculation_verified
        ),
        "completion gate contradicts ledger",
    )
    require(manifest["completion_gate"] == bool(completion), "manifest completion gate mismatch")
    require(manifest["unresolved_sentence_count"] == len(queue), "manifest queue count mismatch")
    require(manifest["controlled_projection_sentence_count"] == 632, "controlled projection count mismatch")
    require(manifest["target_docs_commit"] == target_commit, "manifest target docs commit mismatch")

    expected_metrics = {
        "APR-007": (int(calibrated == len(gold)), 1),
        "APR-008": (applied, len(actionable)),
        "APR-009": (relation_done, len(relation_scope)),
        "APR-010": (int(sheet_verified), 1),
        "APR-011": (int(recalculation_verified), 1),
    }
    for metric_id, (numerator, denominator) in expected_metrics.items():
        require(int(summary[metric_id]["numerator"]) == numerator, f"{metric_id} numerator mismatch")
        require(int(summary[metric_id]["denominator"]) == denominator, f"{metric_id} denominator mismatch")

    for relative, expected in manifest["sha256"].items():
        actual = hashlib.sha256((ROOT / relative).read_bytes()).hexdigest()
        require(actual == expected, f"sha256 mismatch: {relative}")

    print(
        f"appropriateness review valid: queue={len(queue)}, blocked={blocked}, "
        f"independent={independent}, completion={bool(completion)}, checked={today.isoformat()}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
