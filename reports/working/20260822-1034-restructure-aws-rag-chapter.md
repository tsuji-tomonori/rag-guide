# 第10章をAWSのRAG工程別構成へ再編する 作業レポート

## 依頼内容

- 本文から引用件数の再調査手順など、内部向けの記載方針を削除する。
- 第10章を全体構成、Pre-retrieval、Retrieval、Post-retrieval、Generationの5節へ再編する。
- 工程ごとに対応するAWSサービスの概要、選択方法、具体的な設定値まで説明する。
- 細かく読みにくい表を改善する。
- 変更をPull Requestとして提出する。

## 要件と判断

- 第10章はサービスの羅列ではなく、RAGの処理工程を主語にして構成した。
- Amazon Bedrock Knowledge Basesを最小構成の中心に置き、要件に応じてOpenSearch Serverless、Aurora PostgreSQL、Pinecone、Redis Enterprise Cloud、Lambdaへ差し替える判断軸を示した。
- 設定値は唯一の正解として扱わず、小規模検証のbaseline、比較候補、評価による決定手順を区別した。
- 横長のMarkdown tableは第10章から除去し、工程別の短い段落、箇条書き、YAML、CLI、Python例に置き換えた。
- 旧10.6のtroubleshootingと片付けはGeneration節へ統合した。

## 実施内容

- `10.1.全体構成.md`で工程とAWSサービスの対応、最小構成、共通のIAM・暗号化・監視設定、構築順序を説明した。
- `10.2.Pre-retrieval構成.md`でdata source、parser、chunking、embedding model、次元数、vector store、metadata、同期設定を説明した。
- `10.3.Retrieval構成.md`で`Retrieve`、search type、metadata filter、取得件数、評価と調整順序を説明した。
- `10.4.Post-retrieval構成.md`でreranker、重複排除、版管理、score threshold、context packingを説明した。
- `10.5.Generation構成.md`で生成API、model、prompt、推論parameter、Guardrails、citation評価、troubleshooting、片付けを説明した。
- `序文.md`を5節構成へ更新した。
- `samples/rag_api.py`へ`retrieve`、`generate`、`both`の実行modeと、任意のBedrock reranker設定を追加した。既定の`both`は従来の一括確認動作を維持する。
- 第9章序文から引用件数の再調査・保存手順を削除し、`docs/章構成.md`から内部向けの掲載基準を削除した。
- 旧節参照、旧10.6、Markdown tableを除去した。

## 変更成果物

- `docs/10.AWSで設計・実装する/10.1.全体構成.md`
- `docs/10.AWSで設計・実装する/10.2.Pre-retrieval構成.md`
- `docs/10.AWSで設計・実装する/10.3.Retrieval構成.md`
- `docs/10.AWSで設計・実装する/10.4.Post-retrieval構成.md`
- `docs/10.AWSで設計・実装する/10.5.Generation構成.md`
- `docs/10.AWSで設計・実装する/序文.md`
- `docs/10.AWSで設計・実装する/samples/rag_api.py`
- `docs/9.失敗パターンに応じて高度化する/序文.md`
- `docs/章構成.md`

## 検証結果

- `git diff --check`: 成功。
- `pre-commit run --files <changed-files>`: 全hook成功。
- `PYTHONDONTWRITEBYTECODE=1 python3 docs/10.AWSで設計・実装する/samples/rag_api.py --help`: 成功。3 modeを確認。
- botocore serializer: rerankerを含む`Retrieve`と`RetrieveAndGenerate`のrequest shapeを検証し成功。
- `make -C print`: 成功。278ページのPDFを生成。
- `rg`による確認: 第10章のMarkdown table、旧節名、旧10.6参照、内部向け文言はいずれも0件。
- LaTeX log: overfull/underfullはいずれも0件。
- PDF目視確認: 10.1〜10.5の見出し、改ページ、コード例、箇条書きの可読性を確認。

## 未実施事項と残存リスク

- AWS実アカウントでのリソース作成とend-to-end API実行は、権限と課金を伴うため実施していない。
- AWS consoleのlabel、利用可能なmodelとregion、quotaは変更され得る。本文の公式ドキュメントlinkと確認日を起点に、実装時点で再確認する必要がある。
- サンプル設定値は小規模検証の開始値であり、本番値は評価用質問、latency、cost、品質の測定結果から決定する。

## タスク適合度

`4.9 / 5.0`

依頼された構成変更、内部文言削除、サービス選択・設定値の具体化、表の可読性改善、local検証を完了した。AWS実アカウント上のend-to-end検証のみ、対象外として未実施である。
