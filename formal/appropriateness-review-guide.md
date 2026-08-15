# 未証明文の適切性レビューガイド

## 1. 目的と保証境界

この手順は、`sentence_logical_proofs.csv` で `MODEL_PROVED` になっていない678文を、一次資料・日本語の意味・領域知識の三つの観点から判定するためのものです。対象となる `docs/` の正本は `52bebecfb2a435d0e7ff2efea557c5799674ded6` です。

未証明は誤りを意味しません。また、Leanのコンパイル成功は自然言語の適切性や一次資料の外的真偽を保証しません。本レビューでは、次の三つを別の列で管理します。

1. ガイド文としての適切性
2. 形式モデル上の証明状態
3. 一次資料の主張に対する外的真偽の確認水準

## 2. 成果物と正本関係

| 成果物 | 役割 | 更新方法 |
|---|---|---|
| `appropriateness_review_queue.csv` | 678文の機械生成された固定対象と現在の未証明理由 | generatorで再生成 |
| `appropriateness_review_decisions.csv` | 人手判定、根拠、規範の判断基準・例外、対応、二名のレビュー証跡 | reviewerが編集。generatorは上書きしない |
| `appropriateness_gold_fixture.csv` | 三つの未証明状態を含む24文の校正集合 | 合意後に判定と不一致理由を記録 |
| `appropriateness_review_summary.csv` | 完了率、BLOCKED、主張極性レビュー率 | generatorで再生成 |
| `appropriateness_review_manifest.json` | 正本commit、件数、SHA-256、保証境界 | generatorで再生成 |
| `AppropriatenessGenerated.lean` | 台帳件数とfail-closed完了ゲート | generatorで再生成 |
| `appropriateness_review_application_map.csv` | 書換え・限定・削除・矛盾対応の旧文hash、target文ID、target file hash、反映証跡 | reviewerが編集。generatorは上書きしない |
| `appropriateness_relation_evidence.csv` | NOT・IMPLIES関係そのものの根拠、仕様契約、または書換えによる解消 | reviewerが編集。generatorは上書きしない |
| `appropriateness_sheet_export.csv` | Google Sheetsへ一方向同期する全678行の決定的export | generatorで再生成 |
| `appropriateness_sheet_readback.json` | 同期後CSVのreadback hash、remote revision、正本commit | readback照合後だけ`VERIFIED`へ更新 |
| `appropriateness_post_review_recalculation.json` | 新しいdocs commitで再計算したcoverage・E2E・外的真偽のsnapshot証跡 | generatorで再生成 |

`decisions.csv` とapplication/relation台帳は手動台帳です。初回だけ `--initialize-decisions` でdecision台帳を作成し、以後は通常実行で保持します。gold fixtureも既存の校正値をsentence ID単位で保持し、通常再生成でPENDINGへ戻しません。文面変更でsentence IDが変わった場合は、旧行を黙って流用せず、application mapで旧ID、旧文hash、新ID、新本文hash、target docs commitを対応付けます。

## 3. 八つの判定軸

| 軸 | 合格条件 |
|---|---|
| 権威性 | 主張種別に合う一次資料であり、公開主体、版、対象範囲を特定できる |
| 直接性 | URLだけでなく、section、page、table、figure、equation、API heading等で当該主張を再特定できる |
| 網羅性 | 主体、対象、条件、例外、数値、比較、否定、因果・含意を資料が欠かさず支持する |
| 主張極性 | 著者主張、定義・仕様、実験結果、比較器、背景引用、限界、仮説を区別する |
| スコープ | データ、タスク、版、期間、region、条件を資料より一般化しない |
| モダリティ | 「できる」「有効」「常に」「必要」「推奨」等を資料より強くしない |
| 教材妥当性 | 規範と経験的事実を区別し、初学者へ誤った一般則を与えない |
| 形式化妥当性 | 主語、条件、関係、否定、例外を保存し、空虚な含意にしない |

## 4. 判定値

`appropriateness_verdict` は次のいずれかに限定します。

| 判定 | 使用条件 | 後続処理 |
|---|---|---|
| `APPROPRIATE_SUPPORTED` | 現在の文を一次資料の特定箇所が直接支持する | locator、主張役割、Lean境界を確定 |
| `APPROPRIATE_NORMATIVE` | 工学的推奨・定義であり、経験的事実の導出を主張しない | 判断基準と例外を本文で明示 |
| `APPROPRIATE_AFTER_QUALIFICATION` | 条件、対象、版、確率表現を限定すれば支持できる | 修正文を反映して再生成 |
| `REWRITE_REQUIRED` | 複数主張、曖昧な主語、過剰な因果・一般化がある | 分割・再構成して根拠を再割当 |
| `REMOVE_OR_REPLACE` | 信頼できる一次資料で支持できず、教材上も不要 | 削除または支持可能な記述へ置換 |
| `CONTRADICTED` | 一次資料または正本内の契約と矛盾する | 本文修正と反例fixtureを必須化 |
| `BLOCKED` | 資料未入手、版不明、専門判断または独立レビュー待ち | owner、期限、解除条件を必須化 |

初期化時の678行はすべて `BLOCKED` です。これは未レビュー行を自動的に「適切」と扱わないためのfail-closed状態であり、最終判定ではありません。

## 5. 一文ごとの手順

1. `sentence_id`、正本commit、ファイル、行、原文がqueueと一致することを確認します。
2. 主張を主体、対象、関係、条件、例外、時点・版、量・比較、極性、モダリティへ分解します。
3. 原論文、公式proceedings、標準本文、公式仕様、API reference、release notesから一次資料を選びます。
4. URLだけでなく具体的locatorを記録します。同じ章・ファイルにあるという理由だけの候補割当は直接根拠にしません。
5. 資料内の役割を `AUTHOR_CLAIM`、`DEFINITION_OR_SPEC`、`EMPIRICAL_RESULT`、`COMPARATOR_DESCRIPTION`、`BACKGROUND_CITATION`、`LIMITATION`、`HYPOTHESIS` のいずれかで記録します。
6. 全atomと関係を確認します。資料にないことから `NOT` を導かず、前件と後件の個別支持だけから `IMPLIES` を導きません。
7. 外的保証を `SOURCE_ASSERTED`、`REPRODUCED`、`OFFICIAL_SPEC`、`RUNTIME_VERIFIED`、`NOT_APPLICABLE`、`UNVERIFIED` のいずれかで記録します。
8. 根拠へ合わせて本文を限定、分割、規範化、削除または置換してから形式化します。
9. Lean定理、仮定、`#print axioms` の結果を記録します。一次資料の内容を独自axiomにしません。
10. 一次レビューとは別の担当者が、一次資料・日本語意味・領域知識を再確認します。reviewer識別子はNFKC正規化、前後空白除去、casefold後に比較し、一致する二名は別担当と数えません。両レビュー日はISO `YYYY-MM-DD` で記録し、独立レビュー日は一次レビュー日以降、最終状態は厳密に `FINAL_TWO_REVIEWER_APPROVED` とします。

## 6. 校正とbatch運用

最初に24文の校正集合を二名が独立に判定します。不一致は単純な多数決で消さず、権威性、直接性、網羅性、極性、スコープ、モダリティ、教材妥当性、形式化妥当性のどこで判断が分かれたかを記録します。基準を修正した場合は、校正集合を再判定します。

本レビューは25〜50文を一batchとします。順序はP0、P1、P2です。P0には安全性、個人情報、副作用、数値・性能、強いモダリティ、NOT、IMPLIES、公式製品契約を含めます。batch完了ごとに、本文変更、台帳、Lean、検査結果を同じPRへ含めます。

## 7. 完了ゲート

次をすべて満たすまではIssue #35を閉じません。

- 678文すべてが `BLOCKED` 以外で、二名の異なるreviewerと日付を持つ
- `APPROPRIATE_SUPPORTED` が一次資料ID、具体的locator、主張役割を持つ
- 632件の制御語彙射影が主張役割と独立レビューを持つ
- 書換え、限定、削除、矛盾の各actionが本文へ反映済みである
- NOT・IMPLIESの関係自体に根拠または仕様契約がある
- Lean公開定理のbuildとaxiom監査が通り、含意の前件に充足可能性fixtureがある
- Google Sheetsが同じ正本commitの全行、理由、action、残件を表示する
- End-to-End保証率と外的真偽確認率を実際に条件を満たした件数だけで再計算する
- gold fixture全行が異なる二名のreviewerとISO日付を持つ
- 書換え・限定・削除・矛盾対応の全行がtarget docs上の本文hashまたは削除確認へ対応する
- Sheet readback CSVがrepository exportと行単位で一致し、remote revisionを記録する

PythonとLeanは、台帳の完全性と完了判定の整合性だけを検査します。reviewerの判断そのものを正しいと証明するものではありません。

## 8. 再生成と検査

```bash
python tools/formal_review/generate_appropriateness_review.py
python tools/formal_review/check_appropriateness_review.py
python tools/formal_review/audit_lean_trust.py formal/lean
python tools/formal_review/check_lean_traceability.py \
  formal/lean/traceability.json --lean-root formal/lean
cd formal/lean && lake build
```

Google Sheetsへ`appropriateness_sheet_export.csv`を同期した後は、同じ列順のreadback CSVを`formal/review-data/`へ保存し、次でremote revisionと一致を記録します。

```bash
python tools/formal_review/record_appropriateness_sheet_readback.py \
  formal/review-data/appropriateness_sheet_readback.csv \
  --remote-revision-id <GOOGLE_DRIVE_REVISION_ID>
python tools/formal_review/generate_appropriateness_review.py
python tools/formal_review/check_appropriateness_review.py
```

初回の手動台帳作成だけは、通常の再生成とは分けて次を実行します。

```bash
python tools/formal_review/generate_appropriateness_review.py --initialize-decisions
```

最終判定を取り込んだ後、action/relation補助台帳のPENDING行を初期化する場合は次を一度実行し、本文反映と関係根拠を人手で確定します。既存行は保持されます。

```bash
python tools/formal_review/generate_appropriateness_review.py --initialize-wave4-ledgers
```
