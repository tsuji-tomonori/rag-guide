# 具体技術・一次資料カバレッジ・Lean 4検証記録

## 結果

- 検証日: 2026-08-15 JST
- 正本: `docs/` at `63148eae30da71db0fb8769e59ed75680c8c7692`
- Python: 3.12
- Lean: 4.30.0
- Quint: 0.32.0
- Apalache: 0.56.1

| 対象 | 結果 |
|---|---:|
| Markdownファイル | 99/99（100%） |
| 抽出したセンテンス相当行 | 4,732 |
| 一次資料が必要と分類したセンテンス | 1,174 |
| 信頼できる一次資料へ対応済み | 522（44.46%） |
| センテンス内リンクまたは具体技術原著へ直接対応 | 444（37.82%） |
| 未カバー | 652 |
| 具体技術 | 47 |
| 一次資料を持つ具体技術 | 47/47（100%） |
| Lean台帳へモデル化した具体技術 | 47/47（100%） |
| Quintで振る舞い契約を検査した中核技術 | 14/47（29.79%） |
| 適格一次資料 | 194/194（100%） |
| 要旨・仕様ページを直接検査 | 194/194（100%） |
| 明示的Abstractを直接検査 | 128/194（65.98%） |
| 形式命題の主張極性をcuration済み | 16/194（8.25%） |
| 主張と比較対象・背景言及の区別を要レビュー | 178/194（91.75%） |
| 制御文法へ形式化 | 39/1,174（3.32%） |
| source atomsからLeanで相対導出 | 39/1,174（3.32%） |
| Atom/AND/OR/IMPLIES/NOTへ論理分解 | 995/1,174（84.75%） |
| 一次資料候補を割当 | 1,174/1,174（100%） |
| 文献要旨の形式命題からLeanで条件付き導出 | 446/1,174（37.99%） |
| 含意・否定の関係構造が未証明 | 193/1,174（16.44%） |
| 自然言語全文のkernel-certified自動意味論証明 | 0/1,174（0%） |
| 経験的主張の独立再現 | 0/128（0%） |
| 公式製品仕様の実動作確認 | 0/26（0%） |

センテンスカバレッジの分母は、外部検証可能な技術説明、研究結果、定量値、原著・提案内容、公式製品仕様です。設計上の推奨、例、接続文、章構成などは分母へ入れていません。カバー済みは、適格な一次資料がセンテンス内、具体技術台帳、または同一段落から割り当てられた行です。一次資料候補の割当100%は、同一節・同一ファイル・同一章からのレビュー候補を含み、意味的に検証済みの直接カバレッジ44.46%を置き換えません。

## 具体技術の形式化

`formal/review-data/concrete_technologies.csv` は、Sparse retrievalやDense retrievalという大分類ではなく、BM25、SPLADE、DPR、ColBERT、HNSW、RRF、HyDE、ACORN、monoT5など47件を固有技術として登録します。各行は機構、表現、pipeline stage、一次資料、Lean台帳状態、Quintシナリオを追跡します。

`formal/quint/retrieval_techniques.qnt` は中核14技術について、疎・密・multi-vector、転置索引、候補生成、rank-only fusion、query hard constraint保存、filter-before-exposure、post-retrievalの出力部分集合などを別々の契約としてモデル化しました。

| 検査 | 条件 | 結果 |
|---|---|---|
| Quint型検査 | `typecheck` | 合格 |
| 決定的シナリオ | 14件、TypeScript backend | 14/14合格 |
| ランダムトレース | 5,000 samples、12 steps | 違反なし |
| 境界付き状態空間検査 | Apalache、3 steps | 違反なし、13 VCs |

初回ランダム検査では、一つの技術を設定した後に別技術へ再設定すると状態fieldが残る反例を検出しました。設定を初期状態から一度だけ許す`configureOnce`へ修正し、全検査を再実行しました。

## Lean 4で証明したこと

`formal/lean/RagEvidence/Generated.lean` は、根拠必須1,174行と具体技術47行をCSVから生成します。`SemanticGenerated.lean`は1,174行のsource/guide atom台帳を、`LiteratureGenerated.lean`は194文献の形式要旨命題と1,174文の論理式台帳を生成します。`Proofs.lean`、`SemanticProofs.lean`、`RetrievalTruth.lean`、`LiteratureLogic.lean`、`LiteratureProofs.lean`は次を証明し、Lean kernelで検査します。

- 報告した分母1,174、分子522、直接対応444、未カバー652件が生成台帳と一致する。
- カバー済み行は一次資料件数が正であり、直接対応行は必ずカバー済みである。
- 44.46%と37.82%のbasis-point計算が台帳値と一致する。
- 未カバー一覧が台帳上の未カバーIDと完全一致し、100%カバーではない。
- 47具体技術すべてが固有技術として登録され、信頼できる一次資料を1件以上持つ。
- 制御文法で形式化した39文は、空でないguide atomとsource atomを持ち、guide atomがsource atomに包含される。
- 446文について、一次資料要旨の形式factsを仮定すれば、分解済みの正のguide論理式が任意のvaluationで成立する。
- 446件の導出は共通の`Derives.sound`と各文固有の証明項を持ち、一次資料要旨をLeanの外部真理公理として導入しない。
- BM25の記号式でterm frequencyまたはIDFが0なら分子が0になり、文書長補正が分母へ現れる。
- RRFの記号式は分子1、分母`k + rank`であり、非空のモデルを持つ。

480 theorem・lemma宣言の`#print axioms`対象は追加公理を報告しません。厳格監査では`sorry`、`admit`、`axiom`、`unsafe`、`native_decide`を検出せず、トレーサビリティ検査は12要件と480宣言の対応を確認します。

## 証明していないこと

Leanは、生成された台帳の集合・件数・適格資料割当・割合計算、39件の制御atom射影、446件の形式論理上の条件付き導出を証明します。一方、論文等178件の制御語彙射影は、Abstract中の著者自身の主張と比較対象・背景言及を区別する独立レビューが未完了です。また、日本語センテンス全文からatom・AND・OR・IMPLIES・NOTへの変換が意味を完全保存することも証明していません。そのため全文意味論証明は0/1,174です。さらに、論文の経験的結果はコード・データによる再現、公式製品仕様は対象版・regionでのruntime観測がなければ「真」としません。独立真偽確認も0/1,174です。一次資料の文をLeanの公理へ置いて見かけ上100%にする方法は採用していません。

## 再現コマンド

```bash
python tools/formal_review/generate_review_data.py
python tools/formal_review/generate_evidence_coverage.py
python tools/formal_review/generate_semantic_assurance.py
python tools/formal_review/generate_literature_entailment.py
python tools/formal_review/check_evidence_coverage.py
python tools/formal_review/check_semantic_assurance.py
python tools/formal_review/check_literature_entailment.py

cd formal/lean
lake build

cd ../..
npx --yes @informalsystems/quint@0.32.0 typecheck formal/quint/retrieval_techniques.qnt
npx --yes @informalsystems/quint@0.32.0 test formal/quint/retrieval_techniques.qnt \
  --backend=typescript --max-samples=1 --seed=0x726167
npx --yes @informalsystems/quint@0.32.0 run formal/quint/retrieval_techniques.qnt \
  --backend=typescript --invariant=allInvariants \
  --max-samples=5000 --max-steps=12 --seed=0x726167
npx --yes @informalsystems/quint@0.32.0 verify formal/quint/retrieval_techniques.qnt \
  --invariant=allInvariants --max-steps=3
```

詳細な機械可読結果は`formal/verification/evidence-verification-results.csv`、要件と証明の対応は`formal/lean/traceability.csv`と`formal/lean/traceability.json`にあります。
