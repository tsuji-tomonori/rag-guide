---
name: security-access-control-reviewer
description: API route、middleware、RBAC、所有者境界、外部公開設定、機微データ schema/store の変更時に、認証・認可抜けをレビューして再発防止観点を整理する。
---

# Security Access-Control Reviewer

## 目的

Public API から機微データの読み取り、改ざん、管理操作ができる状態を防ぐ。特に新規 route と store 操作の追加時に、認証、role-based authorization、所有者・担当者境界、外部公開設定、返却 schema をまとめて確認する。

## 起動条件

次の変更やレビューではこの skill を使う。

- API route、middleware、OpenAPI 定義、request/response schema の追加・変更。
- `authMiddleware`、`requirePermission`、`authorization.ts`、Cognito group、local auth 設定の変更。
- list/get/update/delete を行う store、repository、service method の追加・変更。
- API Gateway、CloudFront、CORS、Lambda 環境変数など外部公開・認証境界に関係する IaC 変更。
- セキュリティ finding、Aardvark finding、権限漏れ、機微データ漏えい、改ざんリスクに関する作業。

## レビューチェック

1. Route は `authMiddleware` などの認証境界に含まれているか。
2. Route handler は操作に合う `requirePermission` を呼んでいるか。
3. 共有管理操作では role が十分に限定されているか。
4. 利用者本人向け操作では userId、ownerId、assignee、department などの所有者・担当者制約が service/store まで維持されているか。
5. `list`、`get`、`scan`、`update`、`delete` が caller scope なしで全件・任意 ID に作用していないか。
6. Response schema に requester、source chat、answer、references、internal memo、debug trace、署名付き URL、個人・部署情報などの機微フィールドが含まれる場合、必要最小限の permission が要求されているか。
7. Public endpoint として意図する場合、返却データが非機微である根拠、rate limit や濫用対策、監査ログの有無が説明されているか。
8. IaC が public route を公開する場合、アプリ側の認証設定が本番で有効化されるか、または authorizer などの代替境界があるか。
9. `AUTH_ENABLED=false` や local user の全権限挙動が本番・社内検証環境に混入しないか。
10. 回帰防止として unit/contract/static test、lint、CI、ドキュメント受け入れ条件のいずれかに落とし込まれているか。

## MemoRAG 固有の静的ガード

- `apps/api/src/app.ts` の保護対象 route を変更したら、`apps/api/src/security/access-control-policy.test.ts` の route policy を同時に更新する。
- `/questions` 系 route は問い合わせ ticket の requester、source chat、answer、references、internal memo を扱うため、permission 変更や route 追加時に必ず明示レビューする。
- `npm run test -w @memorag-mvp/api` を実行し、静的 policy と runtime RBAC contract の両方を通す。

## 出力に含めること

- 追加・変更した route と必要 permission。
- 所有者・担当者境界が必要かどうかの判断。
- 機微フィールドを返す場合の根拠。
- 実行した静的解析・テスト。
- 未対応の多層防御、authorizer、ownership 強化などの残リスク。
