# 図49: Real-time Layerの検索フロー

- 出力先: `assets/images/v4/49-aws-realtime-search-flow.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.3.Real-time Layerで検索する.md`
- 挿入位置: 節の導入直後
- 代替テキスト: Real-time Layerで認証済み質問から根拠候補を取得する流れ
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の工程図。図44をスタイル参照とし、同じ配色、カード、線幅、余白を使う。タイトルは「Real-time Layer：質問から根拠候補まで」。

上段を「認証済み利用者」→「質問理解」→「Query・Filter」→「検索」→「根拠候補」→「Rerank・Evidence」と接続する。「検索」の下に「Retrieve」「QueryVectors」「OpenSearch Query」の三つの経路を置く。「根拠候補」の下に「Location・Metadata・Score」と表示する。

根拠候補の直後に縦の点線と「Retrieval評価」を置く。最下部に「権限をFilterへ反映し、検索と生成を分けて測る」と表示する。生成後の回答工程は加えない。AWS公式ロゴ、写真、人物、グラデーション、交差する矢印、細かい脚注を使わない。
