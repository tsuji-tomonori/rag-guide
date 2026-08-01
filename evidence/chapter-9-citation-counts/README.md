# 第9章の引用件数証跡

第9章で引用件数のように時間とともに変動する値を確認するときの証跡を保存します。本文への掲載可否は件数だけで決めず、独立研究、対象タスク、比較条件、査読状況と合わせて判断します。

## 記録単位

一つの論文を一つの取得元と一つの検索条件で確認した結果を1行にします。同じ論文でも、Semantic Scholar、OpenAlex、Google Scholarなど取得元が異なる場合は別行にします。著者統合、会議版とプレプリント版の統合、自己引用の扱いが異なるため、異なる取得元の値を混ぜません。

`snapshot.schema.csv`の列を使い、少なくとも次を残します。

- `evidence_id`：変更されない証跡ID
- `checked_at_utc`：UTCの取得日時
- `provider`と`provider_url`：取得元と入口
- `query`：実際に送った検索式またはrequest
- `canonical_id_type`と`canonical_id`：DOI、ACL Anthology ID、OpenReview ID、arXiv IDなど
- `title`と`version`：確認した版
- `citation_count`：取得元が返した値
- `raw_response_path`：保存した生応答へのリポジトリ相対パス
- `raw_response_sha256`：生応答のSHA-256
- `notes`：版統合、重複、取得制約など

## 生応答

生応答は `raw/YYYY-MM-DD/` 配下へ保存します。HTMLしか取得できない場合も、加工前のHTMLと取得条件を保存します。個人情報、認証情報、利用規約上保存できない内容は持ち込まず、その場合は値を本文へ掲載しません。

```sh
sha256sum evidence/chapter-9-citation-counts/raw/YYYY-MM-DD/<file>
```

## 完了条件

引用件数を本文またはレビューへ記載できるのは、次をすべて満たす場合だけです。

1. canonical IDで対象論文を一意に識別できる。
2. 取得日時、取得元、検索式を再現できる。
3. 生応答とSHA-256が保存されている。
4. 会議版、プレプリント版、重複レコードの扱いを説明できる。
5. 件数を方式間の優劣や有効性の唯一の根拠にしていない。
