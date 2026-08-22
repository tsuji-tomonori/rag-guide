# 第10章をAWSのRAG工程別構成へ再編する

## 背景

第10章は要件合意、構成理解、設計、構築、API確認、片付けというハンズオン順で構成されていた。
利用者から、内部向けの記載方針を削除し、AWSサービスの概要、選択方法、設定値をRAGの工程ごとに説明する構成へ変更する依頼があった。
また、横長で細かい表が印刷時に縮小されて読みにくいという指摘があった。

## 目的

- 第10章を全体構成、Pre-retrieval、Retrieval、Post-retrieval、Generationの5節へ再編する。
- 各工程で使うAWSサービス、選択基準、具体設定、検証方法を説明する。
- 内部向けの調査・記載方針を本文へ残さない。
- 第10章の横長表を、本文、YAML、コード例へ置き換える。

## タスク種別

`ドキュメント更新`

## 対象範囲

- `docs/10.AWSで設計・実装する/`の序文と10.1〜10.6
- `docs/10.AWSで設計・実装する/samples/rag_api.py`
- `docs/9.失敗パターンに応じて高度化する/序文.md`
- `docs/章構成.md`
- `docs/索引.md`
- 第10章のPDF生成結果

対象外:

- 第1章から第9章の本文変更
- AWS上での実リソース作成と課金を伴うend-to-end実行
- 研修資料、PPTX、画像制作物の変更

## 実施計画

1. 第10章を5節の工程別構成へ改名・再編する。
2. 各節へAWSサービス概要、選択条件、主要設定、実行例、完了判定を追加する。
3. 第10章のMarkdown tableを廃止する。
4. APIサンプルへ工程別modeと任意reranker設定を追加する。
5. 内部向け文言、旧ファイル参照、旧節番号が残っていないか確認する。
6. Python構文、Bedrock request shape、PDF build、組版を検証する。
7. 作業レポート、commit、push、PR、受け入れ条件コメント、セルフレビューコメントを作成する。

## ドキュメント保守計画

- 第10章の序文から5節へ直接移動できるlinkを維持する。
- AWS固有仕様は公式ドキュメントへのlinkと確認日を本文へ示す。
- 設定値はbaselineと比較開始値を区別し、評価で決定する手順を書く。
- 片付けとtroubleshootingは10.5へ統合し、旧10.6を削除する。

## 受け入れ条件

- [x] 第10章が10.1全体構成、10.2 Pre-retrieval、10.3 Retrieval、10.4 Post-retrieval、10.5 Generationの順である。
- [x] 各工程にAWSサービス概要、選択方法、具体設定、検証方法がある。
- [x] 指定された内部向け記載方針が本文に残っていない。
- [x] 第10章にMarkdown tableが残っていない。
- [x] `rag_api.py`が`retrieve`、`generate`、`both`を選べ、reranker設定をrequestへ反映できる。
- [x] PDF buildが成功し、10.1〜10.5の章番号と組版にoverfull/underfullがない。
- [x] PRに今回の変更以外の既存未関連変更が含まれない。

## 検証計画

- `git diff --check`
- `pre-commit run --files <changed-files>`（利用可能な場合）
- `PYTHONDONTWRITEBYTECODE=1 python3 docs/10.AWSで設計・実装する/samples/rag_api.py --help`
- botocore serializerによる`Retrieve`と`RetrieveAndGenerate` request shape検証
- `make -C print`
- `rg`による旧節名、内部向け文言、Markdown table、LaTeX overfull/underfullの確認
- PDFの目次と第10章各節の目視確認

## PRレビュー観点

- AWSの現行仕様と本文が矛盾していないか。
- baselineの設定値と、本番で評価して決める値が区別されているか。
- Retrieval、Post-retrieval、Generationの責務が混ざっていないか。
- Guardrailsを文書ACLや根拠性の代替として説明していないか。
- 旧6節構成のlinkや参照が残っていないか。

## リスク

- AWS consoleのlabel、model対応region、quotaは将来変更される。
- AWS実アカウントを使うend-to-end検証は課金と権限が必要なため、今回のlocal検証には含めない。
- サンプル設定値は小規模な検証用であり、本番値は評価結果から決める必要がある。

## 状態

`done`

## Pull Request

- PR: https://github.com/tsuji-tomonori/rag-guide/pull/55
- 受け入れ条件確認コメント: https://github.com/tsuji-tomonori/rag-guide/pull/55#issuecomment-5377234682
- セルフレビューコメント: https://github.com/tsuji-tomonori/rag-guide/pull/55#issuecomment-5377235057
