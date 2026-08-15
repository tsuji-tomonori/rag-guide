# 横断契約と受入fixture

このディレクトリは、ガイド本文で定義した横断契約を機械可読にしたものです。本文が正本であり、JSON Schemaは実装者が同じ意味を再現するための実行可能な境界です。

| Finding | 本文 | Schema | Fixture |
|---|---|---|---|
| FND-001 / FND-005 | 4.6、8.7.3 | `runtime-authorization.schema.json` | `fixtures/runtime-authorization.json` |
| FND-002 / FND-004 | 5.5.4、6.3 | `evidence-sufficiency.schema.json` | `fixtures/evidence-sufficiency.json` |
| FND-003 | 6.8、8.1.4、9.9 | `action-policy.schema.json` | `fixtures/action-policy.json` |
| FND-006 | 3.8.2、7.8.3、8.7 | `release-manifest.schema.json` | `fixtures/release-manifest.json` |
| FND-007 | 4.2.5、9.2.2 | `resolved-query.schema.json` | `fixtures/resolved-query.json` |
| FND-008 | 8.4.1 | `trace-relations.schema.json` | `fixtures/trace-relations.json` |

検証は次のコマンドで実行します。

```bash
python formal/contracts/validate_contracts.py
```

この検査は外部サービスの実装を証明しません。Schemaの必須項目、本文で定義した決定順序、正常・異常・境界・競合・rollback fixtureの期待結果が一致することを確認します。
