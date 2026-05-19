# failure-report skill pack

このフォルダは、障害発生時に分析可能な半構造レポートを出力するための skill pack です。

## 内容

- `SKILL.md` — スキル本体
- `schema/failure_report_schema.json` — JSON Schema
- `templates/failure_report_template.md` — 空テンプレート
- `examples/failure_report_example.md` — 記入例

## 使い方

1. `SKILL.md` を対象環境の skill フォルダに配置する。
2. 障害、テスト失敗、成果物不備、ツールエラーが発生したときにこのスキルを参照する。
3. レポート本文を `reports/bugs/YYYYMMDD-HHMM-<incident-summary>.md` に保存する。ディレクトリがなければ作成する。
4. 出力末尾の `json failure_report` ブロックをログ、チケット、表計算、BI などに取り込む。
5. `schema/failure_report_schema.json` で機械検証する。
