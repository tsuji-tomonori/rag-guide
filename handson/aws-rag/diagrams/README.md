# AWS構成図

`*.drawio` は diagrams.net / Draw.io で編集する正本です。公開ページでは、同じ構成をSVGへ書き出したファイルを `public/images/` から読み込みます。

| 図 | Draw.io編集元 | 公開用SVG |
|---|---|---|
| 物理構成 | `aws-rag-physical-architecture.drawio` | `../public/images/aws-rag-physical-architecture.svg` |
| 論理構成 | `aws-rag-logical-architecture.drawio` | `../public/images/aws-rag-logical-architecture.svg` |

図を変更した場合は、Draw.ioでSVGを書き出し、公開用SVGを更新してください。論理構成図では、交差する対応線を使わず、各論理カード内の `AWS:` タグで対応リソースを示しています。

AWSサービスのアイコンは、[AWS Architecture Icons](https://aws.amazon.com/architecture/icons/) の公式アイコンパッケージから必要なSVGだけを同梱しています。公開SVGは `public/images/aws-icons/` の相対パスを参照するため、GitHub Pagesのサブパスでも外部URLに依存せず表示できます。

Knowledge Bases、Retrieve、Converse、Titan Embeddingsは、公式パッケージに専用のサービスアイコンがないため、Amazon Bedrockの公式サービスアイコンで表現しています。
