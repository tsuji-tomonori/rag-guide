# AWS構成図

公開ページの物理構成・論理構成は、レスポンシブなHTMLとして
`../src/components/ArchitectureOverview.astro` に実装しています。表示内容を変更する場合は、このコンポーネントを正本として更新してください。

| 図 | 公開ページの正本 | 旧静的ファイル |
|---|---|---|
| 物理構成 | `../src/components/ArchitectureOverview.astro` | `aws-rag-physical-architecture.drawio` / `../public/images/aws-rag-physical-architecture.svg` |
| 論理構成 | `../src/components/ArchitectureOverview.astro` | `aws-rag-logical-architecture.drawio` / `../public/images/aws-rag-logical-architecture.svg` |

旧Draw.io／SVGは、過去の直接リンクと編集履歴を壊さないために残していますが、公開ページからは読み込みません。新しい構成図はテキストを画像化せず、画面幅に合わせて組み替わるため、デスクトップ・モバイルの双方で内容を読めます。

物理構成では、S3を文書bucket、Knowledge Basesを取り込み・chunk化・検索、Titan Text Embeddings V2を埋め込みモデル、S3 Vectorsをvector bucket／indexとして分離しています。

`Retrieve`の結果からEvidence Setを作成するのは呼び出し元です。S3 VectorsからBedrock Converseへ直接つながる構成ではありません。手順9の`RetrieveAndGenerate`は、同じKnowledge Baseに対する一体型の比較経路として示しています。
