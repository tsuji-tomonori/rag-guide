# RAGガイド形式整合性・一次資料カバレッジレビュー

## 判定

**不合格（修正後に再レビューが必要）**です。Critical 1件、Major 6件、Minor 1件が未解消であり、正本レビューの完了条件を満たしません。形式モデルそのものは、元の横断契約に加え、BM25等14件の具体技術契約の型検査、決定的シナリオ、5,000件のランダムトレース、Apalache境界付き検査を通過しました。Lean 4は、センテンス根拠台帳の件数、未カバー集合、一次資料割当、割合計算を追加公理なしで検査しました。

この判定は「形式モデルに反例がない」ことと「自然言語の正本が実装可能な一意の契約になっている」ことを分けて扱います。前者は合格、後者は未合格です。

## 対象と完全性

| 項目 | 値 |
|---|---:|
| 正本commit | `52bebecfb2a435d0e7ff2efea557c5799674ded6` |
| Markdownファイル | 94 |
| 説明状態 | 339 |
| 章序文 | 10 |
| 番号付き節 | 329 |
| 正規化した技術要素 | 49 |
| 外部一次資料 | 193 |
| 解決済み資料 | 193 |
| 不変条件 | 25 |
| 決定的シナリオ | 19 |
| 指摘 | 8 |
| 抽出センテンス相当行 | 4,418 |
| 根拠必須センテンス | 1,067 |
| 一次資料対応済み | 474（44.42%） |
| 厳格直接対応 | 397（37.21%） |
| 未カバーセンテンス | 593 |
| 具体技術 | 47 |
| 一次資料・Lean台帳を持つ具体技術 | 47/47（100%） |
| Quintで振る舞い契約を検査した中核技術 | 14/47（29.79%） |

`formal/review-data/manifest.json` は生成元commit、件数、主要CSVのSHA-256を記録します。`tools/formal_review/generate_review_data.py` は正本commitと `docs/` の内容が異なる状態での生成を拒否するため、レビュー対象の取り違えを防ぎます。

## 主な指摘

| ID | 重大度 | 契約上の問題 |
|---|---|---|
| FND-001 | Critical | 認可にpost-filterを許容する記述と、検索前・検索中に権限外候補を除外する記述が競合 |
| FND-002 | Major | 根拠不足時の全体保留と論点単位の部分回答の判定順序が未確定 |
| FND-003 | Major | 副作用操作の人承認が「必須」と「必要に応じて」で不一致 |
| FND-004 | Major | Evidence sufficiencyのschema、閾値、UNKNOWN時動作が未定義 |
| FND-005 | Major | 取得後・回答確定前の権限剥奪や削除を再検証する契約がない |
| FND-006 | Major | release manifestの必須項目と互換性規則が未定義 |
| FND-007 | Major | Query変換で期間・版・否定・tenantを保存する形式契約がない |
| FND-008 | Minor | trace相関IDの生成・継承・一意性契約が複数節へ分散 |

各指摘の場所、根拠、影響、修正案、再検証方法は `formal/review-data/findings.csv` にあります。ガイド本文はこの変更では改訂していません。

## 成果物

- [Google Sheets版レビュー台帳](https://docs.google.com/spreadsheets/d/1tqA6ExUTT862iqVos-uIsuDzb8pgIPL7lHZ5hJuyroM/edit)
- `formal/review-data/technical_elements.csv`: 49技術要素と原点候補資料、説明状態、不変条件の対応
- `formal/review-data/primary_sources.csv`: 193一次資料のURL、題名、著者・管理主体、年、利用節
- `formal/review-data/explanation_states.csv`: 339説明状態の追跡表
- `formal/review-data/findings.csv`: 不適切・曖昧・矛盾表現の指摘
- `formal/review-data/concrete_technologies.csv`: BM25等47具体技術の機構、一次資料、形式化対応
- `formal/review-data/trusted_primary_sources.csv`: 193資料の一次性・信頼tier・適格性
- `formal/review-data/sentence_evidence.csv`: 4,418センテンス相当行の根拠要否・資料対応
- `formal/review-data/uncovered_sentences.csv`: 一次資料が未対応の593センテンス
- `formal/review-data/coverage_summary.csv`: カバレッジ分子・分母・百分率
- `formal/quint/invariants.csv`: 25不変条件の正本対応表
- `formal/quint/scenarios.csv`: 19シナリオと期待結果
- `formal/quint/rag_pipeline.qnt`: 章3〜9を横断する有限状態モデル
- `formal/quint/retrieval_techniques.qnt`: 14具体技術の機構・pipeline契約
- `formal/lean/`: 生成台帳、13定理、要件トレーサビリティ
- `formal/verification/verification-report.md`: 実行条件と検証結果
- `formal/verification/evidence-verification-report.md`: 具体技術・カバレッジ・Lean検証結果
- `formal/verification/results.csv`: 機械可読な検証結果

## 形式化の限界

Quintモデルは、認可、tenant、削除、来歴、時点、根拠十分性、矛盾、grounding、引用、tool実行、release、auditの横断契約と、具体技術の機構を有限状態へ抽象化したものです。Leanが証明するのは生成台帳の集合・件数・資料割当・割合の整合性であり、一次資料が日本語センテンスを意味的に含意することは証明しません。この境界は`formal/lean/traceability.json`で`INCONCLUSIVE`として明示しています。未定義の判定関数はFND-004、FND-006、FND-007として追跡します。

## 再生成

```bash
python tools/formal_review/generate_review_data.py
python tools/formal_review/generate_evidence_coverage.py
python tools/formal_review/check_evidence_coverage.py
```

形式検証の再実行方法は `formal/verification/verification-report.md` と `formal/verification/evidence-verification-report.md` を参照してください。
