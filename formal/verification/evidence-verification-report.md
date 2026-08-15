# 一次資料・形式契約・Lean 4検証記録

## 結果

- 検証日: 2026-08-15 JST
- 正本: `docs/` at `f0c3e0f48309e2d1c2684dd6de3a5ac66a6e3111`
- Python: 3.12
- Lean: 4.30.0
- Quint: 0.32.0
- Apalache: 0.56.1

| 対象 | 結果 |
|---|---:|
| Markdown棚卸し | 94/94 |
| 抽出センテンス相当行 | 4,497 |
| 根拠必須センテンス | 1,022 |
| 適格一次資料対応 | 1,022/1,022（100%） |
| 厳格直接対応 | 444/1,022（43.44%） |
| 未カバー | 0 |
| 適格一次資料 | 201/201 |
| 主張極性レビュー | 201/201 |
| 具体技術の一次資料・Lean台帳 | 47/47 |
| Quintで検査する中核技術 | 14/47 |
| 制御atomの相対導出 | 39/1,022 |
| 文の論理分解 | 869/1,022 |
| source summaryからの条件付きLean導出 | 331/1,022 |
| 条件付き論理未証明文の最終判定 | 691/691 |
| 自然言語込みEnd-to-End証明 | 0/1,022 |

## カバレッジ判定

分母は、外部検証可能な技術説明、研究結果、定量値、原著の提案内容、公式製品仕様です。本書が定める設計契約、例、接続文、章構成は一次資料の分母から除き、schema・fixture・形式モデルで検査します。

旧未対応593文は、妥当性、支持範囲、source ID、根拠、対応、評価者、評価日を持つ台帳として保存しました。本文変更後は`file + exact sentence`で結合し、文が変わった7行は自動継承しませんでした。このうち外部根拠が必要な行は現行文で再判定し、未カバーを0にしています。

201資料の制御語彙射影は、原著の提案・結果または公式仕様の対象機能だけを正極性atomとして採用し、比較対象、背景研究、否定された仮説を資料自身の主張へ昇格させない方針でレビューしました。

## Lean 4で検査すること

- 報告した分母、分子、未カバー集合、資料件数が生成台帳と一致する。
- カバー済み行は適格一次資料を1件以上持つ。
- 47具体技術は固有技術として登録され、一次資料を持つ。
- FND-001〜008の有限契約で、認可前の本文露出、失効済みEvidence、UNKNOWN中核の回答、未承認write、不互換release、意図を失うquery rewrite、孤立citationを許さない。
- 331文について、明示したsource-summary premisesの下で、分解済みの正のguide論理式が成立する。
- 公開定理ごとに`#print axioms`を置き、`sorry`、`admit`、`axiom`、`unsafe`、`native_decide`等を静的監査する。

## Quint・Apalacheで検査すること

横断モデルは認可、tenant、削除・失効、provenance、query intent、Evidence sufficiency、完全・限定・保留回答、tool承認、release、trace IDを扱います。23の決定的シナリオ、5,000標本・12 stepのランダム実行、3 stepのApalache境界付き検査をCIで再実行します。

ランダム実行は、公開済みreleaseの互換性と次候補の互換性を一つの変数へ置いていた反例を検出しました。モデルを`publishedReleaseCompatible`と候補の`releaseCompatible`へ分離し、release設定時にgateを再評価するよう修正しています。

## 証明していないこと

`MODEL_PROVED`は形式モデル内の条件付き帰結です。日本語・英語からatom・論理式への変換が意味を完全保存すること、論文の経験的結果が独立再現されること、AWS等のサービスが特定region・時点で仕様どおり動作することは証明していません。691文の最終判定も、資料対応の採否と限定条件を閉じる編集判断であり、外界の真偽をLean定理へ昇格するものではありません。

## 再現コマンド

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

cd formal/lean
lake build
```

QuintとApalacheのコマンドは`verification-report.md`にあります。
