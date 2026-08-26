# 図51: 二つの回答生成経路

- 出力先: `assets/images/v4/51-aws-generation-control-paths.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.4.Evidence Setを作り回答する.md`
- 挿入位置: 「生成経路を選ぶ」の冒頭
- 代替テキスト: RetrieveAndGenerateとRetrieveからEvidence Setを経てConverseへ渡す経路を比較した図
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の二段比較図。図44をスタイル参照とし、同じ配色、書体、余白を使う。タイトルは「回答生成は二つの経路から選ぶ」。

上段は「標準経路」とし、「RetrieveAndGenerate」→「回答＋Citation」を接続する。「短い構成」「Customer-managed KB」と表示する。

下段は「分離経路」とし、「Retrieve」→「Evidence Set」→「Converse」→「回答・引用・保留」を接続する。「制御しやすい」「Managed / Customer-managed KB」と表示する。下段の右側だけに「Citationを再検証」を接続する。

最下部に「Guardrails：入力と生成結果を評価　※Reference本文・ACLの代替ではない」と表示する。AWS公式ロゴ、写真、人物、グラデーション、交差する矢印を使わない。
