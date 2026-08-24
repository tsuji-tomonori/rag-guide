# 図50: Evidence Setへの整形

- 出力先: `assets/images/v4/50-aws-evidence-shaping-flow.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.4.Evidence Setを作り回答する.md`
- 挿入位置: 「検索候補をEvidence Setへ変換する」の冒頭
- 代替テキスト: 検索候補をRerankと業務規則でEvidence Setへ整える流れ
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の漏斗型工程図。図44をスタイル参照とし、オフホワイト、ディープネイビー、くすんだ青、淡いブルーグレーだけを使う。タイトルは「検索候補をEvidence Setへ整える」。

左から右へ幅が狭くなる流れとして、次の五段階を配置する。

1. 「候補取得／Top-k・Filter」
2. 「Rerank／関連度で再順位」
3. 「業務選別／重複・版・信頼度」
4. 「Evidence Set／採否理由・矛盾・回答可否」
5. 「Context整形／圧縮・順序・Token」

業務選別から「不採用理由を記録」へ細い分岐を出す。最下部に「生成へ渡す：本文・Source・版・Citation ID」と表示する。AWS公式ロゴ、写真、人物、グラデーション、架空のMetric、交差する矢印を使わない。
