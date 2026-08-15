# RAGガイド 形式整合性・一次資料レビュー

## 判定

Issue #36で対象とした横断指摘8件は解消しました。正本の記述、機械可読schema、受入fixture、Quint状態遷移、Lean定理を同じ契約へそろえています。

一次資料レビューは、外部検証が必要な1,022文を分母とし、1,022/1,022へ適格な一次資料を対応付けました。旧未対応593文の判定を再利用可能な台帳へ取り込み、本文変更で一致しなくなった行は自動継承せず再判定しています。未カバーは0件です。

形式証明の意味は限定しています。Leanが証明するのは、明示したsource-summary premisesの下での台帳整合性と論理的帰結です。自然言語から形式命題への意味保存、論文結果の外的真偽、ホストされたサービスの実動作までは証明済みとしません。

## 現行スナップショット

| 項目 | 値 |
|---|---:|
| 正本commit | `f0c3e0f48309e2d1c2684dd6de3a5ac66a6e3111` |
| Markdown / 説明状態 | 94 / 339 |
| 正規化した技術要素 | 49 |
| 横断指摘 | 8/8 解消 |
| 適格一次資料 | 201/201 |
| 主張極性レビュー | 201/201 |
| 抽出センテンス相当行 | 4,497 |
| 根拠必須センテンス | 1,022 |
| 一次資料対応 | 1,022/1,022（100%） |
| 厳格直接対応 | 444/1,022（43.44%） |
| 未カバー | 0 |
| 具体技術の一次資料・Lean台帳 | 47/47 |
| Quintで振る舞いを検査する中核技術 | 14/47 |
| 条件付きLean導出 | 331/1,022 |
| 条件付き論理未証明文の最終判定 | 691/691 |
| 自然言語込みEnd-to-End証明 | 0/1,022 |

「一次資料対応100%」は、センテンス内リンク、具体技術の原著、同一段落、または保存済みのセンテンス単位レビューによる直接・限定付き支持を含みます。「厳格直接対応」は、そのうちセンテンス内リンク、具体技術原著、人手確認済み直接支持だけを別集計した保守的な指標です。

## 解消した横断契約

| ID | 統一した契約 |
|---|---|
| FND-001 | ACL・tenant・削除・失効は本文露出前に認可し、post-filterを機密境界へ使わない |
| FND-002 | 論点別十分性を先に判定し、完全回答・限定回答・全体保留を決定的に分岐する |
| FND-003 | 副作用操作は人承認を既定必須とし、低risk・可逆・上限付き・事前承認だけを例外にする |
| FND-004 | required facet、最低支持数、authority、時点・版、conflict、UNKNOWNをschema化する |
| FND-005 | 取得後、生成前、出力・cache前に権限と文書状態を再検証し、失効時はEvidence Setを無効化する |
| FND-006 | release manifestの必須IDと互換性組を固定し、publish / rollbackを同じ単位で扱う |
| FND-007 | resolved queryでentity、期間、版、否定・極性、比較条件、tenant、hard filterを保存する |
| FND-008 | request、query、retrieval、evidence、claim、citation、tool、releaseのID関係を一意にする |

本文では既存の章立てへ契約を配置し、読者がRAGの処理順に読める流れを維持しました。schemaとfixtureの対応は`formal/contracts/README.md`、要件トレースは`formal/contracts/traceability.csv`にあります。

## 主な成果物

- [Google Sheets版レビュー台帳](https://docs.google.com/spreadsheets/d/1tqA6ExUTT862iqVos-uIsuDzb8pgIPL7lHZ5hJuyroM/edit)
- `formal/contracts/`: 横断契約schema、fixture、検証器、トレーサビリティ
- `formal/review-data/sentence_evidence.csv`: 全4,497文の根拠要否と資料対応
- `formal/review-data/manual_sentence_reviews.csv`: 旧未対応文と再判定文の保存済み判断
- `formal/review-data/source_projection_reviews.csv`: 201資料の主張極性レビュー
- `formal/review-data/sentence_logical_proofs.csv`: 1,022文の論理分解、Lean結果、最終判定
- `formal/quint/rag_pipeline.qnt`: RAG横断状態遷移モデル
- `formal/quint/retrieval_techniques.qnt`: 14中核技術の振る舞いモデル
- `formal/lean/RagEvidence/CrossCuttingContracts.lean`: FND-001〜008の契約定理
- `formal/verification/`: 実行条件、結果、保証境界

## 再生成と検査

```bash
python tools/formal_review/generate_review_data.py
python tools/formal_review/generate_evidence_coverage.py
python tools/formal_review/generate_semantic_assurance.py
python tools/formal_review/generate_literature_entailment.py
python tools/formal_review/check_evidence_coverage.py
python tools/formal_review/check_semantic_assurance.py
python tools/formal_review/check_literature_entailment.py
python formal/contracts/validate_contracts.py
python tools/formal_review/check_lean_trust.py
```

Lean、Quint、Apalacheの再現コマンドと検査深度は`formal/verification/`を参照してください。
