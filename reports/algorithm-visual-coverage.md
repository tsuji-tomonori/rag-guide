# 重要アルゴリズムの図解対応表

この表は、技術要素を方式名だけで列挙せず、どの節と図で内部の動きを説明するかを示します。新規図はImageGenで作成し、既存図は現在のガイドで同じ目的を満たすものを再利用しています。

| 分類 | アルゴリズム・概念 | 掲載先 | 図 | 図で示す中心 |
| --- | --- | --- | --- | --- |
| Sparse retrieval | Boolean retrieval / inverted index | 4.3 | アルゴリズム図A3 / `33-inverted-index-boolean.png` | 語から文書IDリストを作り、AND・ORで候補集合を得る |
| Sparse retrieval | TF-IDF / BM25 | 4.3 | 図4-4、アルゴリズム図A4 / `11-sparse-retrieval-intuition.png`、`34-tfidf-bm25-behavior.png` | 一致、希少性、文書長、反復の飽和が順位へ及ぼす影響 |
| Dense retrieval | embedding / bi-encoder | 3.6、4.4 | 図3-3、図4-5 / `08-embedding-vector-space.png`、`12-dense-retrieval-intuition.png` | 文章のベクトル化と質問・文書の独立符号化 |
| Dense retrieval | cosine / dot product / L2 | 4.4 | アルゴリズム図A5 / `35-similarity-metrics.png` | 向き、向きと大きさ、点間距離という比較対象の違い |
| Dense retrieval | exact k-NN / ANN | 4.4 | アルゴリズム図A6 / `36-exact-knn-vs-ann.png` | 全件比較と索引による候補絞り込みの違い |
| Dense retrieval | HNSW / IVF / PQ | 4.4 | アルゴリズム図A7 / `37-ann-hnsw-ivf-pq.png` | 階層グラフ、セル選択、圧縮コードという内部構造 |
| Hybrid retrieval | score normalization / weighted fusion / RRF | 4.5 | 図4-6、アルゴリズム図A8 / `13-hybrid-retrieval-rrf.png`、`43-hybrid-fusion-strategies.png` | スコアを正規化する経路と順位だけを統合する経路 |
| Reranking | bi-encoder / cross-encoder / learning-to-rank | 5.3 | アルゴリズム図A9 / `38-reranking-models.png` | 広い候補取得、質問と候補の同時評価、特徴量からの順位学習 |
| Query processing | rewriting / expansion / decomposition / HyDE | 4.2 | 図4-3、アルゴリズム図A2 / `42-query-transformation-algorithms.png`、`14-active-retrieval-loop.png` | 検索へ渡す表現の違いと、根拠不足時の追加検索 |
| Chunking | fixed-size / sliding window / semantic / parent-child | 3.4 | 図3-2、アルゴリズム図A1 / `41-chunking-algorithms.png`、`07-chunking-comparison.png` | 分割位置、重なり、意味境界、子で検索して親を返す流れ |
| 生成 | Retrieve → Augment → Generate | 1章、2章、6章 | `01-rag-basic-structure.png`、`02-rag-pipeline-overview.png`、`17-grounded-generation-flow.png` | 検索した根拠を入力へ追加し、主張と引用を対応付ける |
| 生成 | context selection / ordering / citation / grounding | 5.5、5.6、6.1、6.4 | 図5-2 / `16-context-packing-lost-middle.png`、`17-grounded-generation-flow.png` | 根拠の選択・配置と、回答主張から引用への接続 |
| 評価 | Precision / Recall / MRR / MAP / nDCG / Recall@k | 7.4 | アルゴリズム図A10 / `39-retrieval-metrics.png` | 同じ順位表に対して各指標が見る位置と対象 |
| 評価 | Faithfulness / Answer Relevance / citation / Answerability | 7.6 | アルゴリズム図A11 / `40-generation-metrics.png` | 質問、根拠、回答主張、引用のどの対応を評価するか |

本文では、図解の後に必要な定義と式を残します。図中の順位や棒の長さはアルゴリズムの挙動を理解するための模式表現とし、一般的な性能順位には用いません。
