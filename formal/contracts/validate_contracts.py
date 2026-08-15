#!/usr/bin/env python3
"""Validate the executable acceptance fixtures for FND-001 through FND-008."""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parent
FIXTURES = ROOT / "fixtures"


def load(name: str) -> Any:
    return json.loads((FIXTURES / name).read_text(encoding="utf-8"))


def load_schema(name: str) -> dict[str, Any]:
    return json.loads((ROOT / name).read_text(encoding="utf-8"))


def require_keys(instance: dict[str, Any], schema_name: str) -> None:
    schema = load_schema(schema_name)
    missing = set(schema["required"]) - set(instance)
    if missing:
        raise AssertionError(f"{schema_name}: missing required keys {sorted(missing)}")


def expected_facet_status(facet: dict[str, Any]) -> str:
    if facet["authority_ok"] is None or facet["time_version_ok"] is None:
        return "UNKNOWN"
    if facet["conflict_status"] in {"UNKNOWN"}:
        return "UNKNOWN"
    sufficient = (
        facet["support_count"] >= facet["minimum_support"]
        and facet["authority_ok"]
        and facet["time_version_ok"]
        and facet["conflict_status"] in {"NONE", "EXPLAINABLE"}
    )
    return "SUFFICIENT" if sufficient else "INSUFFICIENT"


def validate_evidence_sufficiency() -> None:
    for case in load("evidence-sufficiency.json"):
        contract = {key: value for key, value in case.items() if key != "case_id"}
        require_keys(contract, "evidence-sufficiency.schema.json")
        for facet in case["facets"]:
            actual = expected_facet_status(facet)
            assert actual == facet["status"], (case["case_id"], facet["facet_id"], actual)
        core_ok = all(f["status"] == "SUFFICIENT" for f in case["facets"] if f["core"])
        all_ok = all(f["status"] == "SUFFICIENT" for f in case["facets"])
        result = "COMPLETE" if all_ok else "PARTIAL" if core_ok else "WITHHOLD"
        assert result == case["result"], (case["case_id"], result)


def action_decision(case: dict[str, Any]) -> str:
    if not case["side_effect"]:
        return "ALLOW"
    if case["risk_tier"] == "HIGH_RISK_WRITE" and not case["human_approved"]:
        return "DENY_AUTOMATION"
    if case["human_approved"]:
        return "ALLOW"
    exception_ok = all(case[key] for key in ("low_risk", "reversible", "bounded", "preapproved"))
    if case["risk_tier"] == "PREAPPROVED_LOW_RISK_WRITE" and exception_ok:
        return "ALLOW"
    return "REQUIRE_HUMAN_APPROVAL"


def validate_action_policy() -> None:
    for case in load("action-policy.json"):
        require_keys(case, "action-policy.schema.json")
        assert case["audit_linked"] is True
        assert action_decision(case) == case["decision"], case["case_id"]


def query_preserved(original: dict[str, Any], transformed: dict[str, Any]) -> bool:
    return (
        set(original["hard_filters"]).issubset(transformed["hard_filters"])
        and original["tenant_id"] == transformed["tenant_id"]
        and original["polarity"] == transformed["polarity"]
        and original["time_range"] == transformed["time_range"]
        and original["version_scope"] == transformed["version_scope"]
        and set(original["comparison_targets"]).issubset(transformed["comparison_targets"])
        and set(original["entities"]).issubset(transformed["entities"])
    )


def validate_resolved_query() -> None:
    fixture = load("resolved-query.json")
    require_keys(fixture["original"], "resolved-query.schema.json")
    for variant in fixture["variants"]:
        require_keys(variant["query"], "resolved-query.schema.json")
        assert query_preserved(fixture["original"], variant["query"]) is variant["expected_preserved"], variant["case_id"]


def validate_release_manifest() -> None:
    fixture = load("release-manifest.json")
    schema = load_schema("release-manifest.schema.json")
    component_keys = [key for key in schema["required"] if key != "release_id"]
    for case in fixture["cases"]:
        manifest = case["manifest"]
        require_keys(manifest, "release-manifest.schema.json")
        groups = {manifest[key]["compatibility_group"] for key in component_keys}
        publishable = len(groups) == 1
        assert publishable is case["expected_publishable"], case["case_id"]
    rollback = fixture["rollback"]
    active_release = rollback["candidate_release_id"] if rollback["switch_succeeded"] else rollback["old_release_id"]
    assert active_release == rollback["expected_active_release_id"]
    assert rollback["current_policy_id"] == rollback["expected_active_policy_id"]


def validate_runtime_authorization() -> None:
    checkpoints = set()
    retrievers = set()
    for case in load("runtime-authorization.json"):
        require_keys(case, "runtime-authorization.schema.json")
        valid = all(
            case[key]
            for key in ("authorized", "tenant_matches", "document_active", "policy_version_matches")
        )
        assert case["evidence_valid"] is valid, case["case_id"]
        if not valid:
            assert not any(case["exposures"].values()), case["case_id"]
        checkpoints.add(case["checkpoint"])
        retrievers.add(case["retriever"])
    assert checkpoints == {"RETRIEVAL", "PRE_GENERATION", "PRE_CACHE_OR_OUTPUT"}
    assert retrievers == {"SPARSE", "DENSE", "HYBRID", "FILTERED_ANN"}


def validate_trace_relations() -> None:
    events = load("trace-relations.json")
    for event in events:
        require_keys(event, "trace-relations.schema.json")
    by_event = {event["event_id"]: event for event in events}
    assert len(by_event) == len(events), "event_id must be unique"
    identifiers: dict[str, set[str]] = {
        name: set() for name in ("candidate_id", "evidence_id", "claim_id", "citation_id", "tool_call_id")
    }
    for event in events:
        parent_id = event["parent_event_id"]
        if parent_id is not None:
            assert parent_id in by_event, event["event_id"]
            assert by_event[parent_id]["trace_id"] == event["trace_id"]
        for name, seen in identifiers.items():
            value = event[name]
            if value is not None and event["event_type"] == name.removesuffix("_id").upper():
                assert value not in seen, (name, value)
                seen.add(value)
        if event["event_type"] == "EVIDENCE":
            assert event["candidate_id"] in identifiers["candidate_id"]
        if event["event_type"] == "CITATION":
            assert event["evidence_id"] in identifiers["evidence_id"]
            assert event["claim_id"] in identifiers["claim_id"]
        if event["retry_of"] is not None:
            assert event["retry_of"] in identifiers["tool_call_id"]
            assert event["tool_call_id"] != event["retry_of"]
    assert all(identifiers.values()), "all material ID types need at least one joined example"


def main() -> None:
    checks = [
        validate_runtime_authorization,
        validate_evidence_sufficiency,
        validate_action_policy,
        validate_resolved_query,
        validate_release_manifest,
        validate_trace_relations,
    ]
    for check in checks:
        check()
        print(f"PASS {check.__name__}")
    print(f"contract fixtures valid: findings=8 checks={len(checks)}")


if __name__ == "__main__":
    main()
