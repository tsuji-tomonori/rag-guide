# 障害レポートテンプレート

## 障害レポート

**保存先:** `reports/bugs/YYYYMMDD-HHMM-incident-summary.md`
**概要:** <何が起きたか>
**重大度:** <S0_critical | S1_high | S2_medium | S3_low | S4_info>
**状態:** <open | triaged | mitigated | resolved | wont_fix | needs_user_input | unknown>
**影響:** <ユーザー、成果物、作業への影響>
**原因仮説:** <確定していない場合は「未確定」と明記>
**現在の対応:** <実施済み対応・回避策・残課題>
**次のアクション:** <1〜3個>

```json failure_report
{
  "schema_version": "1.0.0",
  "report_id": "FR-YYYYMMDD-HHMMSS-XXXX",
  "created_at": "YYYY-MM-DDTHH:MM:SSZ",
  "incident_type": "unknown",
  "failure_mode": "unknown",
  "severity": "S2_medium",
  "status": "open",
  "summary": {
    "title": "",
    "description": "",
    "detected_by": "unknown",
    "detected_at": "YYYY-MM-DDTHH:MM:SSZ"
  },
  "user_request": {
    "original_request_excerpt": "",
    "interpreted_goal": "",
    "explicit_constraints": [],
    "implicit_constraints": []
  },
  "expected": {
    "success_criteria": [],
    "expected_output": "",
    "expected_format": ""
  },
  "actual": {
    "observed_output": "",
    "observed_behavior": "",
    "deviation_from_expected": []
  },
  "impact": {
    "user_impact": "",
    "artifact_impact": "",
    "scope": "unknown",
    "blocked": false
  },
  "affected_artifacts": [],
  "environment": {
    "tools_used": [],
    "runtime": "",
    "platform": "",
    "dependencies": [],
    "external_services": []
  },
  "evidence": [
    {
      "kind": "observation",
      "source": "",
      "content": "",
      "timestamp": "YYYY-MM-DDTHH:MM:SSZ"
    }
  ],
  "reproduction": {
    "reproducible": "unknown",
    "steps": [],
    "minimal_case": "",
    "repro_result": ""
  },
  "validation": {
    "checks_performed": [],
    "checks_failed": [],
    "checks_not_performed": [],
    "known_uncertainties": []
  },
  "suspected_root_cause": {
    "category": "unknown",
    "description": "",
    "confidence": "unknown",
    "supporting_evidence": []
  },
  "contributing_factors": [],
  "timeline": [],
  "actions_taken": [],
  "workaround": {
    "available": false,
    "description": "",
    "limitations": []
  },
  "corrective_actions": [],
  "prevention": {
    "recommended_changes": [],
    "tests_to_add": [],
    "process_changes": []
  },
  "open_questions": [],
  "related_reports": [],
  "redactions": [],
  "confidence": "unknown",
  "tags": []
}
```
