# AWS構成図

`*.drawio` は diagrams.net / Draw.io で編集する正本です。公開ページでは、同じ構成をSVGへ書き出したファイルを `public/images/` から読み込みます。

| 図 | Draw.io編集元 | 公開用SVG |
|---|---|---|
| 物理構成 | `aws-rag-physical-architecture.drawio` | `../public/images/aws-rag-physical-architecture.svg` |
| 論理構成 | `aws-rag-logical-architecture.drawio` | `../public/images/aws-rag-logical-architecture.svg` |

図を変更した場合は、Draw.ioでSVGを書き出し、公開用SVGを更新してください。論理構成図では、交差する対応線を使わず、各論理カード内の `AWS:` タグで対応リソースを示しています。

Draw.io正本のAWSサービス／AWS Cloud枠は、Draw.ioに組み込まれているAWS4ライブラリ（`mxgraph.aws4.resourceIcon` と `mxgraph.aws4.group`）を使用しています。公開用SVGもアイコンをSVG内へ埋め込んだ自己完結形式にしているため、GitHub Pagesやraw表示で相対パスが解決されない場合でも壊れません。埋め込み元の個別アイコンファイルはリポジトリに残していません。

Knowledge Bases、Retrieve、Converse、Titan Embeddingsは、公式パッケージに専用のサービスアイコンがないため、Amazon Bedrockの公式サービスアイコンで表現しています。

物理構成では、Knowledge Basesを文書の取り込み・parse・chunking、Bedrockを埋め込みモデル／生成モデル、S3 Vectorsをベクトルbucket／indexとして分離しています。Retrieveの結果からEvidence Setを作成するのは呼び出し元であり、S3 VectorsからBedrock Converseへ直接つながる構成ではありません。
