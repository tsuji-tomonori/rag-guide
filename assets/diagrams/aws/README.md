# AWS構成図（draw.io）

ハンズオンの物理・論理構成2点と、本文第10章の図10-1〜10-11を管理する。
添付の `aws-architecture-drawio` スキル（2026-09-05版）に基づく。

## 編集と再生成

- 編集可能な原本：このディレクトリの `.drawio`。各サービス、ラベル、接続線を個別に編集できる。
- 再生成用の明示レイアウト：`tools/aws-diagrams/build.py`。一括修正ではこちらを変更し、原本も再生成する。
- SVG：同名の `.svg`。外部画像参照なし。文字・線はベクトル、AWSアイコンは配布元PNGを埋め込む。
- PDF用PNG：`assets/images/v4/44-aws-*.png`〜`54-aws-*.png`。横2400px。本文Markdownから参照し、既存のPDFビルドがグレースケール化する。
- ハンズオン：`handson/aws-rag/public/images/` のSVGを表示し、`public/diagrams/` の原本をダウンロードできる。

必要なもの：Python 3、Pillow、Fontconfig、Noto Sans CJK JP、Inkscape、Node.js。
`build.py`はFontconfigでNoto Sans CJK JPを解決し、Pillowで文字幅を計測する。

```sh
cd tools/aws-diagrams
npm ci
npx playwright install firefox
npm run generate
```

`build.py`は既存原本を再生成する。draw.ioで直接編集した場合、再生成前に変更を`build.py`へ反映する。
`export.mjs`だけを実行すれば、編集済み原本からSVG・PNGを再出力できる。

## 意味と前提

物理図はAPIの呼び出し元を示し、通常の応答を省略する。IAMはリージョン外のグローバルリソースとして描く。
ハンズオンは東京リージョンのCustomer-managed Knowledge Base、Titan Text Embeddings V2、S3 Vectors、Nova Lite。
手順7〜8では受講者が根拠を整形してConverseを呼ぶ。手順9の一体型経路は論理図で別に示す。

第10章の図は論理フロー・管理範囲・選定比較である。VPC・AZ・Subnet等の未指定構成は追加していない。
複数行の図は処理の段階を分けて示し、同一リソースの再登場は複製リソースを意味しない。
ベクトルストアの例としてS3 Vectorsを描く図と、OpenSearchとの選択を比較する図を分ける。
Bedrockの同じサービスアイコンを使うKB・埋め込み・再順位付け・生成は、ラベルで機能を区別する。
AgentCoreの検索コネクター図はManaged Knowledge Baseの例。通常RAGではアプリから検索と生成を別々に呼ぶ。

## 出典

- 公式アイコンの利用案内：<https://aws.amazon.com/architecture/icons/>
- AWS管理の配布リポジトリ：<https://github.com/awslabs/aws-icons-for-plantuml>
- 取得したアイコンのコミットとblob SHA：`icons/sources.json`。配布物のライセンス：`icons/LICENSE`。
- インストール済みのdraw.ioライブラリに依存せず、配布元PNGを埋め込む。最新版という主張はしない。
- 参考パターン：添付スキルのA001（段階とラベル）、A003（本流と権限の分離）、A008（境界と親子関係）。参考図の構成そのものを転用していない。

意味確認に利用したAWS公式資料（2026-09-05）：

- <https://docs.aws.amazon.com/bedrock/latest/userguide/kb-how-it-works.html>
- <https://docs.aws.amazon.com/bedrock/latest/userguide/kb-build-managed.html>
- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-bedrock-kb.html>
- <https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/gateway-target-connector-managed-kb.html>

## 検証範囲

`validation.json`はmxGraph 4.2.2によるXML読み込み・接続端点・実際のグループ移動の検証結果。
SVGは同エンジンの `mxImageExport` で書き出し、InkscapeでPNG化する。
draw.io Desktop GUIでの手動操作、PNGへの編集XML埋め込みは未実施。再編集には付属の `.drawio` を使う。
機械検証と図・ページの目視確認は別に扱い、実施結果はPRへ記録する。
