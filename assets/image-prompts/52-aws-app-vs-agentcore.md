# 図52: 通常RAGとAgentCore

- 出力先: `assets/images/v4/52-aws-app-vs-agentcore.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.5.RAGアプリケーションとAgentCoreを選ぶ.md`
- 挿入位置: 節の導入直後
- 代替テキスト: 通常のRAGアプリケーションとAgentCoreを使うAgentic RAGを比較した図
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の二列比較図。図44をスタイル参照とし、オフホワイト、ディープネイビー、くすんだ青、淡いブルーグレーだけを使う。タイトルは「一巡のRAGか、Agentic RAGか」。

左列は「通常アプリケーション／一巡で完了」とし、「認証」→「Lambda / ECS / EKS」→「Retrieve」→「Evidence」→「Converse」→「回答」を上から下へ接続する。

右列は「AgentCore／複数Step・Tool」とし、中央の「Runtime」へ「Identity」「Gateway・Tool」「Memory・Policy」「Observability」を接続し、「回答・業務実行」へ出力する。

最下部に「Tool・Memory・反復が不要なら通常構成から始める」と表示する。AWS公式ロゴ、写真、人物、グラデーション、交差する矢印、細かい脚注を使わない。
