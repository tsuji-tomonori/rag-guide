# Quint・Apalache検証実行記録

## 実行条件

- 検証日: 2026-08-15 JST
- 対象commit: `f0c3e0f48309e2d1c2684dd6de3a5ac66a6e3111`
- Quint: 0.32.0
- Apalache: 0.56.1

| モデル | 型検査 | 決定的シナリオ | ランダム実行 | Apalache |
|---|---:|---:|---:|---:|
| `rag_pipeline.qnt` | 合格 | 23/23 | 5,000標本・12 stepで違反なし | 3 stepで違反なし |
| `retrieval_techniques.qnt` | 合格 | 14/14 | 5,000標本・12 stepで違反なし | 3 stepで違反なし |

`rag_pipeline.qnt`は、認可、tenant、削除・失効、来歴、時点・版、query intent、Evidence sufficiency、矛盾、完全・限定・保留回答、grounding、citation、tool承認、release、rollback、trace IDを検査します。横断契約は`formal/contracts/`のschemaとfixture、および`CrossCuttingContracts.lean`へ対応します。

ランダム実行では、公開済みreleaseと次候補の互換性を同じ状態で表していた反例を検出しました。公開済みの互換性を`publishedReleaseCompatible`へ分離し、候補を構成し直すとrelease gateが解除されるよう修正した後、決定的シナリオ、ランダム実行、Apalacheを再実行しています。

## 再現コマンド

```bash
npx --yes @informalsystems/quint@0.32.0 typecheck formal/quint/rag_pipeline.qnt
npx --yes @informalsystems/quint@0.32.0 test formal/quint/rag_pipeline.qnt \
  --backend=typescript --max-samples=1 --seed=0x726167
npx --yes @informalsystems/quint@0.32.0 run formal/quint/rag_pipeline.qnt \
  --backend=typescript --invariant=allInvariants \
  --max-samples=5000 --max-steps=12 --seed=0x726167
npx --yes @informalsystems/quint@0.32.0 verify formal/quint/rag_pipeline.qnt \
  --invariant=allInvariants --max-steps=3

npx --yes @informalsystems/quint@0.32.0 typecheck formal/quint/retrieval_techniques.qnt
npx --yes @informalsystems/quint@0.32.0 test formal/quint/retrieval_techniques.qnt \
  --backend=typescript --max-samples=1 --seed=0x726167
npx --yes @informalsystems/quint@0.32.0 run formal/quint/retrieval_techniques.qnt \
  --backend=typescript --invariant=allInvariants \
  --max-samples=5000 --max-steps=12 --seed=0x726167
npx --yes @informalsystems/quint@0.32.0 verify formal/quint/retrieval_techniques.qnt \
  --invariant=allInvariants --max-steps=3
```

「違反なし」は、この有限抽象モデルと記載した深さ・標本内で反例が見つからなかったことを意味します。自然言語正本の完全な意味や本番実装を証明するものではありません。
