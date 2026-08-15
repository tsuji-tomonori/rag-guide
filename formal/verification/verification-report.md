# Quint検証実行記録

## 結果

- 検証日: 2026-08-15 JST
- 対象commit: `63148eae30da71db0fb8769e59ed75680c8c7692`
- Quint: 0.32.0
- Apalache: 0.56.1

この記録の元モデルは正本の横断契約を検査します。現行正本への再固定、BM25等の具体技術モデル、センテンス一次資料カバレッジ、Lean 4証明は[具体技術・一次資料カバレッジ・Lean 4検証記録](evidence-verification-report.md)に追加しました。

| レイヤー | 条件 | 結果 |
|---|---|---|
| 型検査 | `quint typecheck` | 合格（exit 0） |
| 決定的シナリオ | TypeScript backend、seed `0x726167` | 19/19合格 |
| ランダムトレース | 5,000 samples、12 steps、同seed | 違反なし、最大trace長13 |
| 境界付き状態空間検査 | Apalache、`allInvariants`、12 steps | 違反なし、18 verification conditions |

`invariants.csv` の26件はレビュー用の粒度です。モデルでは共通する述語をまとめているため、Apalacheが生成した検証条件は18件です。

## 再現コマンド

```bash
npx --yes @informalsystems/quint typecheck formal/quint/rag_pipeline.qnt

npx --yes @informalsystems/quint test formal/quint/rag_pipeline.qnt \
  --backend=typescript --max-samples=1 --seed=0x726167

npx --yes @informalsystems/quint run formal/quint/rag_pipeline.qnt \
  --backend=typescript --invariant=allInvariants \
  --max-samples=5000 --max-steps=12 --seed=0x726167

npx --yes @informalsystems/quint verify formal/quint/rag_pipeline.qnt \
  --invariant=allInvariants --max-steps=12
```

`verify` はApalacheを使用します。自動取得できない環境ではApalache 0.56.1をQuintのhomeディレクトリへ配置してください。

## 検査対象

モデルは次の状態遷移を含みます。

- catalog、ingestion、provenance、embedding/index互換性
- query intent、ACL、tenant、削除、質問時点の版
- evidence選択、十分性、矛盾、完全回答・限定回答・保留、回答状態と理由の整合
- grounding、claim commit、citation、audit linkage
- 取得文書中の命令、利用者意図、tool policy、人承認、副作用実行
- publish gate、release、rollback、権限剥奪による選択済みEvidenceの無効化

## 検証中に検出し修正したモデル不具合

初回のランダム検査で、read-only tool実行後に副作用requestへ切り替えた際、`toolExecuted` が前状態から残る反例を検出しました。request生成actionで `humanApproved` と `toolExecuted` を明示的にresetするようモデルを修正し、上表の全検査を再実行しています。この修正はモデルの状態衛生に関するもので、ガイド本文への変更ではありません。

回答状態と理由の対応を追加した後の境界付き検査では、回答後の権限剥奪で`responseKind`だけが`none`へ戻り、`responseReason`が残る反例を検出しました。`revokeAccess`で両方を同時にresetし、決定的19シナリオ、5,000トレース、12 stepsの境界付き検査を再実行しています。

## 解釈上の境界

「違反なし」は、この有限抽象モデルと指定した深さ・標本内で不変条件を破る実行が見つからなかったことを意味します。自然言語正本の完全な意味、一次資料の全命題、運用環境の実装を証明するものではありません。特にEvidence sufficiency、release compatibility、query intent preservationの判定規則は正本で具体化が必要です。
