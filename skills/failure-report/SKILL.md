---
name: failure-report
description: "Use this skill when a test fails, a requested deliverable does not satisfy the instructions, a tool/runtime error occurs, or any work interruption should be recorded for later analysis. Produces a semi-structured incident report with stable fields, enumerations, evidence, and corrective actions."
---

# Failure Report Skill

## 目的

テスト不合格、指示未達、成果物不備、ツール障害、実行時エラー、外部依存の問題などが発生したときに、後から集計・再分析・再発防止に使える半構造的な障害レポートを出力する。

このスキルは、単なる謝罪文ではなく、**分析可能なインシデント記録**を作成するために使う。

## 使用タイミング

次のいずれかに該当する場合に使用する。

- テスト、検証、lint、ビルド、実行確認が失敗した。
- ユーザーの指示に対して、期待された成果物を出せなかった。
- 成果物の品質、形式、内容、制約遵守に重大または軽微な問題がある。
- ツール、API、ファイル処理、外部依存、権限、環境、ネットワークなどの障害が発生した。
- 安全上・ポリシー上・権限上の理由で、要求の一部または全部を実行できなかった。
- 途中で方針転換、代替実装、既知の不確実性が発生し、記録が必要である。
- 後続作業者または後日の自分が、何が起きたかを再現・分析できる必要がある。

## 基本方針

1. **事実と推定を分離する。**
   - 観測できた事実は `evidence`、推定は `suspected_root_cause` に分ける。
   - 根拠がない場合は `unknown` または `null` を使う。
   - 不明点を埋めるために作り話をしてはいけない。

2. **後から機械処理できる形式を維持する。**
   - レポート末尾に必ず `failure_report` という JSON コードブロックを出力する。
   - JSON は有効な構文にする。
   - enum 値はこのスキルで定義した値を使う。

3. **人間にも読みやすくする。**
   - JSON の前に短い Markdown サマリを出す。
   - サマリは、影響、原因仮説、現状、次のアクションを中心にする。

4. **秘匿情報を保護する。**
   - API キー、トークン、パスワード、個人情報、内部識別子などはマスクする。
   - ログを引用する場合は、必要最小限にし、機微情報を `[REDACTED]` に置換する。

5. **隠れた思考過程を出さない。**
   - 長い内部推論や非公開の思考過程は出力しない。
   - 代わりに、観測事実、判断理由の要約、検証結果、採った対応を記録する。

## 出力先ルール

- レポート出力先は原則 `reports/bugs/` とする。
- `reports/bugs/` が存在しない場合は作成してから保存する。
- 保存形式は Markdown (`.md`) とする。
- ファイル名は `YYYYMMDD-HHMM-<incident-summary>.md` を推奨する。
- `<incident-summary>` は ASCII の小文字とハイフンを優先し、短く事象が分かる名称にする。
- 適切な summary を付けにくい場合は `YYYYMMDD-HHMM-failure-report.md` を使う。
- ユーザーが別の保存先を明示しない限り、実質的な障害・中断レポートはチャット本文だけで完結させず、`reports/bugs/` 配下へ保存する。
- 最終回答では、生成したレポートの保存先パスを明示する。
- Markdown の強制改行用の末尾スペースは使わない。サマリ項目は通常の改行で分け、pre-commit の `trailing-whitespace` hook と衝突しないようにする。
- 保存後、可能であればリポジトリで定義済みのドキュメント検証を実行し、`failure_report` JSON ブロックが構文的に有効であることを確認する。

## 出力手順

0. **保存先を決める**
   - `reports/bugs/YYYYMMDD-HHMM-<incident-summary>.md` の保存先を先に決める。
   - 事象名が曖昧なら `failure-report` を使う。

1. **トリガーを特定する**
   - 何が失敗したかを一文で書く。
   - `incident_type`、`failure_mode`、`severity`、`status` を決める。

2. **期待値と実績を比較する**
   - ユーザーの要求、成功条件、制約を短く整理する。
   - 実際に起きたこととの差分を記録する。

3. **証拠を保存する**
   - エラー文、失敗したテスト名、該当ファイル、対象関数、コマンド、検証結果などを記録する。
   - 再現手順がある場合は最小手順を書く。

4. **原因と影響を分離する**
   - 原因が確定していなければ `suspected_root_cause` として扱う。
   - 影響範囲、ユーザー影響、成果物影響を明示する。

5. **対応状況と次アクションを残す**
   - 試した対応、回避策、未解決点、再発防止策を記録する。
   - アクションは `owner`、`due`、`status` を含める。未定なら `unknown` を使う。

## 分類値

### incident_type

- `test_failure` — テスト、検証、lint、ビルド、実行確認の失敗。
- `instruction_miss` — ユーザー指示、形式、制約、要件に対する未達。
- `artifact_defect` — 生成物の内容、構造、品質、リンク、ファイル形式などの不備。
- `tool_error` — ツール呼び出し、API、環境、ファイル操作などのエラー。
- `runtime_error` — コード実行時の例外、クラッシュ、タイムアウトなど。
- `data_issue` — 入力データ、参照データ、欠損、矛盾、破損、鮮度の問題。
- `dependency_issue` — 外部サービス、ライブラリ、ネットワーク、バージョン差分の問題。
- `safety_or_policy_block` — 安全、権限、ポリシー、プライバシー上の制約による未実行。
- `ambiguity_or_scope_issue` — 指示の曖昧さ、スコープ不明、前提不整合。
- `performance_issue` — 遅延、過大な処理時間、リソース不足。
- `other` — 上記に分類できない問題。

### failure_mode

- `wrong_output`
- `incomplete_output`
- `invalid_format`
- `missing_required_field`
- `incorrect_assumption`
- `unverified_claim`
- `broken_link_or_file`
- `command_failed`
- `timeout`
- `permission_denied`
- `dependency_unavailable`
- `schema_violation`
- `quality_regression`
- `not_reproducible`
- `unknown`

### severity

- `S0_critical` — データ喪失、セキュリティ・安全上の重大問題、業務不能、重大な誤情報。
- `S1_high` — 成果物が主要目的に使えない、主要要件を満たさない、作業がブロックされる。
- `S2_medium` — 重要な不備はあるが、限定的な修正または回避策で利用可能。
- `S3_low` — 軽微な品質・表記・形式上の問題。主要目的は達成可能。
- `S4_info` — 障害ではないが、注意点、既知の制約、ニアミスとして記録する価値がある。

### status

- `open`
- `triaged`
- `mitigated`
- `resolved`
- `wont_fix`
- `needs_user_input`
- `unknown`

### confidence

- `high` — 直接証拠があり、原因または状態が明確。
- `medium` — 複数の証拠から妥当な推定ができる。
- `low` — 情報不足で推定に留まる。
- `unknown` — 判断材料がない。

### action_status

- `not_started`
- `in_progress`
- `done`
- `blocked`
- `deferred`
- `unknown`

## Markdown サマリ形式

次の形式で出力する。

```markdown
## 障害レポート

**保存先:** <reports/bugs/YYYYMMDD-HHMM-incident-summary.md>
**概要:** <何が起きたかを1〜2文で記述>
**重大度:** <severity>
**状態:** <status>
**影響:** <ユーザー、成果物、作業への影響>
**原因仮説:** <確定していなければ仮説として記述>
**現在の対応:** <実施済み対応・回避策・残課題>
**次のアクション:** <最重要の次アクションを1〜3個>

```json failure_report
{ ... }
```
```

## JSON 出力仕様

レポート末尾に、次のキー構造を持つ JSON を必ず出力する。

必須キー:

- `schema_version`
- `report_id`
- `created_at`
- `incident_type`
- `failure_mode`
- `severity`
- `status`
- `summary`
- `user_request`
- `expected`
- `actual`
- `impact`
- `evidence`
- `suspected_root_cause`
- `actions_taken`
- `corrective_actions`
- `open_questions`
- `confidence`
- `tags`

推奨キー:

- `environment`
- `affected_artifacts`
- `reproduction`
- `validation`
- `timeline`
- `prevention`
- `related_reports`
- `redactions`

## JSON テンプレート

```json failure_report
{
  "schema_version": "1.0.0",
  "report_id": "FR-YYYYMMDD-HHMMSS-XXXX",
  "created_at": "YYYY-MM-DDTHH:MM:SSZ",
  "incident_type": "test_failure | instruction_miss | artifact_defect | tool_error | runtime_error | data_issue | dependency_issue | safety_or_policy_block | ambiguity_or_scope_issue | performance_issue | other",
  "failure_mode": "wrong_output | incomplete_output | invalid_format | missing_required_field | incorrect_assumption | unverified_claim | broken_link_or_file | command_failed | timeout | permission_denied | dependency_unavailable | schema_violation | quality_regression | not_reproducible | unknown",
  "severity": "S0_critical | S1_high | S2_medium | S3_low | S4_info",
  "status": "open | triaged | mitigated | resolved | wont_fix | needs_user_input | unknown",
  "summary": {
    "title": "",
    "description": "",
    "detected_by": "user | assistant | test | tool | reviewer | unknown",
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
    "scope": "single_response | single_file | multiple_files | workflow | unknown",
    "blocked": false
  },
  "affected_artifacts": [
    {
      "type": "file | code | test | document | spreadsheet | slide | pdf | link | command | other",
      "name": "",
      "path_or_identifier": "",
      "status": "affected | missing | invalid | unverified | fixed | unknown"
    }
  ],
  "environment": {
    "tools_used": [],
    "runtime": "",
    "platform": "",
    "dependencies": [],
    "external_services": []
  },
  "evidence": [
    {
      "kind": "error_message | log_excerpt | test_result | command_output | file_check | user_feedback | observation | other",
      "source": "",
      "content": "",
      "timestamp": "YYYY-MM-DDTHH:MM:SSZ"
    }
  ],
  "reproduction": {
    "reproducible": "yes | no | partial | unknown",
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
    "category": "requirements | implementation | tool | environment | data | dependency | communication | policy | unknown | other",
    "description": "",
    "confidence": "high | medium | low | unknown",
    "supporting_evidence": []
  },
  "contributing_factors": [],
  "timeline": [
    {
      "time": "YYYY-MM-DDTHH:MM:SSZ",
      "event": "",
      "actor": "user | assistant | tool | system | unknown"
    }
  ],
  "actions_taken": [
    {
      "action": "",
      "result": "",
      "status": "done | in_progress | blocked | deferred | unknown"
    }
  ],
  "workaround": {
    "available": false,
    "description": "",
    "limitations": []
  },
  "corrective_actions": [
    {
      "action": "",
      "owner": "assistant | user | tool_owner | unknown",
      "due": "YYYY-MM-DD | unknown",
      "status": "not_started | in_progress | done | blocked | deferred | unknown",
      "priority": "P0 | P1 | P2 | P3 | unknown"
    }
  ],
  "prevention": {
    "recommended_changes": [],
    "tests_to_add": [],
    "process_changes": []
  },
  "open_questions": [],
  "related_reports": [],
  "redactions": [
    {
      "field": "",
      "reason": "secret | personal_data | internal_identifier | safety | other"
    }
  ],
  "confidence": "high | medium | low | unknown",
  "tags": []
}
```

## 簡易レポートが必要な場合

ユーザーが短いレポートを求めた場合でも、JSON ブロックは維持する。ただし、各配列は必要最小限にしてよい。保存先は同様に `reports/bugs/` を使う。

## 完了条件

次を満たしたら、このスキルによる出力は完了とする。

- レポートが `reports/bugs/` 配下に保存されている。
- 何が起きたかが一文で把握できる。
- 期待値、実績、差分が記録されている。
- 影響範囲と重大度が記録されている。
- 証拠が少なくとも1つ、または証拠不足であることが明示されている。
- 原因が確定していない場合でも、仮説または `unknown` が記録されている。
- 次のアクションまたは未解決事項が記録されている。
- JSON が機械処理可能な構文で出力されている。
