## 障害レポート

**保存先:** `reports/bugs/20260430-0000-failure-report-example.md`
**概要:** 生成した成果物に、ユーザーが明示した「半構造的な障害レポート」という要件を満たす機械処理可能なフィールド定義が不足していた。
**重大度:** S2_medium
**状態:** triaged
**影響:** 後から障害内容を集計・比較・再分析する用途では、そのまま利用しづらい。
**原因仮説:** 出力形式を自然文中心で設計し、分析用スキーマの固定フィールドと enum を十分に定義しなかった。
**現在の対応:** JSON ブロック、分類値、必須項目、証拠、原因仮説、是正アクションを含む形式へ修正する。
**次のアクション:** スキーマに沿って再出力し、必須キーが揃っていることを確認する。

```json failure_report
{
  "schema_version": "1.0.0",
  "report_id": "FR-20260430-000000-EX01",
  "created_at": "2026-04-30T00:00:00Z",
  "incident_type": "instruction_miss",
  "failure_mode": "incomplete_output",
  "severity": "S2_medium",
  "status": "triaged",
  "summary": {
    "title": "半構造レポート要件の不足",
    "description": "ユーザーが後日分析できる半構造レポートを求めたが、初回出力では機械処理可能な固定スキーマが不足していた。",
    "detected_by": "reviewer",
    "detected_at": "2026-04-30T00:00:00Z"
  },
  "user_request": {
    "original_request_excerpt": "障害レポートを出力するskilsを作成して。このとき、後から分析ができるよう、半構造的なものとして",
    "interpreted_goal": "障害発生時に分析可能な形式でレポートを出すスキルを作成する。",
    "explicit_constraints": [
      "障害レポートを出力する",
      "後から分析できる",
      "半構造的である"
    ],
    "implicit_constraints": [
      "分類・集計に使える固定フィールドを持つ",
      "人間にも読める"
    ]
  },
  "expected": {
    "success_criteria": [
      "必須フィールドが定義されている",
      "enum による分類軸がある",
      "JSON など機械処理可能なブロックを含む",
      "証拠、原因、影響、対応、再発防止が分離されている"
    ],
    "expected_output": "Failure Report Skill の SKILL.md",
    "expected_format": "Markdown + JSON failure_report block"
  },
  "actual": {
    "observed_output": "自然文中心のレポート案",
    "observed_behavior": "分析用の固定スキーマと分類値が不足していた。",
    "deviation_from_expected": [
      "機械処理可能な JSON ブロックが不足",
      "重大度、種別、失敗モードなどの enum が不足",
      "証拠と原因仮説の分離が不十分"
    ]
  },
  "impact": {
    "user_impact": "後から障害傾向を集計しづらい。",
    "artifact_impact": "スキルとしての再利用性が低下する。",
    "scope": "single_response",
    "blocked": false
  },
  "affected_artifacts": [
    {
      "type": "document",
      "name": "Failure Report Skill draft",
      "path_or_identifier": "assistant_response",
      "status": "affected"
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
      "kind": "observation",
      "source": "review",
      "content": "半構造化のための固定フィールド、分類値、JSON ブロックが不足している。",
      "timestamp": "2026-04-30T00:00:00Z"
    }
  ],
  "reproduction": {
    "reproducible": "yes",
    "steps": [
      "初回出力を確認する",
      "固定フィールド、enum、JSON ブロックの有無を確認する"
    ],
    "minimal_case": "半構造レポートを求める要求に対し、自然文のみを出力する。",
    "repro_result": "分析用途に必要な構造が不足する。"
  },
  "validation": {
    "checks_performed": [
      "必須フィールドの有無",
      "分類値の有無",
      "JSON と Markdown の併用可否"
    ],
    "checks_failed": [
      "初回出力に固定スキーマが不足"
    ],
    "checks_not_performed": [],
    "known_uncertainties": [
      "実際の運用環境で利用する集計基盤は未指定"
    ]
  },
  "suspected_root_cause": {
    "category": "requirements",
    "description": "『半構造的』を自然文テンプレート中心に解釈し、分析用スキーマ要件を十分に具体化しなかった。",
    "confidence": "medium",
    "supporting_evidence": [
      "ユーザーは後から分析できる形式を明示していた"
    ]
  },
  "contributing_factors": [
    "要求の実装対象がスキル文書か実行ロジックか曖昧だった"
  ],
  "timeline": [
    {
      "time": "2026-04-30T00:00:00Z",
      "event": "要件不足を検出",
      "actor": "reviewer"
    }
  ],
  "actions_taken": [
    {
      "action": "必須キー、enum、証拠、原因、是正アクションを含むスキーマを追加",
      "result": "分析可能なレポート形式へ改善",
      "status": "done"
    }
  ],
  "workaround": {
    "available": true,
    "description": "テンプレートの JSON ブロックを抽出してログ基盤または表計算に取り込む。",
    "limitations": [
      "実運用では report_id と created_at の自動生成が望ましい"
    ]
  },
  "corrective_actions": [
    {
      "action": "障害レポート出力時に JSON Schema で必須キーを検証する",
      "owner": "assistant",
      "due": "unknown",
      "status": "not_started",
      "priority": "P2"
    }
  ],
  "prevention": {
    "recommended_changes": [
      "半構造レポートでは Markdown サマリと JSON ブロックを常に併用する"
    ],
    "tests_to_add": [
      "必須キーが存在するかを検証するテスト",
      "enum 値が定義済みかを検証するテスト"
    ],
    "process_changes": [
      "障害発生時は事実、推定、対応、未解決点を分離して記録する"
    ]
  },
  "open_questions": [
    "運用先のログ基盤、チケット管理ツール、表計算形式への連携要件"
  ],
  "related_reports": [],
  "redactions": [],
  "confidence": "medium",
  "tags": [
    "semi_structured_report",
    "instruction_miss",
    "schema"
  ]
}
```
