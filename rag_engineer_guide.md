# エンジニアのためのRAG入門 第6.3版

**RAGの体系・アーキテクチャ・検索技術・評価・運用・高度化パターン**  
作成日: 2026-05-17  
更新日: 2026-05-19  
版: v6.3 label-position / research-backed edition

---

## 0. 本書の位置づけ（必須）

本書は、RAG（Retrieval-Augmented Generation）を初学者が体系的に理解し、エンジニアが実際に設計・実装・評価・運用できるようになることを目的とした技術ドキュメントである。第6.3版では、第6.2版の研究・参考文献修正を維持したうえで、章・節タイトルの先頭に置いていた「必須・推奨・発展」ラベルを、読みやすさのためタイトル末尾の `（必須）`、`（推奨）`、`（発展）` 形式へ移動した。さらに、Offline Layer / Online Layerという呼称について、研究文献における `offline indexing`、`online retrieval`、`online inference` の用例を確認し、用語の位置づけと引用を補強した。

再構成にあたっては、RAGの原典であるLewis et al.のRAG論文、Gao et al.のRAG survey、Huang & Huangのpre-retrieval / retrieval / post-retrieval / generation整理、Fan et al.のRA-LLM survey、Yu et al.のRAG評価surveyを骨格にした [1][2][3][4][5]。検索技術については、TF-IDF、BM25、DPR、ANCE、ColBERT、SPLADE、HyDE、Query2doc、RRF、RAPTOR、FLARE、Self-RAG、CRAGなどの元論文を参照した [8][9][10][11][12][13][14][15][16][17][18][19][74]。高度なRAGについては、GraphRAG、Agentic RAG、Multimodal RAG、Trustworthy RAG、Long-context RAG、tool use関連研究を参照した [23][24][25][26][27][28][29][30][31][32][33][34]。Offline / Onlineの層分けについては、実装上の責務分離として説明しつつ、ArchRAG、IndexRAG、EnrichIndexのように `offline indexing` と `online retrieval` / `online inference` の対比を明示する研究も参照した [75][76][77]。

本書では、RAGを「ベクトルDBに文書を入れてLLMに渡すだけ」の実装として扱わない。実務のRAGは、データソース設計、文書解析、chunking、メタデータ・ACL、embedding、インデックス、クエリ正規化、検索、rerank、filter、deduplication、compression、context packing、grounded generation、citation、評価、監視、セキュリティ、更新運用を組み合わせたシステムである。

### 0.1 節ラベルの読み方（必須）

本書では、各節のタイトル末尾に **必須**、**推奨**、**発展** のラベルを付ける。ラベルは、その節を読む優先度と、実装時に導入する優先度を示す。

| ラベル | 意味 | 実装上の扱い |
|---|---|---|
| 必須 | RAGの基本理解、または本番候補の初期構成に必要な要素 | 初期設計・実装・評価に含める |
| 推奨 | 多くの実務RAGで早期に効果が出る要素 | 失敗パターンやコストを見ながら早めに導入する |
| 発展 | 特定の課題、規模、モダリティ、研究寄りの高度化で使う要素 | Production Baselineを作った後、必要性が確認できてから導入する |

ラベルは重要度の低さを意味しない。たとえばGraphRAGやAgentic RAGは強力だが、最初から導入すると評価・運用・監査の複雑性が上がるため、本書では発展として扱う。

---

## 最終章構成（必須）

1. RAGとは何か（必須）  
2. アーキテクチャ（必須）  
3. Pre-retrieval（Offline Layer）（必須）  
4. Retrieval（Online Layer）（必須）  
5. Post-retrieval（Online Layer）（必須）  
6. Generation（必須）  
7. 評価（必須）  
8. 非機能要件（必須）  
9. 高度なRAG（発展）  
10. 実装ロードマップ（必須）  
11. 参考文献（推奨）

---

# 1. RAGとは何か（必須）

RAGとは、LLMの内部知識だけに依存せず、外部の知識源から関連情報を検索し、その情報を根拠として回答を生成する設計である。RAGの原典では、LLMのパラメータに格納された知識を **parametric memory**、外部検索可能な知識ベースを **non-parametric memory** と整理している [1]。この考え方は、現在の社内RAG、製品サポートRAG、論文QA、契約書QA、コードベースQAにもそのまま当てはまる。

LLMは、文章を理解し、要約し、推論し、自然な説明に変換することに強い。一方で、最新の社内規程、契約条件、製品仕様、障害履歴、顧客別設定、公開後に変更された法令などを、常に正確に内部知識として保持しているわけではない。RAGは、LLMを「すべてを暗記した知識ベース」として使うのではなく、「検索された根拠を読み、統合し、説明する推論・生成エンジン」として使う設計である。

最小構成は次のように表せる。

```text
User Question
  -> Retrieve relevant evidence
  -> Add evidence to prompt
  -> Generate grounded answer
  -> Return answer with citations or refusal
```

ただし、この最小構成は説明用である。本番のRAGでは、検索前の文書整備、権限制御、複数retrieverの統合、rerank、context圧縮、引用整形、評価、監視までを含めて設計しなければならない。

> **図TODO: RAGの基本構造**  
> `$image prompt: 日本語の技術資料向けに、RAGの基本構造を横長の図で描く。左から User Question、Retriever、External Knowledge Base、Retrieved Evidence、LLM、Grounded Answer with Citations を矢印で接続する。LLMの内部に Parametric Memory、外部知識ベース側に Non-parametric Memory と注記する。白背景、シンプル、エンジニア向け、日本語ラベル。`

## 1.1 LLM単体の限界とRAGの狙い（必須）

LLM単体の限界は、主に知識の鮮度、ドメイン固有知識、根拠追跡性、回答不能判定、コスト効率に現れる。

知識の鮮度の問題は、LLMの学習データがある時点で固定されることに由来する。製品仕様、社内規程、価格、障害情報、法律、API仕様、顧客契約は継続的に変わる。LLMを再学習して全情報を反映することは、費用、時間、検証、コンプライアンスの面で現実的でないことが多い。RAGでは、外部知識ベースを更新すれば、LLM本体を再学習しなくても最新情報を参照できる。

ドメイン固有知識の問題も大きい。社内Wiki、Confluence、SharePoint、契約書、障害対応チケット、製品マニュアル、コードリポジトリ、設計書は、多くの場合、汎用LLMの学習データに含まれていない。含まれていたとしても、文書版、公開範囲、権限、有効期限を保証できない。RAGは、こうした組織固有の知識を外部メモリとして扱う。

根拠追跡性は、企業利用では特に重要である。LLMが正しそうな回答を出しても、どの文書のどの箇所に基づいているかを説明できなければ、監査、法務、セキュリティ、顧客説明で使いにくい。RAGでは、document_id、chunk_id、page、source_url、version、published_at、effective_from、effective_toなどを回答に紐づけることで、回答の来歴を追跡できる。

RAGの狙いは、ハルシネーションを完全に消すことではない。検索結果が不正確であったり、古い文書が混ざったり、LLMが根拠を誤読したりすれば、RAGでも誤答は起こる。RAGの実務上の狙いは、回答を外部根拠にgroundingし、根拠不足時に拒否でき、誤りを検出・改善できるシステムにすることである。

## 1.2 RAGが向いているユースケース（必須）

RAGが向いているのは、外部知識に基づく回答が必要で、かつ回答の根拠を示したいユースケースである。社内規程QA、法務・契約レビュー支援、カスタマーサポート、製品仕様QA、障害対応支援、研究論文QA、医療・金融・教育などの専門文書QA、開発者向けドキュメント検索、コードベースQAは典型例である。

特に効果が出やすいのは、知識が頻繁に更新されるが、回答形式は自然言語でよい業務である。たとえば「この機能はどのバージョンから利用できるか」「この障害の既知回避策は何か」「この顧客契約ではSLA除外条件は何か」といった質問は、外部文書を検索して根拠付きで回答するRAGに向いている。

RAGが向かない、あるいはRAGだけで完結させるべきでないケースもある。厳密なトランザクション、在庫更新、決済、権限変更、医療診断の最終判断、法的判断の最終責任、重要設定の変更などは、LLMの自然言語生成ではなく、業務システム、ルールエンジン、承認フロー、人間のレビューと組み合わせるべきである。RAGは説明と根拠提示に強いが、状態変更や責任判断を単独で担う仕組みではない。

## 1.3 RAGの限界（必須）

RAGの限界は、検索できなければ答えられないこと、検索結果が正しくてもLLMが正しく使うとは限らないこと、そして根拠の品質を文書基盤に依存することである。

検索漏れがあると、正解文書が知識ベース内に存在しても回答に使われない。これはchunking、embedding、query rewriting、retriever、metadata filter、ACL、index freshnessのどこかで起きる。RAGの失敗はLLMの生成だけでなく、データ処理と検索の失敗として切り分ける必要がある。

検索結果のノイズも問題になる。RGBベンチマークはRAGに必要な能力として、noise robustness、negative rejection、information integration、counterfactual robustnessを挙げている [6]。RAGGEDも、検索件数を増やすと常に良くなるわけではなく、readerがノイズに弱い場合には性能が下がることを示している [7]。

また、RAGはデータソースの品質を超えられない。古い文書、矛盾した文書、権限外文書、OCR誤り、表抽出の失敗、誤ったメタデータが混ざっていると、検索と生成は不安定になる。RAG構築では、モデル選定だけでなく、データガバナンス、文書ライフサイクル、権限制御、監査ログを設計対象に含める必要がある。

---

# 2. アーキテクチャ（必須）

RAGのアーキテクチャは、Huang & Huangの整理に従うと、pre-retrieval、retrieval、post-retrieval、generationの4段階で理解しやすい [3]。Gao et al.の整理では、retrieval、augmentation、generationの3要素として見ることもできる [2]。実装では4段階、設計思想では3要素と考えると整理しやすい。

> **図TODO: RAGパイプライン全体像**  
> `$image prompt: 日本語の技術資料向けに、RAGの4段階パイプラインを横長に図示する。Pre-retrieval、Retrieval、Post-retrieval、Generation の4ブロックを並べる。Pre-retrievalには Data Sources, Parser, Chunker, Metadata, Embedding, Index、Retrievalには Query Rewrite, Sparse Retrieval, Dense Retrieval, Hybrid Retrieval、Post-retrievalには Rerank, Filter, Dedup, Compression, Context Packing、Generationには Grounded Prompt, LLM, Citation, Verification を入れる。白背景、エンジニア向け、日本語ラベル。`

## 2.1 Pre-retrieval（必須）

Pre-retrievalは、オンライン検索が始まる前に知識ベースを整える工程である。データソースを取り込み、文書を解析し、chunkに分割し、メタデータとACLを付与し、embeddingを作り、sparse indexやvector indexに登録する。

この段階の品質が低いと、後段では回復しにくい。たとえばPDFの段組みが崩れて本文順序が壊れた場合、retrieverは壊れたchunkを検索する。表の列対応が失われた場合、LLMは誤った値を読み取る。ACLがchunkに正しく付いていない場合、オンライン検索時に権限外データが混入する。

## 2.2 Retrieval（必須）

Retrievalは、ユーザー質問に関連する候補を取得する工程である。検索対象はテキストchunkだけでなく、表、図、画像領域、Graphノード、SQL結果、APIレスポンス、過去チケット、コード片などにも広がる。

Retrievalには、語彙一致に基づくsparse retrieval、embedding類似度に基づくdense retrieval、両者を組み合わせるhybrid retrievalがある。さらに、質問を書き換えるquery rewriting、複数クエリを生成するquery expansion、複雑な質問を分解するquery decomposition、LLMが仮想文書を生成するHyDE、質問種別に応じて検索先を選ぶroutingも重要になる [13][14][35]。

## 2.3 Post-retrieval（必須）

Post-retrievalは、検索で得た候補をLLMに渡す前に整える工程である。retrieverは広く候補を集める役割を持つため、上位候補には重複、ノイズ、古い版、権限外、低信頼ソースが混ざることがある。Post-retrievalでは、reranking、filtering、deduplication、compression、context packingを行い、LLMに渡す根拠の品質を高める。

この工程はaugmentationの中心である。単に上位k件を貼り付けるのではなく、どの根拠をどの順番で、どの粒度で、どの引用情報とともにLLMへ渡すかを決める。

## 2.4 Generation（必須）

Generationは、LLMが根拠に基づいて回答を生成する工程である。ここではgrounded prompt、回答形式、引用整形、拒否方針、検証が重要になる。

RAGのGenerationでは、LLMに「根拠だけで答えて」と書くだけでは不十分である。回答可能条件、引用形式、根拠不足時の拒否、矛盾時の扱い、推測禁止、出典IDの使い方、JSON/Markdownなどの出力形式を明示する必要がある。

## 2.5 2つの層（必須）

RAGは、Offline LayerとOnline Layerに分けると実装責務が明確になる。ここでいうOffline Layerは、ユーザーリクエストを受ける前に行う取り込み、解析、chunking、metadata/ACL付与、embedding、index構築、index version管理を指す。Online Layerは、ユーザーリクエストを受けてから行う認証、query rewriting、retrieval、reranking、context packing、generation、citation、trace loggingを指す。

この呼び方は、RAG全体の標準分類として常に使われるわけではない。主要surveyでは、pre-retrieval / retrieval / post-retrieval / generation、あるいは retrieval / augmentation / generation のような分類が多い [2][3]。一方で、研究文献にも同じ発想は現れている。たとえばArchRAGはgraph-based RAGで階層indexを構築し、online retrieval methodを開発すると説明している [75]。IndexRAGは、multi-hop QAのcross-document reasoningをonline inferenceからoffline indexingへ移すと説明している [76]。EnrichIndexは、LLMをonline query-document relevance計算に使うのではなく、ingestion時にofflineで意味的に拡張されたretrieval indexを作ることで、online latencyとcostを下げると説明している [77]。したがって本書では、Offline / Onlineという語を「研究上の唯一の分類」ではなく、実装責務、性能、コスト、運用リスクを整理するための工学的な層分けとして使う。

### 2.5.1 Offline Layer（必須）

Offline Layerは、知識ベースを準備する層である。データソースから文書を取り込み、parser/OCR/cleanerで解析し、chunkerで分割し、metadataとACLを付与し、embeddingを生成し、sparse indexとvector indexを構築し、index versionを管理する。

```text
[Offline]
Data Sources
  -> Ingestion Worker
  -> Parser / OCR / Cleaner
  -> Chunker
  -> Metadata & ACL Builder
  -> Embedding Worker
  -> Sparse Index + Vector Index
  -> Index Version Store
```

Offline Layerの設計では、再現性と更新可能性が重要である。同じ文書、同じparser_version、同じchunker設定、同じembedding_model_versionで再実行したときに、同じindexを再構築できることが望ましい。文書削除、権限変更、版更新、有効期限切れもindexに反映できなければならない。

### 2.5.2 Online Layer（必須）

Online Layerは、ユーザー質問に対して検索・生成を行う層である。API Gateway、Auth / ACL Resolver、Query Rewriter、Hybrid Retriever、Candidate Merger、Reranker、Context Compressor / Packer、LLM Gateway、Grounding / Citation Formatter、Trace Log / Feedback Storeが連携する。

```text
[Online]
User
  -> API Gateway
  -> Auth / ACL Resolver
  -> Query Rewriter
  -> Hybrid Retriever
  -> Candidate Merger / Deduplicator
  -> Reranker
  -> Context Compressor / Packer
  -> LLM Gateway
  -> Grounding / Citation Formatter
  -> Trace Log / Feedback Store
```

Online Layerの設計では、レイテンシ、コスト、権限制御、監査ログ、エラー時のフォールバックが重要である。特にACLは、LLMに渡した後で隠すのではなく、検索前または検索時に適用する。権限外文書はcontextにもtraceにも入れないことを原則にする。

> **図TODO: Offline / Online RAGアーキテクチャ全体図**  
> `$image prompt: 日本語の技術資料向けに、RAGシステムのOffline/Online全体構成図を作る。図は上下2段に分け、上段を [Offline Layer]、下段を [Online Layer] と明示する。Offlineでは Data Sources -> Ingestion Worker -> Parser / OCR / Cleaner -> Chunker -> Metadata & ACL Builder -> Embedding Worker -> Sparse Index + Vector Index -> Index Version Store を箱と矢印で接続する。Onlineでは User -> API Gateway -> Auth / ACL Resolver -> Query Rewriter -> Hybrid Retriever -> Candidate Merger / Deduplicator -> Reranker -> Context Compressor / Packer -> LLM Gateway -> Grounding / Citation Formatter -> Trace Log / Feedback Store を接続する。Offlineの Index Version Store から Onlineの Hybrid Retriever へ参照矢印を入れる。Metadata & ACL Builder と Auth / ACL Resolver の関係が分かるようにACL適用の注記を付ける。白背景、横長、エンジニア向け、日本語ラベル。`

## 2.6 RAGの発展段階（必須）

Gao et al.は、RAGをNaive RAG、Advanced RAG、Modular RAGとして整理している [2]。これは実務の成熟度モデルとしても使いやすい。

### 2.6.1 Naive RAG（必須）

Naive RAGは、質問をそのまま検索し、上位k件をプロンプトに入れて回答する構成である。

```text
question -> retrieve top_k -> prompt -> LLM -> answer
```

実装が簡単なためPoCには向くが、本番利用では検索漏れ、ノイズ、誤引用、権限漏れ、更新不能、評価不能が起きやすい。Naive RAGは、RAGの概念検証としては有用だが、Production RAGの完成形ではない。

### 2.6.2 Advanced RAG（必須）

Advanced RAGは、query rewriting、hybrid retrieval、reranking、metadata filter、compression、citation、answerability判定を追加した構成である。多くの企業向けRAGの現実的な初期ゴールはAdvanced RAGである。

Advanced RAGでは、retrieverが広く候補を集め、rerankerが精密に並べ、context packerがトークン予算内に根拠を配置し、generatorが根拠付きで回答する。各段階の評価とログが重要になる。

### 2.6.3 Modular RAG（発展）

Modular RAGは、router、planner、tool use、multi-agent、memory、verifier、Graph、SQL、multimodal indexなどを組み合わせる構成である。複雑な業務調査や多段推論に向く一方、非決定性、評価難度、監査難度、レイテンシ、コストが増える。

実務では、固定pipelineのAdvanced RAGをベースラインとして作り、失敗パターンに応じて必要なmoduleを追加するのがよい。複雑な質問だけagentic flowへroutingし、単純なFAQは通常RAGで処理するような混合設計が現実的である。

> **図TODO: Naive / Advanced / Modular RAGの比較**  
> `$image prompt: 日本語の技術資料向けに、Naive RAG、Advanced RAG、Modular RAGの3段階を比較する図を作る。Naiveは Question -> Retriever -> LLM の単純な流れ、Advancedは Query Rewrite, Hybrid Retrieval, Rerank, Compression, Citation を追加、Modularは Router, Planner, Tools, Graph, Agent, Verifier, Memory を追加して示す。下部に「実装容易性は低下、対応力と運用複雑性は上昇」と注記する。白背景、横長。`


## 2.7 最初に作る構成と育て方（必須）

RAGは、単純なNaive RAGから始めてそのまま本番化するのではなく、**小さく限定したAdvanced RAG** から始めるのがよい。最初からGraphRAG、Agentic RAG、Multimodal RAG、RA-LLM fine-tuningを入れると、何が効いたのか評価しにくく、レイテンシ、コスト、監査、権限管理も複雑になる。

初期構成の原則は、次の3つである。

1. **対象範囲を絞る**: 全社文書ではなく、1製品、1部門、1業務、1文書種別から始める。
2. **検索・引用・拒否を最初から入れる**: top-kをLLMへ貼るだけではなく、metadata、ACL、rerank、citation、refusal、traceを最初から設計する。
3. **高度化は失敗パターンから決める**: 手法起点ではなく、検索漏れ、ノイズ、矛盾、引用誤り、図表未対応、multi-hop不足などの観測結果から追加する。

### 2.7.1 最初の構成: 小さなAdvanced RAG（必須）

最初の本番候補は、次の構成にする。

```text
[Offline]
Authoritative Sourceを限定
  -> Parser / Cleaner
  -> Chunker
  -> Metadata & ACL
  -> Embedding
  -> BM25 Index + Vector Index
  -> Index Version

[Online]
User Question
  -> Auth / ACL Resolver
  -> Query Rewrite（必要最小限）
  -> BM25 + Dense Hybrid Retrieval
  -> RRFまたはScore Fusion
  -> Reranker
  -> Metadata / ACL Filter
  -> Deduplication
  -> Context Packing
  -> Grounded Prompt
  -> Answer with Citations or Refusal
  -> Trace Log / Feedback
```

これはNaive RAGより少し重いが、本番化の観点では最小構成である。理由は、RAGの事故が「LLMの誤答」だけでなく、権限外chunkの混入、古い版の参照、検索漏れ、引用不能、評価不能、更新不能として起きるからである。

| 層 | 初期構成 | 理由 |
|---|---|---|
| Data | authoritative sourceを限定する | 矛盾・重複・古い情報を減らす |
| Parser / Chunker | 見出し・ページ・表をできるだけ保持する | 引用と検索粒度を安定させる |
| Metadata / ACL | document_id、chunk_id、version、effective date、aclを持つ | filter、監査、更新、削除反映に必要 |
| Retrieval | BM25 + denseのhybrid retrieval | 固有名詞・コード・同義語の両方に対応する |
| Fusion / Rerank | RRFまたはscore fusion + reranker | recallとprecisionのバランスを取る |
| Post-retrieval | filter、dedup、context packing | ノイズ、重複、権限漏れ、token浪費を抑える |
| Generation | grounded prompt、citation、refusal | 根拠付き回答と回答不能判定を実現する |
| Evaluation | golden dataset、retrieval/generation/e2e分離 | 改善がどこに効いたか判断する |
| Operation | trace log、index version、latency/cost監視 | 障害調査と回帰検知を可能にする |

### 2.7.2 育て方: 失敗パターン駆動で拡張する（必須）

RAGの高度化は、手法名から逆算しない。まずProduction Baselineを動かし、評価とログで失敗パターンを分類してから拡張する。

| 観測される失敗 | まず見る箇所 | 追加する設計 | 主な参照先 |
|---|---|---|---|
| 正解根拠が候補に入らない | chunking、query、index、filter | chunking改善、query rewriting、query expansion、HyDE | 3章、4.1章 |
| 固有名詞・型番・条文番号を落とす | dense retrieval依存 | BM25、fielded retrieval、hybrid retrieval | 4.2章、4.4章 |
| 意味的には近いが正解でない候補が多い | retrieval上位候補 | reranker、metadata-aware retrieval、source trust | 5.1章、5.2章 |
| contextが重複やノイズで埋まる | post-retrieval | deduplication、compression、context packing | 5.3章、5.4章、5.5章 |
| 根拠はあるがLLMが誤読する | generation、prompt、引用 | grounded prompt、claim-level verification、拒否方針 | 6章 |
| 答えがない質問に答えてしまう | answerability | negative rejection評価、refusal、evidence sufficiency judge | 6章、7.6章 |
| 複数文書を統合できない | query decomposition、evidence統合 | sub-question planning、IRCoT、GraphRAG | 4.1章、9章 |
| 図表・スクリーンショットが根拠になる | parser、modality | table index、image index、VLM、Multimodal RAG | 9章 |
| 関係構造・全体テーマを問われる | entity/relation、global question | GraphRAG、hierarchical summaries、RAPTOR | 9章 |
| 複数toolやDB/APIが必要になる | routing、tool権限 | Structured Data RAG、tool registry、Agentic RAG | 9章 |
| ドメイン固有の引用・拒否・形式遵守が弱い | generator behavior | RAFT、RA-DIT、retrieval-aware fine-tuning、RA-LLM | 9章 |

### 2.7.3 導入順序の目安（必須）

導入順序は、次のように段階化する。

```text
Stage 0: Toy RAG
  - 小規模文書でRAGの概念を確認する
  - 本番候補ではなく、学習・デモ目的に限定する

Stage 1: Scoped Baseline
  - authoritative sourceを1つに絞る
  - parser、chunker、metadata、ACLを整える
  - BM25 + dense retrieval、citation、refusal、traceを入れる

Stage 2: Production Baseline
  - hybrid retrieval、reranker、dedup、context packingを安定化する
  - golden datasetでretrieval / generation / e2eを分離評価する
  - index lifecycle、rollback、監視、セキュリティテストを入れる

Stage 3: Controlled Optimization
  - query rewriting、expansion、compression、verificationを評価で追加する
  - latency、cost、qualityのSLOを決める
  - drift monitoringと本番フィードバックを回す

Stage 4: Selective Advanced RAG
  - multi-hopならGraphRAGやHierarchical RAG
  - tool/APIが必要ならStructured Data RAGやAgentic RAG
  - 図表・画像が必要ならMultimodal RAG
  - generatorの根拠利用が弱いならRAFT/RA-DIT/RA-LLMを検討する
```

重要なのは、Stage 4を目的にしないことである。RAGの成熟度は、導入した高度手法の数ではなく、正しい根拠を検索し、権限を守り、根拠不足時に拒否し、評価と監査で改善できるかで決まる。

> **図TODO: RAGの育て方ロードマップ**  
> `$image prompt: 日本語の技術資料向けに、RAGを段階的に育てるロードマップ図を作る。左から Stage 0 Toy RAG、Stage 1 Scoped Baseline、Stage 2 Production Baseline、Stage 3 Controlled Optimization、Stage 4 Selective Advanced RAG を横長に並べる。各stageの下に主要コンポーネントを3〜5個ずつ置く。Stage 4にはGraphRAG、Agentic RAG、Multimodal RAG、RA-LLMを配置し、「失敗パターンに応じて選択」と注記する。白背景、エンジニア向け、日本語ラベル。`

---

# 3. Pre-retrieval（Offline Layer）（必須）

Pre-retrievalは、RAGの品質を決める土台である。多くのRAG改善は、LLMプロンプトではなく、データソース設計、文書解析、chunking、メタデータ、embedding、index構築の改善から始まる。

> **図TODO: Pre-retrieval Offline Layer詳細図**  
> `$image prompt: 日本語の技術資料向けに、Pre-retrievalのOffline Layerを詳細図として描く。Data Sources、Ingestion Worker、Parser/OCR/Cleaner、Structure Normalizer、Chunker、Metadata & ACL Builder、Embedding Worker、Sparse Index、Vector Index、Index Version Storeを順に接続する。各ステップの下に主な出力として raw_document、parsed_blocks、chunks、metadata、embeddings、index_version を小さく表示する。白背景、横長、エンジニア向け。`

## 3.1 データソース設計（必須）

データソース設計では、まず「何を正とするか」を決める。RAGの回答品質は、source of truthの品質に依存する。社内Wiki、製品マニュアル、FAQ、契約書、CRM、チケット、コードリポジトリ、データベース、BI、画像、動画、音声などをすべて無差別に取り込むと、情報の重複、矛盾、古い版、権限漏れが増える。

実務では、データソースを次の観点で分類する。

| 観点 | 説明 | 実装上の扱い |
|---|---|---|
| authoritative source | 正とみなせる公式情報 | 高いsource_trust_levelを付与し、回答根拠に優先する |
| informal source | Slack、チケット、議事録など非公式情報 | 調査補助には使えるが、最終回答の根拠には制限を付ける |
| versioned source | 版管理された文書 | version、effective_from、effective_toを必ず保持する |
| access-controlled source | 権限が異なる文書 | chunk単位でACLを保持し、検索時にfilterする |
| dynamic source | DB、API、BIなどリアルタイム性がある情報 | 文書indexだけでなくtool/API呼び出しを検討する |

研究面では、RAG survey群はいずれも外部知識の品質と更新可能性をRAGの利点として挙げるが、実務では「どのデータを入れるか」が最初の設計課題になる [2][3][5]。Trustworthy RAG surveyは、信頼性、プライバシー、安全性、説明責任をRAG設計の中心課題として整理しており、データソース選定と権限制御が信頼性に直結することを示している [26]。

データソース設計の実装方針は、最初に対象範囲を絞ることである。全社文書を一気に入れるのではなく、1つの製品、1つの部門、1つの業務フロー、1つの文書種別から始める。次に、source connectorごとに同期頻度、削除反映、権限反映、取得失敗時の挙動、schema、監査ログを定義する。最後に、データソースごとの信頼度と引用可否をmetadataに落とす。

## 3.2 解析・正規化（必須）

解析・正規化は、PDF、HTML、Office文書、Markdown、画像、表、動画、音声などを、RAGが検索・引用できる構造へ変換する工程である。単なる全文テキスト抽出では不十分である。見出し、段落、箇条書き、表、図、脚注、キャプション、ページ番号、レイアウト順序、リンク、コードブロック、画像領域をできるだけ保持する必要がある。

文書解析の研究では、PubLayNetやDocLayNetのようなdocument layout analysis datasetが重要である。PubLayNetは科学論文PDFから大規模なlayout annotationを構築し、文書画像のレイアウト認識を支援した [39]。DocLayNetは、科学論文に偏らない多様な文書ソースから80,000ページ超のhuman-annotated layout datasetを提供し、汎用的な文書レイアウト解析の課題を示した [40]。LayoutLMv3は、テキストと画像の統合的なmaskingにより、document AIのtext-centricタスクとimage-centricタスクの双方で利用できるモデルとして提案された [33]。

実装では、parserの出力を単なる文字列ではなく、`block`の配列として扱うとよい。

```json
{
  "document_id": "doc_123",
  "page": 5,
  "blocks": [
    {"type": "heading", "text": "2.1 適用条件", "bbox": [50, 80, 520, 110]},
    {"type": "paragraph", "text": "本条件は...", "bbox": [50, 130, 520, 220]},
    {"type": "table", "table_id": "tbl_5_1", "cells": [...]}
  ]
}
```

この形式にしておくと、chunking時に見出し階層を維持でき、Multimodal RAGではbounding box付き引用も実現しやすい。OCRやparserには誤りがあるため、parser_version、ocr_confidence、layout_confidenceをmetadataとして残す。後からparserを更新したとき、どのchunkを再生成すべきかを判断できる。

## 3.3 Chunking（必須）

Chunkingは、文書を検索単位に分割する工程である。RAGでは「どの単位で検索するか」が非常に重要である。短すぎるchunkは文脈を失い、長すぎるchunkは検索ノイズとトークン消費を増やす。

一般的なchunkingには、固定長chunk、overlap付き固定長chunk、段落単位chunk、見出し階層chunk、semantic chunk、表・コード・FAQ単位chunkがある。固定長chunkは実装が簡単だが、意味境界を壊しやすい。見出し階層chunkは技術文書や規程文書に向く。FAQでは質問と回答を同じchunkに入れることが重要である。表では行列構造を崩さず、表全体または関連行を単位にする必要がある。

研究面では、retrieval granularityの選択が検索とQA性能に大きく影響することが示されている。proposition-based retrievalは、文書を原子的な命題単位に分解して検索することで、passageやsentence単位より密度の高い根拠を返せる可能性を示した [41]。RAPTORは、chunkをembeddingし、クラスタリングし、要約を再帰的に構築することで、短いchunkだけでは失われる長文全体の文脈をtree構造で扱う [19]。

実装では、最初から高度なchunkingに飛びつくよりも、次の候補を評価する。

| Chunking方式 | 向く文書 | 強み | 限界 |
|---|---|---|---|
| 固定長 | 均質なテキスト | 実装が容易 | 意味境界を壊しやすい |
| overlap付き固定長 | 長文マニュアル | 文脈欠落を緩和 | 重複が増えindexが膨らむ |
| 見出し階層 | 規程、仕様書、設計書 | section単位の引用がしやすい | parser品質に依存 |
| FAQ単位 | FAQ、ナレッジ記事 | Q/A対応を保てる | 長いFAQでは再分割が必要 |
| 表単位 | 料金表、仕様表 | 行列対応を保てる | LLMへの表渡しが難しい |
| proposition単位 | fact QA、契約条項 | 根拠密度が高い | 分解コストと誤分解リスク |
| 階層chunk | 長文文書、レポート | 局所と全体を両方扱える | indexと検索設計が複雑 |

chunkサイズは理論だけで決めない。golden datasetを作り、recall@k、MRR、nDCG、生成品質、引用精度、コストを比較して決める。chunkingの変更はindex全体を変えるため、chunker_versionを持ち、A/B評価できるようにする。

> **図TODO: Chunking方式の比較**  
> `$image prompt: 日本語の技術資料向けに、RAGのchunking方式を比較する図を作る。左に長い文書を置き、そこから固定長chunk、見出し階層chunk、FAQ単位chunk、表単位chunk、proposition単位chunk、階層chunkへ分岐する。各方式の下に「文脈」「検索精度」「実装難度」の簡単な注記を入れる。白背景、横長。`

## 3.4 メタデータ付与とACL（必須）

メタデータは、RAGの検索、フィルタ、引用、監査、更新、権限制御を支える。embeddingだけで検索すると、意味的に近いが古い文書、権限外文書、別地域の文書、別製品の文書が混ざる。メタデータは、そのような誤検索を防ぐための制御面である。

重要なメタデータは次の通りである。

| メタデータ | 日本語訳 | 説明 | 実装上の注意 |
|---|---|---|---|
| document_id | 文書ID | 元文書を一意に識別するID | URLやファイル名ではなく安定IDを使う |
| chunk_id | チャンクID | 検索単位を一意に識別するID | document_id + chunk番号 + versionで構成すると追跡しやすい |
| title | タイトル | 文書名または記事タイトル | LLMに渡すcontextにも含めると根拠理解が安定する |
| source_url | 参照元URL | 元文書のURLまたは保存場所 | 権限付きURLの場合、回答にそのまま出してよいか確認する |
| page | ページ | PDFやスライドのページ番号 | OCR・引用・レビューで重要 |
| section | セクション | 文書内の章・節 | filterやcitationに使う |
| heading_path | 見出しパス | `第2章 > 2.1 > 適用条件` のような階層 | chunkの文脈補完に有効 |
| document_type | 文書種別 | FAQ、規程、契約、仕様書、議事録など | 検索routingや信頼度に使う |
| created_at | 作成日時 | 文書またはchunkの作成日時 | source側の作成日と取り込み日を混同しない |
| updated_at | 更新日時 | 最終更新日時 | index freshness監視に使う |
| published_at | 公開日時 | ユーザーに公開された日時 | 有効性判断に使う |
| effective_from | 有効開始日 | 規程や契約が有効になる日 | 「いつ時点の回答か」に必須 |
| effective_to | 有効終了日 | 規程や契約が失効する日 | 古い情報の誤利用を防ぐ |
| version | 版 | 文書版、改訂番号 | 古い版と新しい版の衝突を制御する |
| language | 言語 | ja、enなど | multilingual retrievalで重要 |
| department | 部門 | 所管部門 | 社内検索、責任範囲、filterに使う |
| product | 製品 | 対象製品・サービス | 製品別QAで必須 |
| region | 地域 | 国・地域・リージョン | 法令、価格、利用条件の差を扱う |
| tenant_id | テナントID | 顧客・組織単位の分離ID | multi-tenantでは最重要のfilter |
| acl | アクセス制御リスト | 閲覧可能なユーザー・グループ | 検索前または検索時に必ず適用する |
| confidentiality | 機密区分 | public、internal、confidentialなど | 出力可否、ログ保存方針に影響する |
| source_trust_level | ソース信頼度 | 公式文書、非公式メモなどの信頼度 | 矛盾時の優先順位に使う |
| parser_version | パーサ版 | 文書解析に使ったparserの版 | parser更新時の再処理対象を特定する |
| embedding_model_version | 埋め込みモデル版 | embedding生成に使ったモデルの版 | モデル変更時は再embeddingが必要になる |

ACLは特に重要である。RAGでは、LLMに渡した後でマスキングするのではなく、retrieval時点で権限外chunkを返さない設計にする。multi-tenantシステムでは、tenant_id filterを必須条件にする。ACL変更は文書更新と同じようにindexへ反映し、削除や権限剥奪が遅延しないようにする。

## 3.5 Embeddingとベクトル空間（必須）

Embeddingは、テキストや画像を数値ベクトルに変換する表現である。ベクトルとは数値のリストであり、たとえば `[0.12, -0.03, 0.44, ...]` のように表される。ベクトル空間とは、これらのベクトルが配置される座標空間である。2次元なら紙の上の座標平面として想像できるが、embeddingでは数百〜数千次元になるため直接は可視化できない。

embeddingモデルは、意味的に近いテキストが近いベクトルになるよう学習される。これにより、質問文と同じ単語を含まないchunkでも、意味が近ければ検索できる。たとえば「退職時のPC返却」と「退職者は貸与端末をいつ返すべきか」は単語が完全一致しなくても、dense retrievalでは近いものとして扱える可能性がある。

ただし、embeddingは意味理解そのものではない。embeddingモデルの学習データ、言語、ドメイン、文体、長さ、数値表現、固有名詞に依存する。社内略語、製品コード、契約番号、法令条文、表の数値、エラーメッセージのような正確一致が重要な情報は、embeddingだけでは弱いことがある。このため本番RAGでは、dense retrievalだけでなくBM25などのsparse retrievalを併用することが多い。

DPRは、質問encoderとpassage encoderを分けるdual-encoderでdense retrievalを実用化した代表的研究である [9]。ANCEは、ANN indexからhard negativeを選んで学習することでdense retrieverを強化した [11]。Contrieverは教師なしcontrastive learningで汎用retrieverを作る方向を示した [42]。ColBERTは単一ベクトルではなくtoken単位のlate interactionで、dense retrievalの意味表現と細粒度一致を両立しようとする [10][12]。

実装では、embedding_model_versionを必ず記録する。embeddingモデルを変えるとベクトル空間が変わるため、既存indexとの混在は原則避ける。モデル変更時は再embedding、再index、評価、段階的切替を行う。

> **図TODO: Embeddingとベクトル空間の直感**  
> `$image prompt: 日本語の技術資料向けに、embeddingとベクトル空間を直感的に説明する図を作る。左に複数の文章を置き、Embedding Modelを通して右側の2次元風の散布図に点として配置する。似た意味の文章が近く、無関係な文章が遠いことを示す。実際は高次元であるという注記を入れる。白背景、シンプル。`

## 3.6 index登録（必須）

Index登録は、検索を高速化するためのデータ構造を作る工程である。sparse retrievalでは転置インデックス、dense retrievalでは近似近傍探索（ANN: Approximate Nearest Neighbor）のindexが使われる。

vector indexでは、全chunkのベクトルに対して質問ベクトルとの距離を毎回総当たり計算するのは大規模では非現実的である。そのため、HNSW、IVF、PQ、GPU検索などの近似検索技術が使われる。HNSWは階層的なsmall-world graphにより高速な近傍探索を実現する [43]。FAISSはbillion-scale similarity searchをGPUで効率化する代表的なライブラリである [44]。Product Quantizationはベクトルを圧縮表現に変換して近傍探索を効率化する [45]。

Index登録では、性能だけでなく、更新と再現性を考える。append-onlyで新規文書を追加するだけなら簡単だが、実務では文書削除、権限変更、版更新、有効期限切れ、parser更新、embedding更新が起きる。Index Version Storeを用意し、どのindex_versionが本番で使われているか、どのデータソース・parser・embeddingモデルから作られたかを追跡する。

実装方針としては、次を推奨する。

| 項目 | 推奨 |
|---|---|
| index_version | 本番参照中のindexを明示的に管理する |
| blue/green index | 新indexを構築して評価後に切り替える |
| deletion propagation | 文書削除・権限剥奪を検索結果から確実に消す |
| metadata filter | tenant_id、acl、version、effective dateを検索時filterに使う |
| recall/latency trade-off | HNSWやIVFのパラメータを評価で決める |
| observability | index size、freshness、failed ingestion、embedding errorを監視する |

---

# 4. Retrieval（Online Layer）（必須）

Retrievalは、ユーザー質問に対して関連候補を取得する工程である。Retrievalの品質はRAG全体の上限を決める。正解根拠がretrieval段階で候補に入っていなければ、LLMは正しく回答できない。

> **図TODO: Retrieval Online Layer詳細図**  
> `$image prompt: 日本語の技術資料向けに、Retrieval Online Layerの詳細図を描く。User Query -> Query Normalization -> Query Rewriting / Expansion / Decomposition / HyDE / Routing に分岐し、Sparse Retriever、Dense Retriever、Graph Retriever、SQL/API Toolに接続する。結果は Candidate Merger に集約され、ACL FilterとMetadata Filterを通り、Post-retrievalへ渡る。白背景、横長、エンジニア向け。`

## 4.1 クエリ正規化（推奨）

クエリ正規化は、ユーザーの自然言語入力を検索しやすい形に変換する工程である。ユーザーの質問は、略語、指示語、会話履歴、誤字、製品名の省略、前提不足を含むことが多い。retrieverにそのまま渡すと、検索意図とretrieverが見ている文字列・embeddingがずれる。

クエリ正規化では、質問をstandalone queryに直す、同義語や略語を展開する、複数クエリを生成する、複雑な質問をサブ質問に分解する、仮想文書を生成する、検索先をroutingする、といった処理を行う。

> **図TODO: クエリ正規化の全体像**  
> `$image prompt: 日本語の技術資料向けに、クエリ正規化の全体像を描く。User Queryを中央左に置き、Query Rewriting、Query Expansion、Query Decomposition、HyDE、Routing、Conversational Rewriteへ分岐させる。それぞれが Retrieval Query または Route Decision に変換され、Sparse/Dense/Graph/SQL Retrieverへ渡る流れを示す。白背景、横長。`

### 4.1.1 query rewriting（推奨）

Query rewritingは、ユーザー質問を検索向けに書き換える手法である。Rewrite-Retrieve-Readは、従来のretrieve-then-readに対して、検索クエリ自体をLLMで書き換える枠組みを提案した [35]。この研究は、入力文と検索に必要な知識との間にはギャップがあるため、retrieverやreaderだけでなくqueryを適応させることが重要だと示している。

実装では、会話履歴を含む質問をstandalone questionに変換する。

```text
会話履歴:
User: 製品AのStandardプランについて教えて
User: それの解約条件は？

rewritten query:
製品A Standardプランの解約条件
```

query rewritingの注意点は、LLMがユーザー意図を変えてしまうことである。rewrite結果をログに残し、元質問とrewrite質問の両方で検索するfallbackを用意すると安全である。

### 4.1.2 query expansion（推奨）

Query expansionは、検索漏れを減らすために関連語、同義語、略語、説明文を追加する手法である。Query2docは、LLMでpseudo-documentを生成し、それをqueryに追加することでsparse retrievalとdense retrievalの両方を改善できることを示した [14]。

実装では、製品略称、社内略語、英日表記揺れ、旧名称・新名称の辞書を組み合わせると効果が出やすい。たとえば「SSO」を「Single Sign-On」「シングルサインオン」「IdP連携」に展開する。

ただし、過剰なexpansionはノイズを増やす。expansion語は、ドメイン辞書、過去検索ログ、retrieval評価で検証し、無制限に追加しない。

### 4.1.3 query decomposition（発展）

Query decompositionは、複雑な質問を複数のサブ質問に分解する手法である。マルチホップQAや業務調査では、一回の検索で全根拠を取るのが難しい。IRCoTは、Chain-of-Thoughtの各ステップとretrievalをinterleaveし、推論の途中で必要な情報を検索する手法を提案した [15]。

実装例は次のようになる。

```text
Original question:
製品Aの2025年価格改定は、APACの既存契約顧客にいつから適用されるか？

Subqueries:
1. 製品A 2025年 価格改定 発表日
2. 製品A APAC 価格改定 適用地域
3. 製品A 既存契約顧客 価格改定 適用条件
4. 製品A 価格改定 effective_from
```

decompositionでは、サブ質問の数を制御する。多すぎるとコストとレイテンシが増えるため、max_subqueries、max_retrievals、timeoutを設定する。

### 4.1.4 HyDE（発展）

HyDE（Hypothetical Document Embeddings）は、LLMに仮想的な回答文書を生成させ、その文書のembeddingで検索する手法である [13]。ユーザー質問そのものは短く曖昧でも、仮想文書は検索対象に近い表現を含むため、zero-shot dense retrievalを改善できる。

HyDEのポイントは、生成された仮想文書が事実として正しい必要はないことである。仮想文書は検索用のquery representationとして使われ、実際の回答根拠はcorpus内の実文書から取得する。論文では、生成文書に誤情報が含まれても、dense encoderが情報を圧縮し、実corpus側でgroundingされると説明されている [13]。

実装では、HyDEはドメイン文書の表現がユーザー質問と大きく異なる場合に有効である。一方で、規程や契約のように厳密な語句一致が重要な場合は、BM25やmetadata filterと併用する。

### 4.1.5 routing（推奨）

Routingは、質問の種類に応じて検索先や処理方針を切り替える手法である。FAQは文書検索、数値集計はSQL、関係探索はGraph、画像の内容確認はMultimodal index、一般会話は検索なし、といった分岐を行う。

routingは、規則ベース、分類モデル、LLM judge、embedding類似度、過去ログから学習したrouterで実装できる。最初は規則ベースで十分なことが多い。たとえば、質問に「件数」「合計」「直近30日」が含まれる場合はSQL tool候補を出し、「図」「スクリーンショット」「表」が含まれる場合はMultimodal retrieval候補を出す。

routingの失敗は重大である。検索すべき質問を検索なしにしたり、SQLで答えるべき質問を文書だけで答えたりすると、正解率が下がる。routing判断、候補router、最終routeをtrace logに残す。

### 4.1.6 conversational query rewriting（推奨）

Conversational RAGでは、現在の質問だけでは検索意図が分からない。CONQRRは、会話中の質問をstandalone questionに書き換えるquery rewriting modelを提案し、retrievalに直接最適化する学習を行った [46]。ConvDRは、会話履歴を考慮したdense retrievalを行う [47]。

実装では、会話履歴をすべてretrieverに渡すのではなく、現在の質問に必要な情報だけを抽出してstandalone queryにする。履歴が長いほどノイズが増えるため、会話メモリと検索クエリを分ける。

### 4.1.7 強みと限界（推奨）

クエリ正規化の強みは、retrieverを変更せずに検索品質を改善できることである。特にPoCから本番移行する段階では、query rewriting、domain dictionary、multi-query、HyDEの追加で大きく改善することがある。

限界は、LLMによる書き換えが誤ること、コストとレイテンシが増えること、評価が難しくなることである。rewrite結果が妥当でも検索結果が悪い場合もあるし、rewriteが意図を変えて検索結果が悪化する場合もある。そのため、元queryとrewrite queryの両方でretrieval metricsを取り、ablationで効果を確認する。

## 4.2 Sparse retrieval（必須）

Sparse retrievalは、単語やtokenの一致に基づく検索である。代表例はTF-IDFとBM25である。dense retrievalが普及しても、sparse retrievalは本番RAGで依然として重要である。理由は、固有名詞、製品コード、エラーメッセージ、型番、条文番号、API名のような正確一致に強いからである。

> **図TODO: Sparse retrievalの直感**  
> `$image prompt: 日本語の技術資料向けに、Sparse retrievalの仕組みを説明する図を作る。Queryのキーワードが転置インデックスを通じて、同じ単語を含む文書chunkにマッチする流れを描く。TF-IDF、BM25、Inverted Index、Exact Matchというラベルを入れる。dense retrievalとの違いとして「語が一致する強さ」を注記する。白背景、横長。`

### 4.2.1 TF-IDF（推奨）

TF-IDFは、term frequency（文書内での語の頻度）とinverse document frequency（コーパス全体での希少性）を組み合わせる古典的手法である。多くの文書に出る一般語の重みを下げ、特定文書に特徴的な語の重みを上げる。

TF-IDFは単純で説明可能だが、語順、意味、同義語、文脈を扱えない。日本語では形態素解析やtokenizationの品質にも依存する。現在のRAGでは、TF-IDF単体よりBM25やlearned sparse retrievalを使うことが多いが、基本概念として重要である。

### 4.2.2 BM25（必須）

BM25は、確率的情報検索の枠組みに基づく古典的かつ強力なランキング関数である [8]。TFの飽和と文書長補正を持つため、単純なTF-IDFより実用的な検索品質を出しやすい。DPR論文でも、従来のopen-domain QAではTF-IDFやBM25がde facto methodだったと述べられている [9]。

BM25の実務上の強みは、正確一致、説明可能性、低コスト、低レイテンシ、運用実績である。弱点は、同義語や意味的類似に弱いこと、ユーザー質問と文書表現が異なる場合に検索漏れしやすいことである。

### 4.2.3 BM25F / fielded retrieval（推奨）

BM25Fは、title、heading、body、tagなど複数fieldを持つ文書に対して、fieldごとに重みを変える考え方である。企業文書では、titleやheadingに重要語が含まれることが多いため、bodyと同じ扱いにしない方がよい。

実装では、`title^3 + heading^2 + body` のようにfield boostを設定する。製品名、文書種別、タグ、FAQ質問文を高く重みづけすると、RAGの初期検索が安定することがある。

### 4.2.4 learned sparse retrieval: SPLADE / uniCOIL / DeepImpact（発展）

Learned sparse retrievalは、ニューラルモデルで語彙空間上のsparse表現を学習し、従来の転置インデックスの利点を活かしながら意味的な語彙拡張を行う方向である。SPLADEは、明示的なsparsity regularizationとlog-saturationにより、非常にsparseな表現を学習し、dense/sparse手法に対して競争力を示した [48]。

learned sparseは、BM25より意味的な拡張ができ、dense retrievalより説明しやすい場合がある。ただし、学習・indexサイズ・運用複雑性が上がる。日本語や社内ドメインでは、モデルとtokenizerの適合性を評価する必要がある。

### 4.2.5 強みと限界（必須）

Sparse retrievalの強みは、正確一致、速度、コスト、説明可能性である。製品コード、型番、URL、API名、エラーコード、条文番号、日付などではdense retrievalより安定することが多い。

限界は、意味的な言い換えに弱いことである。ユーザーが「ログインできない」と言い、文書が「認証失敗」と書いている場合、単語一致だけでは拾いにくい。したがって実務では、BM25を単独で使うより、dense retrievalやquery expansionと組み合わせる。

## 4.3 Dense retrieval（必須）

Dense retrievalは、質問とchunkをembeddingに変換し、ベクトル類似度で検索する。単語が一致しなくても意味が近い文書を見つけられるため、RAGの中心技術になっている。

> **図TODO: Dense retrievalの直感**  
> `$image prompt: 日本語の技術資料向けに、Dense retrievalの仕組みを説明する図を作る。QueryとDocument ChunksがそれぞれEmbedding Modelを通ってベクトルになり、Vector Indexで近いベクトルをtop-k取得する流れを描く。cosine similarity、ANN、semantic matchという注記を入れる。白背景、横長。`

### 4.3.1 DPR（Dense Passage Retrieval）（推奨）

DPRは、open-domain QAにおいて、質問encoderとpassage encoderを使うdual-encoderでdense retrievalを実用化した代表的研究である [9]。DPRは、質問と正解passageのembeddingが近く、負例passageが遠くなるように学習する。

DPR型の利点は、文書embeddingをofflineで事前計算できるため、online検索が高速になることである。欠点は、単一ベクトルに文書全体の意味を圧縮するため、長いchunkや複数論点を含むchunkでは情報が失われやすいことである。

### 4.3.2 ColBERT（発展）

ColBERTは、queryとdocumentをtoken単位のembeddingにし、late interactionで細粒度の類似度を計算する [10]。単一ベクトルretrievalより表現力が高く、cross-encoderより高速にできる。ColBERTv2は、residual compressionとdenoised supervisionにより、late interactionの品質とspace footprintを改善した [12]。

実務でColBERT系を使う場合、indexサイズと検索レイテンシに注意する。単一ベクトルより重いが、BM25とdense retrieverの中間的な選択肢として有効である。特に、細かい語句対応と意味対応の両方が必要な技術文書検索に向く。

### 4.3.3 ANCE / Contriever / E5 / BGE（推奨）

ANCEは、ANN indexからhard negativeを取得して学習することで、dense retrieverの訓練時負例と検索時負例のギャップを減らす [11]。Contrieverは教師なしcontrastive learningにより、ラベルなしでも強いretrieverを構築する方向を示した [42]。E5やBGEのような汎用embeddingモデルは、検索・分類・クラスタリングなどに広く使われる。実務では、モデルの公開ベンチマークだけでなく、自社データのgolden datasetで評価する必要がある。

### 4.3.4 multi-vector / late interaction / instruction embedding（発展）

dense retrievalには、1 chunkを1ベクトルにするsingle-vector方式だけでなく、複数ベクトルを持つmulti-vector方式、token-level interactionを使うlate interaction方式、検索指示を含めるinstruction embedding方式がある。

single-vectorは速く安価だが、長いchunkでは情報圧縮が粗い。multi-vectorは精度向上が期待できるが、indexサイズと計算量が増える。instruction embeddingでは、query側に「Represent this question for retrieving passages」のようなtask instructionを付けることがあり、embeddingモデルによっては性能に影響する。

### 4.3.5 強みと限界（必須）

Dense retrievalの強みは、意味的類似、同義語、言い換え、曖昧な質問に強いことである。ユーザー質問が文書の表現と異なっても関連文書を拾える。

限界は、固有名詞やコード、数値、否定条件、権限filter、最新性、文書版を自然には扱えないことである。また、embeddingモデルを変えるとベクトル空間が変わるため、index再構築が必要になる。dense retrieval単体で本番RAGを作るより、sparse retrieval、metadata filter、rerankを組み合わせるべきである。

## 4.4 Hybrid retrieval（必須）

Hybrid retrievalは、sparse retrievalとdense retrievalを組み合わせる手法である。BM25は正確一致に強く、dense retrievalは意味的類似に強い。両者は補完関係にあるため、企業RAGではhybrid retrievalが現実的な標準構成になりやすい。

> **図TODO: Hybrid retrievalとRRF**  
> `$image prompt: 日本語の技術資料向けに、Hybrid retrievalの流れを図示する。User QueryからBM25 RetrieverとDense Retrieverに並列に分岐し、それぞれTop-k候補を返す。Candidate Mergerで重複排除し、RRFまたはScore Fusionで順位統合し、Rerankerへ渡す。BM25はExact Match、DenseはSemantic Matchと注記する。白背景、横長。`

### 4.4.1 RRF（Reciprocal Rank Fusion）（推奨）

RRFは、複数検索器のランキングを順位ベースで統合するシンプルな手法である [16]。scoreのスケールがretrieverごとに異なっても、順位を使うため扱いやすい。

RRFの典型式は次のように表せる。

```text
score(d) = Σ_i 1 / (k + rank_i(d))
```

ここで `rank_i(d)` はretriever iにおける文書dの順位である。RRFはパラメータが少なく、BM25とdense retrievalの統合に使いやすい。欠点は、scoreの絶対値や信頼度を細かく反映しにくいことである。

### 4.4.2 score normalization / weighted fusion（推奨）

score normalizationは、BM25 score、embedding similarity、metadata scoreなどを正規化し、重み付きで統合する方法である。たとえば、title一致を高く、古い文書を低く、source_trust_levelが高い文書を高くする。

weighted fusionは柔軟だが、scoreの校正が難しい。BM25のscoreとcosine similarityは分布が異なるため、単純な足し算は危険である。golden datasetで重みを探索し、クエリタイプ別に最適化する。

### 4.4.3 multi-query / RAG-Fusion（推奨）

multi-query retrievalは、LLMで複数の検索クエリを生成し、それぞれの結果を統合する。RAG-Fusionは、複数クエリとRRFを組み合わせる実践パターンとして知られる。研究としてはquery expansionやquery rewritingの系譜に位置づけられる [14][35]。

multi-queryはrecallを上げやすいが、ノイズとコストも増える。実装では、生成クエリ数、類似クエリの削除、各クエリのtop_k、RRF後の候補数を制御する。

### 4.4.4 metadata-aware hybrid retrieval（必須）

実務では、hybrid retrievalにmetadata filterを組み合わせることが重要である。たとえば、`tenant_id`、`acl`、`product`、`region`、`language`、`effective_from/effective_to`で絞り込んだ上で、BM25とdense retrievalを行う。

filterを検索前にかけるか、検索後にかけるかはトレードオフである。検索前filterは安全で効率的だが、候補集合が小さすぎるとrecallが落ちることがある。権限filterは必ず検索前または検索時にかけ、製品や日付filterはクエリ確度に応じてsoft filterにすることもある。

### 4.4.5 強みと限界（必須）

Hybrid retrievalの強みは、語彙一致と意味一致の補完である。特に日本語の社内文書、製品名、エラーコード、API名、略語が多い環境では、denseだけより安定しやすい。

限界は、候補数が増え、統合・重複排除・rerankが必要になることだ。hybrid化すれば必ず良くなるわけではない。search depth、fusion方式、rerankerの有無、metadata filterを評価で調整する。

## 4.5 Active retrieval（発展）

Active retrievalは、いつ検索するか、何を検索するか、何回検索するかを動的に制御する手法である。従来のRAGは、入力質問に対して一度だけ検索することが多い。しかし、長文生成や複雑な質問では、生成途中で追加情報が必要になることがある。

> **図TODO: Active retrievalの制御ループ**  
> `$image prompt: 日本語の技術資料向けに、Active retrievalの制御ループを描く。Question -> Initial Retrieval -> Generate Draft -> Confidence / Evidence Check -> 追加検索が必要なら Query Update -> Retrieval に戻る、十分なら Final Answerへ進む流れを示す。FLARE、Self-RAG、CRAG、Adaptive-RAGを右側に代表手法として配置する。白背景、横長。`

### 4.5.1 軽量な制御（推奨）

実務では、研究手法をそのまま再現する前に、軽量な制御から始めるのがよい。

**retrieval gating** は、検索が必要な質問だけ検索する。一般会話や文体変換では検索しない。これにより、不要なコストと検索ノイズを避ける。

**confidence-based retry** は、上位検索結果のscore、retriever間一致、reranker score、引用可能chunk数が低い場合だけ、クエリを書き換えて再検索する。

**sub-question planning** は、複雑な質問をサブ質問に分けて検索する。multi-hop QAや業務調査に有効だが、サブ質問数を制御する。

**verification retrieval** は、生成後に主張ごとに根拠があるか追加検索・照合する。RARRのようなpost-hoc attribution手法に近い考え方である [49]。

**budgeted loop** は、追加検索の最大回数、最大コスト、最大レイテンシを制限する。Agentic RAGでも必須の制御である。

### 4.5.2 FLARE（発展）

FLARE（Forward-Looking Active Retrieval）は、生成予定の次文を一時的に予測し、その内容をqueryとして検索し、低信頼tokenがある場合に検索結果を使って文を再生成する手法である [17]。長文生成では、最初の質問だけでは後続の段落で必要になる情報をすべて検索できないため、生成過程に応じて検索する発想が重要になる。

実務で完全なFLAREを実装するのは重いが、「段落ごとに次に必要な根拠を検索する」「低confidenceやunsupported claimを検出したら再検索する」という形で簡略化できる。

### 4.5.3 Self-RAG（発展）

Self-RAGは、モデルが検索要否、検索結果の有用性、生成内容の支持性をreflection tokenで制御する手法である [18]。固定数のpassageを常に入れるのではなく、必要に応じて検索し、検索結果と生成を自己評価する。

実務では、Self-RAGの学習済みモデルをそのまま使うより、検索要否分類器、evidence sufficiency judge、answer verifierを外付けで実装することが多い。重要なのは、検索結果を盲目的に使わず、検索が必要か、根拠は十分か、回答は根拠に支えられているかを判定することである。

### 4.5.4 CRAG（Corrective Retrieval-Augmented Generation）（発展）

CRAGは、retrieved documentsの品質を軽量なretrieval evaluatorで評価し、信頼度に応じて検索行動を切り替える手法である [74]。検索結果が不十分な場合、Web検索などの外部検索を使い、decompose-then-recomposeで重要情報に集中する。

実務では、CRAGの考え方を次のように実装できる。

```text
Retrieve
  -> Evidence evaluator
      -> high confidence: answer
      -> low confidence: rewrite and retry
      -> no evidence: refuse
      -> conflicting: show uncertainty or ask clarification
```

### 4.5.5 Adaptive-RAG / Self-Route（発展）

Adaptive-RAGは、質問の複雑さに応じて、検索なし、単発RAG、反復RAGなどを選ぶ [22]。Long-context LLMとRAGの比較研究では、リソースが十分ならlong-contextが強い場面がある一方、RAGは低コストであるため、Self-RouteのようにRAGとlong-contextをroutingする方法が提案されている [50]。

実務では、すべての質問を高コストなagentic flowに回すのではなく、単純質問は低コストRAG、複雑質問はmulti-step RAG、全文読みが必要な場合だけlong-contextへroutingする。

### 4.5.6 強みと限界（発展）

Active retrievalの強みは、不要な検索を減らし、必要な場面で追加検索できることである。複雑な調査、長文生成、マルチホップQAに向く。

限界は、制御が複雑になること、レイテンシとコストが増えやすいこと、評価が難しくなることである。実装時には、全stepのtrace、tool call、query、retrieved chunks、judge結果、停止理由を残す。

---

# 5. Post-retrieval（Online Layer）（必須）

Post-retrievalは、検索結果をLLMが利用できる根拠へ変換する工程である。retrieverの上位結果をそのままLLMに渡すと、重複、ノイズ、古い版、低信頼ソース、長すぎるchunkが混ざる。Post-retrievalの品質が、RAGのgroundingと引用品質を左右する。

> **図TODO: Post-retrievalの全体像**  
> `$image prompt: 日本語の技術資料向けに、Post-retrievalの処理フローを図示する。Retrieved Candidates -> Reranking -> Metadata/ACL Filter -> Deduplication -> Compression -> Context Packing -> Generation Context の流れを描く。各ステップの目的として precision向上、権限制御、重複削減、token削減、根拠配置を短く注記する。白背景、横長。`

## 5.1 Reranking（必須）

Rerankingは、初期retrieverが取得した候補を、より精密なモデルで並べ替える工程である。初期retrieverは高速に広く候補を取る役割を持ち、rerankerはqueryとcandidateの関係を深く見る。

### 5.1.1 RRF（Reciprocal Rank Fusion）（推奨）

RRFは、厳密にはrerankerというよりrank fusion手法である。BM25とdense retrieverなど複数ranked listを統合するために使う [16]。RRFは学習不要で堅牢なため、hybrid retrievalの最初の統合手段として有用である。

### 5.1.2 Cross-encoder reranker（推奨）

Cross-encoderは、queryとdocumentを一緒にTransformerへ入力し、関連度scoreを出す。queryとdocumentのtoken間相互作用を直接見られるため精度が高いが、候補ごとに推論が必要で遅い。実務では、retrieverでtop 50〜200程度を取得し、cross-encoderでtop 5〜20に絞る構成が多い。

### 5.1.3 monoT5 / RankT5（発展）

monoT5は、T5を文書ランキングに使い、関連/非関連のtarget token logitからscoreを得る [51]。RankT5は、T5ベースのランキングモデルにpairwise/listwise ranking lossesを導入する [52]。生成系モデルをrerankingに使うことで、より柔軟な関連度判断ができる一方、推論コストは高くなる。

### 5.1.4 LLM reranker / listwise reranker（発展）

LLMをrerankerとして使う方法もある。queryと候補一覧を渡し、最も関連する候補を選ばせるlistwise rerankingは、少数候補では有効なことがある [53]。ただし、LLM rerankerはレイテンシ、コスト、再現性、position biasに注意する。重要な本番系では、LLM judgeの出力をそのまま信頼せず、評価データで校正する。

### 5.1.5 強みと限界（必須）

Rerankingの強みは、retrieverのrecallを維持しつつprecisionを上げられることである。弱点は、候補数に比例してレイテンシとコストが増えることである。rerankerを入れる場合は、初期候補数、rerank後候補数、モデルサイズ、batching、cache、timeoutを設計する。

## 5.2 Filter（必須）

Filterは、候補をmetadata、ACL、日付、版、言語、製品、地域、信頼度で絞る工程である。Filterにはhard filterとsoft filterがある。

Hard filterは、絶対に満たすべき条件である。tenant_id、acl、confidentiality、削除済み文書、有効期限外文書はhard filterにする。Soft filterは、満たすと望ましい条件である。product、region、document_type、source_trust_levelなどは、queryの確度に応じてsoft boostにすることもある。

Filterの注意点は、強すぎるfilterがrecallを落とすことである。たとえばユーザーが地域を明示していないのにregion=JPでhard filterすると、グローバル文書を落とす可能性がある。ACLのような安全要件はhard、意味的条件は評価に基づいて調整する。

## 5.3 Deduplication（必須）

Deduplicationは、重複候補を統合する工程である。同じ文書の隣接chunk、同じFAQの複製、旧版と新版、ミラーサイト、同一内容のPDFとHTMLが同時に検索されると、contextが重複で埋まり、LLMに渡せる根拠が減る。

実装では、document_id、source_url、content hash、semantic similarity、heading_path、versionを使って重複を検出する。同一文書の隣接chunkは、回答に必要ならmergeする。旧版と新版が両方ある場合は、effective dateとversionで優先順位を決める。

## 5.4 Compression（推奨）

Compressionは、検索候補から回答に必要な情報だけを抽出・要約し、トークン数を削減する工程である。RECOMPは、retrieved documentsを要約してcontextに入れることで、コストを下げ、LLMが重要情報を見つけやすくする手法を提案した [54]。LLMLinguaとLongLLMLinguaは、prompt compressionにより長文contextのコスト、レイテンシ、位置バイアスを改善する方向を示した [55][56]。

Compressionにはextractive compressionとabstractive compressionがある。Extractiveは根拠文をそのまま抜き出すため引用しやすい。Abstractiveは複数文書の情報をまとめやすいが、要約段階でハルシネーションが入る可能性がある。RAGの根拠として使う場合、引用可能性を重視するならextractiveを優先する。

実装では、compression後も元chunk_id、文書ID、ページ番号、抜粋範囲を保持する。要約だけをLLMに渡すと、最終回答の引用が追跡できなくなる。

## 5.5 Context packing（必須）

Context packingは、LLMに渡す根拠をトークン予算内に配置する工程である。単にrerank上位順に詰めるだけでは不十分である。Lost in the Middleは、長いcontextの中央にある情報をLLMが使いにくいことを示した [57]。重要な根拠を先頭または末尾に置く、根拠ごとに短い見出しを付ける、主張単位で整理する、といった工夫が必要になる。

Context packingでは、以下を設計する。

| 設計項目 | 説明 |
|---|---|
| evidence budget | 根拠に使える最大token数 |
| instruction budget | system/developer instruction用token |
| answer budget | 回答生成用token |
| ordering | 重要度順、文書順、時系列順、論点順 |
| grouping | 同一文書・同一section・同一subquestionでまとめる |
| citation marker | `[doc:chunk]` など引用IDを付ける |
| conflict handling | 矛盾する根拠を並べ、優先順位を明示する |

> **図TODO: Context packingとLost in the Middle**  
> `$image prompt: 日本語の技術資料向けに、Context packingの重要性を図示する。長いプロンプトを横長の帯で描き、先頭・中央・末尾に根拠が配置された場合を示す。中央の根拠は見落とされやすいという注記を入れ、改善策として重要根拠を先頭に置く、論点ごとにまとめる、引用IDを付ける、圧縮する、を示す。白背景。`

---

# 6. Generation（Online Layer）（必須）

Generationは、検索・整形された根拠を使ってLLMが回答を生成する工程である。ここでは、grounded prompt、回答形式、引用整形、拒否方針、検証が重要になる。

## 6.1 Grounded prompt（必須）

Grounded promptは、LLMに対して、検索された根拠に基づいて回答し、根拠不足時には拒否し、引用を明示するよう指示するpromptである。

実務で有効なpromptは、単なる「以下のcontextに基づいて答えて」ではなく、回答可能条件、引用形式、根拠不足時の動作、矛盾時の動作、禁止事項、出力schemaを含む。

```text
あなたは社内ドキュメントQAアシスタントです。
以下のEvidenceに含まれる情報だけを根拠に回答してください。
Evidenceに根拠がない場合は「提供された資料内では確認できません」と答えてください。
各主張には、対応するcitation_idを付けてください。
矛盾するEvidenceがある場合は、文書のversion、effective_from、source_trust_levelを優先して判断し、判断できない場合は不確実性を明記してください。
```

> **図TODO: Grounded generationの流れ**  
> `$image prompt: 日本語の技術資料向けに、Grounded generationの流れを描く。Context Packed EvidenceとGrounded PromptがLLMに入り、Answer Draft、Citation Mapping、Answerability Check、Final Answerへ進む。根拠不足時はRefusalへ分岐する。白背景、横長。`

## 6.2 LLM生成（必須）

LLM生成では、回答の内容だけでなく、形式、引用、拒否、トーン、言語、機密情報の扱いを設計する。

### 6.2.1 回答形式（必須）

回答形式は、ユースケースに応じて決める。FAQなら短い自然文、調査支援なら要点・根拠・補足、API連携ならJSON、レビュー支援なら差分表、契約QAなら条項別説明が向く。

形式を安定させたい場合は、JSON schemaやMarkdown templateを使う。ただし、引用や根拠付き回答では、schemaが複雑すぎるとLLMが形式違反しやすい。重要な項目から始め、format adherenceを評価する。

### 6.2.2 引用整形（必須）

引用整形では、回答中の主張と根拠chunkを対応づける。ALCEは、LLMがcitation付き回答を生成するための評価ベンチマークであり、fluency、correctness、citation qualityの観点を提示した [58]。HAGRIDは、attributed explanationを含むgenerative information-seeking datasetとして、引用付き回答の構築に役立つ [59]。

実務では、citationは文末にまとめるだけでは不十分なことがある。重要な主張ごとにcitation_idを付ける。表や画像を根拠にする場合は、document_id、page、table_id、figure_id、bounding box、timestampを含める。

### 6.2.3 拒否方針（必須）

拒否方針は、RAGの信頼性を決める。根拠が不足している場合、LLMは推測で埋めてはいけない。回答不能時には、検索できなかった理由を簡潔に述べ、必要であれば追加情報を求める。

拒否方針は、質問が曖昧な場合、権限外情報が必要な場合、根拠が見つからない場合、根拠が矛盾する場合、信頼度が低い場合で分ける。

```text
根拠なし: 提供された資料内では確認できません。
権限外: この情報へのアクセス権がないため回答できません。
曖昧: 対象製品または対象期間を指定してください。
矛盾: 資料間で記載が異なるため、最新版または所管部門の確認が必要です。
```

## 6.3 検証（必須）

検証は、生成後の回答が根拠に支えられているかを確認する工程である。RARRは、任意の生成文に対して検索で根拠を探し、unsupportedな内容を修正するpost-hoc attribution手法を提案した [49]。検証では、回答をclaim単位に分解し、各claimに対応するevidenceがあるかを確認する。

実装では、次のようなpipelineにする。

```text
answer draft
  -> claim extraction
  -> evidence matching
  -> support classification
  -> citation validation
  -> revise or refuse
```

検証はLLM-as-a-judge、NLIモデル、ルール、引用ID照合を組み合わせる。高リスク領域では、人手レビューや承認フローへ接続する。

---

# 7. 評価（必須）

RAG評価は、retrieval、generation、end-to-endを分けて行う。Yu et al.のsurveyは、RAG評価ではretrieval側とgeneration側、さらに全体評価を分けて考える必要があると整理している [5]。RAGAS、ARES、RAGCheckerのような自動評価手法も登場しているが、LLM judgeだけに依存せず、人手評価で校正する必要がある [20][21][60]。

> **図TODO: RAG評価の3層構造**  
> `$image prompt: 日本語の技術資料向けに、RAG評価の3層構造を描く。下から Retrieval Evaluation、Generation Evaluation、End-to-end Evaluation の3層ピラミッドにする。Retrievalには recall@k, MRR, nDCG、Generationには correctness, faithfulness, citation、End-to-endには task success, latency, cost, user feedback を配置する。右側に Golden Dataset と Regression Test を接続する。白背景。`

## 7.1 Pre-retrieval評価（必須）

Pre-retrieval評価では、文書取り込み、parser、OCR、chunking、metadata、ACL、embedding、index freshnessを評価する。多くのRAG評価は回答だけを見がちだが、文書解析やchunkingの失敗は後段で見えにくい。

評価項目は次の通りである。

| 評価対象 | 指標・観点 |
|---|---|
| ingestion | 取り込み成功率、失敗件数、同期遅延、削除反映時間 |
| parser/OCR | 文字抽出精度、表構造保持、ページ番号保持、layout順序、OCR confidence |
| chunking | 正解根拠が1chunkに収まるか、chunk長分布、overlap重複率 |
| metadata | 必須metadata欠損率、誤付与率、version/effective dateの妥当性 |
| ACL | 権限外chunk混入率、権限変更反映時間 |
| embedding | embedding生成失敗率、model_version一致、言語別品質 |
| index | index freshness、document count差分、search latency、recall sanity check |

文書layout解析では、DocLayNetやPubLayNetのようなベンチマークで使われるmAPなどの指標があるが、RAG実務ではdownstream QAへの影響も見る必要がある [39][40]。

## 7.2 Retrieval評価（必須）

Retrieval評価では、正解根拠が候補に入っているか、どの順位に出るか、不要な候補がどれだけ混ざるかを測る。

### 7.2.1 指標（必須）

| 指標 | 意味 | 使いどころ |
|---|---|---|
| recall@k | 正解根拠が上位k件に含まれる割合 | RAGでは最重要。正解が候補に入らないと回答不能 |
| precision@k | 上位k件のうち関連chunkの割合 | contextノイズ量を見る |
| MRR | 最初の正解根拠が何位に出たか | top順位の品質を見る |
| nDCG | 関連度と順位を考慮した指標 | 多段階関連度がある場合に有効 |
| hit rate | 正解文書または正解chunkが含まれたか | シンプルな回帰テストに向く |
| filter accuracy | ACL、文書版、日付、ソース種別filterが正しいか | 本番運用で重要 |
| latency | 検索のp50/p95 | UXとコストに直結 |
| cost | embedding/API/rerank前の検索コスト | 大量利用で重要 |

Retrieval評価では、正解根拠の粒度を決める必要がある。document単位で正解とするのか、chunk単位で正解とするのか、sentenceまたはclaim単位で正解とするのかで指標が変わる。契約や規程では、chunk単位より条項・文単位の評価が必要になることがある。

## 7.3 Post-retrieval評価（必須）

Post-retrieval評価では、reranking、filter、deduplication、compression、context packingが、retrieval候補をどれだけ改善したかを見る。

rerankingは、rerank前後のMRR、nDCG、precision@k、answer correctnessで評価する。Filterは、権限外文書の混入率と過剰filterによるrecall低下を測る。Deduplicationは、context内重複率、同一文書偏り、版衝突の削減を見る。Compressionは、compression rate、faithfulness、citation traceability、回答品質への影響を見る。Context packingは、正解根拠の位置、使用率、Lost in the Middle耐性を見る [57]。

## 7.4 Generation評価（必須）

Generation評価では、回答が正しいか、根拠に支えられているか、引用が適切か、形式を守っているかを評価する。

### 7.4.1 指標（必須）

| 指標 | 意味 |
|---|---|
| answer correctness | 回答内容が正しいか |
| faithfulness / groundedness | 回答が提示根拠に支えられているか |
| context relevance | 使われた根拠が質問に関連しているか |
| citation precision | 引用が該当主張を支えているか |
| citation recall | 必要な根拠が引用されているか |
| refusal accuracy | 根拠不足時に適切に拒否できるか |
| format adherence | 指定JSONやMarkdown形式を守るか |
| unsupported claim rate | 根拠なし主張の割合 |
| contradiction handling | 矛盾する根拠を正しく扱えるか |

ALCEはcitation付き生成をfluency、correctness、citation qualityで評価する [58]。AISは、自然言語出力が特定されたsourceにattributableかを評価する枠組みを提供する [61]。

## 7.5 End-to-end評価（必須）

End-to-end評価では、ユーザーの業務目的が達成されたかを見る。task success rate、human preference、p50/p95 latency、cost per answer、escalation rate、user feedback、unsupported claim rate、hallucination incident rateを測る。

End-to-end評価だけでは、失敗原因がretrievalなのかgenerationなのか分からない。そのため、end-to-end評価は必ずretrieval評価とgeneration評価に分解する。

## 7.6 RAG特有の失敗パターン（必須）

RGBベンチマークは、RAGに必要な能力として、noise robustness、negative rejection、information integration、counterfactual robustnessを定義した [6]。

### 7.6.1 noise robustness（必須）

Noise robustnessは、検索結果に無関係な文書が混ざっても、それに引きずられず正しく答えられるかである。本番RAGではノイズ混入が普通に起きるため、readerのノイズ耐性は重要である。RAGGEDも、reader robustness to noiseがRAGの安定性に大きく影響することを示している [7]。

### 7.6.2 negative rejection（必須）

Negative rejectionは、知識ベースに答えがない質問に対して、回答を捏造せず拒否できるかである。RAGの本番品質は、答えられる質問に答えることだけでなく、答えてはいけない質問に答えないことで決まる。

### 7.6.3 information integration（必須）

Information integrationは、複数の根拠を統合して回答できるかである。契約条件、価格改定、障害対応、法令適用などは、複数文書の統合が必要になることが多い。

### 7.6.4 counterfactual robustness（必須）

Counterfactual robustnessは、LLMの内部知識や事前常識と検索根拠が異なる場合に、検索根拠を優先できるかである。社内固有ルールや最新変更では、この能力が重要になる。

> **図TODO: RAG失敗パターンの分類**  
> `$image prompt: 日本語の技術資料向けに、RAG特有の失敗パターンを4象限で描く。Noise Robustness、Negative Rejection、Information Integration、Counterfactual Robustnessをそれぞれ箱にし、短い失敗例と対策を入れる。白背景、技術資料風。`

## 7.7 Golden dataset（必須）

Golden datasetは、RAG評価の基準となる質問・正解・根拠のセットである。最低限、question、answer、gold_document_id、gold_chunk_id、answerability、metadata条件、想定ユーザー権限を含める。

Golden datasetには、answerableだけでなくunanswerable、ambiguous、multi-hop、conflicting、outdated、ACL制約あり、noiseありのケースを含める。業務で起こりやすい失敗パターンを意図的に入れることで、改善の効果を測れる。

## 7.8 Ablationと回帰テスト（必須）

Ablationは、RAG構成要素を一つずつ外して効果を確認する評価である。たとえば、BM25のみ、denseのみ、hybrid、hybrid + rerank、hybrid + rerank + compressionを比較する。RAGは複数部品の組み合わせなので、変更の効果を分離しなければならない。

回帰テストは、モデル、embedding、chunker、parser、index、prompt、rerankerの変更で品質が落ちていないか確認する。CIや定期ジョブでgolden datasetを実行し、recall@k、faithfulness、latency、costを監視する。

## 7.9 自動評価（推奨）

自動評価は、改善サイクルを速くするために有用である。ただし、自動評価は人間評価の代替ではなく、人間評価を補助する仕組みである。

### 7.9.1 RAGAS（推奨）

RAGASは、RAG pipelineをreference-freeに評価するframeworkであり、context precision、context recall、faithfulness、answer relevancyなどの観点を扱う [20]。ground truthがない状況でも、retrieved contextとanswerから評価できるため、初期開発で使いやすい。

実装方針としては、まず開発環境でRAGASを使い、複数構成の比較に使う。次に、人手ラベル付きgolden datasetでRAGAS scoreと人間評価の相関を確認する。RAGASのスコアを絶対値として盲信せず、構成比較と回帰検知に使う。

### 7.9.2 ARES（発展）

ARESは、context relevance、answer faithfulness、answer relevanceを評価するAutomated RAG Evaluation Systemである [21]。合成データを作って軽量なLM judgeをfine-tuneし、少量の人手ラベルをPrediction-Powered Inferenceで利用する点が特徴である。

ARESは、特定ドメインで継続的に評価したい場合に向く。実装には、評価対象ドメインの文書、合成query/answer、少量の人手ラベル、judge training、confidence intervalの扱いが必要になる。PoCではRAGAS、運用で評価精度と統計的信頼区間が必要になったらARES、という段階的導入が現実的である。

### 7.9.3 LLM-as-a-judge（推奨）

LLM-as-a-judgeは、LLMに回答品質を評価させる方法である。G-Evalは、CoTとform-fillingを使ってNLG出力を評価するframeworkを提案した [62]。MT-Bench/Chatbot Arenaの研究は、LLM judgeが人間選好に近い評価を出せる可能性と、position bias、verbosity bias、self-enhancement biasなどの限界を示した [63]。

実装では、judge promptをversion管理し、direct scoringとpairwise comparisonを使い分ける。重要な評価では、回答順序を入れ替える、モデル名を隠す、複数judgeを使う、人手評価で校正する。judgeの出力はtraceに残し、評価の再現性を確保する。

### 7.9.4 RAGChecker / TruLens / DeepEval（推奨）

RAGCheckerは、RAGをclaim-levelで細かく診断し、retrievalとgenerationの両方に対する診断指標を提供するframeworkである [60]。TruLensは、context relevance、groundedness、answer relevanceからなるRAG Triadを実務向けに整理している [64]。DeepEvalは、LLMアプリのunit testに近い形で評価を組み込むframeworkとして使われる [65]。

これらのframeworkは、評価観点を整理するのに有用である。ただし、framework選定よりも、評価データ、評価設計、人手校正、回帰運用の方が重要である。

### 7.9.5 強みと限界（推奨）

自動評価の強みは、改善サイクルを速くできることである。限界は、評価器自体が誤ること、ドメインに依存すること、LLM judgeがバイアスを持つこと、引用・根拠の細かい対応を見落とすことがある点である。

実務では、自動評価、人手評価、本番フィードバック、ログ分析を組み合わせる。

## 7.10 ストレステスト（必須）

ストレステストでは、RAGが通常ケース以外で壊れないかを見る。具体的には、ノイズ文書混入、権限外文書、古い版と新しい版の矛盾、答えがない質問、プロンプトインジェクション、data poisoning、長文context、multi-hop、曖昧質問、多言語、OCR誤りを含める。

> **図TODO: RAG評価とストレステストの全体像**  
> `$image prompt: 日本語の技術資料向けに、RAG評価とストレステストの全体像を図示する。通常評価として Retrieval, Generation, End-to-end を置き、ストレステストとして Noisy Context, Unanswerable, Conflicting Evidence, ACL Violation, Prompt Injection, Data Poisoning, Long Context, OCR Errors を並べる。各結果が Regression Dashboard に集約される流れを描く。白背景、横長。`

---

# 8. 非機能要件（必須）

RAGの非機能要件は、一般的なWebシステムの可用性・性能・セキュリティに加え、検索品質、根拠追跡性、知識更新、評価可能性、プロンプトインジェクション耐性、data poisoning耐性を含む。

非機能要件は次のカテゴリに再分類できる。

| カテゴリ | RAGでの論点 |
|---|---|
| Reliability | 根拠不足時の拒否、ノイズ耐性、矛盾処理、回帰テスト |
| Performance | p50/p95 latency、検索・rerank・LLM推論時間、cache |
| Cost | cost per answer、embedding cost、rerank cost、LLM token cost |
| Security | ACL、tenant isolation、prompt injection、tool権限 |
| Privacy | PII、ログ、データ保持、モデル入力への機密情報送信 |
| Observability | trace、retrieval log、prompt/model/index version、feedback |
| Lifecycle | ingestion、index更新、削除反映、rollback、drift monitoring |
| Governance | source trust、説明責任、監査、human-in-the-loop |

## 8.1 Observability（必須）

Observabilityでは、ユーザー質問、rewrite query、retrieved chunks、scores、filters、rerank結果、context、prompt_version、model_version、index_version、answer、citations、judge結果、latency、costをtraceとして保存する。

ログには機密情報が含まれる可能性があるため、保存期間、マスキング、アクセス権限を設計する。RAGの問題調査では、最終回答だけでなく、どのchunkが検索され、どれがLLMに渡され、どれが引用されたかが必要になる。

## 8.2 Index lifecycle（必須）

Index lifecycleでは、文書追加、更新、削除、権限変更、parser変更、embedding変更を管理する。blue/green indexで新indexを構築し、評価後に切り替え、問題があればrollbackする。

index freshnessを監視し、source更新からindex反映までの遅延を測る。特に法令、価格、障害情報のような鮮度が重要なデータでは、SLOとして定義する。

## 8.3 Security and privacy（必須）

Securityでは、ACLとtenant isolationが最重要である。ユーザーが見てよいchunkだけが検索され、LLMに渡され、ログに残るようにする。tool useでは、各toolのserver-side authorizationを必須にする。

Privacyでは、PIIや機密情報が外部モデルAPIに送信されるか、ログに残るか、評価データに含まれるかを確認する。必要に応じて、PII redaction、local model、private endpoint、data retention設定を使う。

## 8.4 Prompt injection and data poisoning（必須）

Prompt injectionは、文書やユーザー入力に悪意ある指示が含まれ、LLMがそれを命令として扱う攻撃である。LLM-integrated applicationsに対するprompt injection攻撃は広く研究されている [66]。RAGでは、retrieved document内の「前の指示を無視しろ」などの文言が危険になる。

Data poisoningは、攻撃者が知識ベースに悪意ある文書を注入し、RAGの回答を誘導する攻撃である。PoisonedRAGは、RAGのknowledge databaseが新たな攻撃面になることを示し、少数の悪意文書注入でターゲット回答を誘導できることを報告した [67]。

対策として、retrieved contentを命令ではなくデータとして隔離する、source trust levelを使う、低信頼ソースを回答根拠に使わない、文書取り込み時にsecurity scanningを行う、tool実行をLLM出力だけに委ねない、prompt injectionテストを評価に含める。

## 8.5 Drift monitoring（必須）

Drift monitoringでは、質問分布、retrieval score分布、answerability、unsupported claim rate、user feedback、embedding model変更、文書更新量の変化を監視する。

RAGはデータソースが変わるため、静的なモデル評価だけでは不十分である。新製品が追加された、規程が変わった、ユーザーの質問が変わった、文書が大量更新された、parserが変わった、embeddingモデルを更新した、といった変化で品質がdriftする。

## 8.6 Trustworthy RAG（必須）

Trustworthy RAGは、RAGを信頼性、プライバシー、安全性、公平性、説明可能性、説明責任の観点で設計する考え方である [26]。企業利用では、正解率だけでなく、根拠提示、回答不能、権限制御、監査、インシデント対応まで含めて設計する。

> **図TODO: RAG運用監視ダッシュボード概念図**  
> `$image prompt: 日本語の技術資料向けに、RAG運用監視ダッシュボードの概念図を作る。Quality Metrics、Retrieval Metrics、Generation Metrics、Latency/Cost、Index Freshness、Security Events、User Feedback、Drift Signals のカードを並べる。各カードに代表指標を2〜3個ずつ入れる。白背景、ダッシュボード風。`

---

# 9. 高度なRAG（発展）

高度なRAGは、通常RAGの限界を補う拡張である。いきなり高度なRAGから始めるのではなく、まずProduction Baseline RAGを構築し、失敗パターンに応じて導入する。本章は発展編であり、RA-LLM、Conversational RAG、Federated RAG、Structured Data RAG、Long-context RAG、Hierarchical RAG、GraphRAG、Agentic RAG、Multimodal RAGを必要に応じて選択するためのカタログとして読む。

## 9.1 RA-LLM（Retrieval-Augmented Large Language Model）（発展）

RA-LLMは、RAGを単なる推論時の外付け検索としてではなく、LLM、retriever、外部メモリ、学習戦略を含む統合システムとして捉える考え方である。Fan et al.はRA-LLMをarchitecture、training strategy、applicationの観点で整理している [4]。

### 9.1.1 architecture（発展）

RA-LLMのarchitectureには、in-context型、fusion型、cross-attention型、retrieval-integrated pretraining型がある。通常の企業RAGで多いのはin-context型であり、検索結果をプロンプトに挿入してLLMに読ませる。FiD（Fusion-in-Decoder）は複数passageをdecoder側で統合する代表的な設計で、複数根拠の統合に強い [36]。RETROは、生成中に外部データベースから近傍chunkを取得し、モデル構造内で参照するretrieval-enhanced transformerである [37]。REALMは、pretraining段階からretrieverを組み込むretrieval-augmented language modelである [38]。

実務では、モデル構造を変えるRA-LLMよりも、in-context RAGが採用されやすい。理由は、既存LLM APIやOSS LLMを使いやすく、index更新が容易で、学習コストが低いからである。ただし、高精度なドメインRAGや大量トラフィック環境では、retrieval-aware fine-tuningや小型モデルの蒸留を検討する価値がある。

### 9.1.2 training strategy（発展）

RA-LLMのtraining strategyには、retriever training、generator training、joint training、retrieval-aware instruction tuningがある。DPRは質問とpassageをdual-encoderで学習し、dense retrievalを実用的にした [9]。ANCEは、ANN indexから難しい負例を取り出してdense retrieverを改善した [11]。RA-DITは、LLMがretrieved contextをよりよく使うためのLM側fine-tuningと、LMが好む検索結果を返すretriever側fine-tuningを分ける [27]。RAFTは、domain-specific RAG向けに、正しい文書を引用しつつdistractor文書を無視するようモデルを訓練する [28]。

実務では、最初からfine-tuningするよりも、データ整備、hybrid retrieval、rerank、context packing、prompt、評価を先に改善する方が費用対効果が高い。fine-tuningは、十分な評価データがあり、失敗原因が「検索結果は正しいが、LLMが根拠を使えない」または「特定ドメインの引用・拒否・形式遵守を強化したい」と分かった後に検討する。

### 9.1.3 application（発展）

RA-LLMの応用は、open-domain QA、社内QA、医療・金融・法律、教育、推薦、コード生成、マルチモーダルQAなどに広がる。RAGは、単なるQAだけでなく、文書レビュー、根拠付き要約、仕様差分説明、障害調査、チケット分類、レポート生成、意思決定支援にも使える。

応用設計で重要なのは、タスクのリスクと必要な根拠粒度を決めることである。たとえば社内FAQならchunk単位の引用で十分なことが多いが、契約レビューでは条項番号、版、有効期間、例外条件まで必要になる。医療や法務では、RAGの回答を最終判断にせず、人間の専門家レビューへ接続する設計が必要である。

> **図TODO: RA-LLMの設計空間**  
> `$image prompt: 日本語の技術資料向けに、RA-LLMの設計空間を図示する。中央に RA-LLM を置き、周囲に Architecture、Training Strategy、Application の3軸を配置する。Architectureには In-context RAG, Fusion-in-Decoder, RETRO, REALM、Training Strategyには Retriever Training, Generator Tuning, Joint Tuning, RA-DIT, RAFT、Applicationには Enterprise QA, Legal, Medical, Code, Multimodal QA を並べる。白背景、シンプル。`


## 9.2 Conversational RAG（発展）

Conversational RAGは、会話履歴を考慮して検索・回答するRAGである。単発質問と違い、ユーザーは「それ」「さっきの条件」「この場合」のような指示語を使う。会話履歴をそのままcontextに入れるだけでは検索ノイズが増えるため、standalone query rewritingやconversation memoryが必要になる [46][47]。

実装では、会話履歴を2種類に分ける。検索に必要な履歴はquery rewritingに使い、回答に必要なユーザー設定や制約はgeneration contextに入れる。長い会話履歴は要約し、検索クエリには現在の質問に必要な情報だけを入れる。

> **図TODO: Conversational RAG構成図**  
> `$image prompt: 日本語の技術資料向けに、Conversational RAGの構成図を描く。Conversation HistoryとCurrent User Queryが History-aware Query Rewriter に入り、Standalone Queryを生成する。Standalone QueryがRetrieverへ渡り、Retrieved EvidenceとConversation StateがLLMに入り回答する。会話履歴すべてを検索に使わず、必要情報だけ抽出する注記を入れる。白背景、横長。`

## 9.3 Multi-source / Federated RAG（発展）

Multi-source / Federated RAGは、複数の知識源を横断して検索するRAGである。社内文書、FAQ、チケット、CRM、データベース、コード、Graph、Webなどを横断する。Federated RAG for multi-product QAの研究では、複数製品の知識源を扱うRAG-QAの課題が議論されている [68]。

実装では、すべてを単一indexに混ぜるより、sourceごとにretrieverを分け、routerまたはfederated search layerで統合する設計が扱いやすい。各sourceの信頼度、更新頻度、ACL、schema、検索器、引用形式が異なるためである。

## 9.4 Structured Data RAG（発展）

Structured Data RAGは、SQL、表、BI、APIなどの構造化データを扱うRAGである。文書検索だけで数値回答を生成すると、古い情報や曖昧な記述に基づく誤答が起きやすい。数値、件数、日付、在庫、契約状態は、可能な限りDBやAPIから取得する。

実装では、text-to-SQLを直接本番DBに接続しない。schema制限、read-only、row limit、allowed tables、query validation、SQL injection対策、audit logを入れる。LLMはSQL結果を説明する役割に限定し、値そのものは構造化データから取る。

## 9.5 Long-context RAG（発展）

Long-context RAGは、長いcontext windowを持つLLMとRAGを組み合わせる設計である。LongRAGは、従来の短いretrieval unitではなく、4K token程度の長いunitを使い、long retrieverとlong readerの組み合わせを提案した [69]。RAGとlong-context LLMの比較研究では、十分なリソースがある場合はlong-contextが強い場面がある一方、RAGは低コストであるため、routingで使い分けるSelf-Routeが提案された [50]。

実務では、長いcontextに全資料を入れるのではなく、RAGで候補を絞り、必要に応じてlong-contextで広く読む。長いcontextは、token cost、latency、position bias、機密情報混入のリスクがある。

## 9.6 Hierarchical / Tree RAG（発展）

Hierarchical / Tree RAGは、文書を階層構造で扱うRAGである。RAPTORは、chunkをembeddingし、クラスタリングし、要約を再帰的に作るtreeを構築し、推論時に複数抽象度の情報を検索する [19]。MemWalkerも、長文をsummary nodeのtreeに変換し、LLMが木をたどって必要情報を探す方法を提案している [70]。

この構成は、長いレポート、研究論文、議事録、マニュアルのように、局所的な根拠と全体的な文脈の両方が必要な場合に向く。実装では、leaf chunk、section summary、document summary、cluster summaryを別indexにし、質問に応じて粒度を選ぶ。

## 9.7 GraphRAG（発展）

GraphRAGは、エンティティ、関係、コミュニティ、パスなどのgraph構造を使ってretrievalとgenerationを強化するRAGである。GraphRAG surveyは、Graph-Based Indexing、Graph-Guided Retrieval、Graph-Enhanced Generationの3段階で整理している [23]。

### 9.7.1 Graph-Based Indexing（発展）

Graph-Based Indexingでは、文書からエンティティと関係を抽出し、knowledge graphまたはdocument graphを構築する。ノードは人、組織、製品、機能、契約、障害、概念などであり、エッジは「依存する」「対象である」「発生した」「適用される」「含む」などの関係である。

Microsoft GraphRAGのlocal-to-global approachは、LLMでentity knowledge graphを構築し、コミュニティ検出に基づいてcommunity summariesを事前生成する [24]。これにより、「このデータセットの主要テーマは何か」のようなglobal questionに対応しやすくなる。

### 9.7.2 Graph-Guided Retrieval（発展）

Graph-Guided Retrievalでは、質問から関連エンティティを特定し、近傍ノード、関係パス、コミュニティ要約を検索する。通常のvector retrievalが類似chunkを探すのに対し、Graph retrievalは関係構造をたどる。

たとえば「製品Aの価格改定がAPAC既存顧客に与える影響」を調べる場合、製品A、価格改定、APAC、既存顧客、契約条件の関係をgraph上でたどることで、複数文書にまたがる根拠を集めやすくなる。

### 9.7.3 Graph-Enhanced Generation（発展）

Graph-Enhanced Generationでは、graphから得たノード、エッジ、パス、community summaryをLLMに渡して回答を生成する。単なる文書断片より、関係を明示できるため、マルチホップ推論や全体要約に向く。

GraphRAGの注意点は、graph構築コスト、抽出誤り、更新運用、評価の難しさである。エンティティ抽出や関係抽出が誤ると、誤ったgraphに基づいて回答してしまう。GraphRAGは通常RAGの置き換えではなく、関係推論が必要な領域に追加する拡張として扱う。

> **図TODO: GraphRAGワークフロー**  
> `$image prompt: 日本語の技術資料向けに、GraphRAGのワークフローを描く。Documents -> Entity & Relation Extraction -> Knowledge Graph -> Community Detection -> Community Summaries -> Query Entity Linking -> Graph-Guided Retrieval -> Graph-Enhanced Generation の流れを示す。通常のVector Indexも横に置き、GraphとVectorを併用できることを示す。白背景、横長。`

## 9.8 Agentic RAG（発展）

Agentic RAGは、固定pipelineではなく、LLM agentが計画、検索、tool利用、検証、再検索を動的に制御するRAGである。Agentic RAG surveyは、reflection、planning、tool use、multi-agent collaborationを主要なagentic patternとして整理している [25]。

### 9.8.1 reflection（発展）

Reflectionは、agentが自分の中間結果や回答を評価し、改善する仕組みである。RAGでは、検索結果が十分か、回答が根拠に支えられているか、追加検索が必要かを判断する。

実装では、reflectionを自由な自然言語思考として扱うより、structured judgeとして実装する。

```json
{
  "evidence_sufficient": false,
  "missing_aspects": ["適用開始日", "APAC例外条件"],
  "next_action": "retrieve_more",
  "query": "製品A APAC 既存契約 価格改定 適用開始日"
}
```

### 9.8.2 planning（発展）

Planningは、複雑な質問をタスク分解し、検索やtool callの順序を決める。planner-executor型では、plannerが調査計画を作り、executorがretrieverやSQL/API toolを呼ぶ。

実装では、planner出力をJSON schemaで制約し、max_steps、max_tool_calls、timeout、budgetを設定する。自由なagent loopは暴走しやすいため、制約付きワークフローとして実装する。

### 9.8.3 tool use（発展）

Tool useは、文書検索だけでなく、SQL、Graph、Calculator、External API、Workflow ActionなどをLLMが利用する仕組みである。ReActは、reasoningとactingを交互に行い、外部環境や知識ベースと相互作用する方法を提案した [29]。Toolformerは、LMがAPIをいつ・どう呼ぶかを自己教師ありで学ぶ方向を示した [30]。MRKL Systemsは、LLMと外部知識・推論moduleを組み合わせるneuro-symbolic architectureを提案した [31]。ToolLLM/ToolBenchは、多数の実APIを扱うtool-use学習・評価の枠組みを提供する [32]。

実務では、toolをLLMから直接自由に呼ばせない。tool registryで、tool name、description、input schema、output schema、permission、timeout、retry、side effect、audit logを定義する。副作用のあるtool、たとえばチケット作成、設定変更、メール送信、承認操作はhuman-in-the-loopを入れる。

### 9.8.4 multi-agent collaboration（発展）

Multi-agent collaborationは、検索担当、SQL担当、Graph担当、検証担当、回答作成担当のように役割を分ける設計である。複雑な業務には向くが、agent間の責務重複、無限ループ、矛盾、評価難度が増える。

実務では、multi-agentよりも、planner-executor-verifier型から始める方がよい。責務分離はコード上のmodule分割で実現し、LLM agentの数は必要最小限にする。

### 9.8.5 ReAct（発展）

ReActは、LLMがreasoning traceとactionをinterleaveする方法である [29]。RAGでは、考える、検索する、結果を読む、次の検索を決める、という流れに対応する。

本番では、reasoning traceをそのままユーザーに見せる必要はない。重要なのは、action log、tool input/output、evidence、decision、final answerを監査可能に残すことである。

> **図TODO: Agentic RAG詳細構成図**  
> `$image prompt: 日本語の技術資料向けに、Agentic RAGの詳細構成図を描く。User Question -> Planner -> Tool Registryを参照し、Document Retriever、SQL Tool、Graph Tool、Calculator、External APIを呼び出せる構成にする。各ツールの結果はEvidence Memoryへ蓄積され、Verifierが十分性・根拠整合性・ACLチェックを行う。十分でなければPlannerへ戻るループを描く。最後にAnswer ComposerがFinal AnswerとCitationsを生成する。右側にGuardrailsとしてMax Steps、Timeout、Budget、Permissions、Audit Logを配置する。白背景、横長、日本語ラベル。`

> **図TODO: tool useレイヤー構成図**  
> `$image prompt: 日本語の技術資料向けに、RAGにおけるtool useの構成図を作る。User QueryがRouter / Plannerに入り、Document Retriever、SQL Tool、Graph Tool、Calculator、External API、Workflow Actionへ分岐する。各ツールの結果はOutput Normalizerを通ってEvidence Storeに集約され、Answer Composerが回答と引用を生成する。各ツールの下にACL Check、Timeout、Retry、Audit Logの小ラベルを付ける。Side-effect tools require approvalと注記する。白背景、横長、日本語ラベル。`

## 9.9 Multimodal RAG（発展）

Multimodal RAGは、テキストだけでなく、画像、表、図、スクリーンショット、動画、音声を検索・生成に組み込むRAGである。MRAG surveyは、text-only RAGを拡張し、text、images、videosなどのmultimodal dataをretrievalとgenerationに統合するものとして整理している [34]。

### 9.9.1 ingestion（発展）

Multimodal RAGのingestionでは、PDF、slides、images、tables、videos、audioをモダリティごとに処理する。PDFやslidesでは、OCR、layout analysis、table extraction、figure extraction、captioningを行う。画像では、OCR、captioning、object/region detectionを行う。動画では、ASR、keyframe extraction、shot segmentation、timestamp付きcaptionを作る。

CLIPは、画像とテキストを同じ埋め込み空間に対応づける基盤的研究であり、text-to-imageやimage-to-text retrievalの土台になった [71]。LayoutLMv3は、文書画像のlayoutとtextを統合して扱うDocument AIモデルである [33]。VisRAGは、文書をまずテキスト化するのではなく、VLMでページ画像を直接embeddingし検索するvision-based RAG pipelineを提案した [72]。MuRAGは、外部のmultimodal memoryを使うretrieval-augmented transformerとして、画像とテキストをまたぐQAを扱う [73]。

### 9.9.2 indexing（発展）

Multimodal RAGでは、Text Index、Table Index、Image Index、Video Segment Indexを分ける設計が現実的である。すべてを一つのembedding空間に入れるとシンプルだが、モダリティごとのスコア解釈、引用、デバッグが難しくなる。

表は、テキスト化した行列構造、cell座標、table_id、page、captionを保持する。画像は、image embedding、caption、OCR text、region bounding boxを保持する。動画は、segment_id、start_time、end_time、transcript、keyframe_idを保持する。

### 9.9.3 retrieval（発展）

Multimodal retrievalには、text-first、native multimodal、image-query、video-centric、cross-modal retrievalがある。

text-first型は、画像や動画をテキスト化して通常RAGで扱う。実装しやすいが、レイアウトや視覚的情報が落ちる。native multimodal型は、VLMで画像やページそのものをembeddingする。image-query型は、ユーザーがスクリーンショットなどを入力し、その画像から関連文書や画像を検索する。video-centric型は、時間軸を持つsegment単位で検索する。cross-modal retrievalは、テキストで画像を検索したり、画像でテキストを検索したりする。

### 9.9.4 fusion（発展）

Multimodal fusionでは、Text Retrieval、Image Retrieval、Table Retrieval、Video Retrievalの結果を統合する。単純にscoreを足すのではなく、page、region、caption、OCR text、layout role、timestampを使って、同一ページや同一論点の証拠をまとめる。

fusion後は、LLM/VLMに渡す形式を決める。テキストLLMに渡す場合は、表や画像をcaption/OCR/抽出テキストに変換する。VLMに渡す場合は、ページ画像やregion cropを含める。引用には、document_id、page、figure/table id、bounding box、timestampを含める。

### 9.9.5 generation（発展）

Multimodal RAGのgenerationでは、テキストLLMとVLMを使い分ける。表の値や文書説明はテキストLLMで十分なことが多いが、図の位置関係、UIスクリーンショット、グラフの視覚的傾向を読む場合はVLMが必要になる。

注意点は、OCR・layout・captioningの誤りがそのまま回答誤りになること、画像embeddingやVLM推論が高コストであること、引用粒度が雑だと検証できないことである。Multimodal RAGでは、ingestion品質そのものを評価に含める。

> **図TODO: Multimodal RAG詳細構成図**  
> `$image prompt: 日本語の技術資料向けに、Multimodal RAGの詳細構成図を描く。左側に入力ソースとしてPDF、Slides、Images、Tables、Videos、Audioを配置する。中段にIngestionとしてOCR、Layout Analysis、Table Extraction、Captioning、ASR、Keyframe Extraction、Region Embeddingを並べる。そこからText Index、Table Index、Image Index、Video Segment Indexへ分岐する。質問時にはQuery RouterがText Retrieval、Image Retrieval、Table Retrieval、Video Retrievalを呼び出し、Evidence Fusion / Cross-modal Rerankerに統合する。最後にVLM/LLMが回答を生成し、Citationとしてdocument_id、page、figure/table id、bounding box、timestampを表示する。白背景、横長、日本語ラベル。`

---

# 10. 実装ロードマップ（必須）

## 10.1 最小構成から始める（必須）

最初の本番候補は、Naive RAGではなく、最小限のAdvanced RAGにする。具体的には、限定したauthoritative source、parser、chunker、metadata、ACL、BM25 + denseのhybrid retrieval、rerank、grounded prompt、citation、refusal、trace log、golden datasetを含める。

## 10.2 失敗パターンで高度化する（必須）

失敗パターンに応じて、以下のように高度化する。

| 失敗パターン | 追加する設計 |
|---|---|
| 正解根拠が候補に入らない | chunking改善、query rewriting、hybrid retrieval、HyDE |
| 候補はあるが順位が低い | reranker、RRF、score fusion |
| contextが長くノイズが多い | compression、dedup、context packing |
| 根拠はあるがLLMが誤答 | grounded prompt、verification、RAFT/RA-DIT検討 |
| 複数文書の統合が必要 | query decomposition、IRCoT、GraphRAG |
| 検索結果が不十分 | CRAG、confidence-based retry |
| 複数toolが必要 | Agentic RAG、tool registry、planner-executor |
| 図表が根拠 | Multimodal RAG、layout/table/image index |
| 全体テーマを問われる | GraphRAG、RAPTOR、hierarchical summaries |
| 長文を広く読む必要 | Long-context RAG、Self-Route |

## 10.3 Production Baseline（必須）

推奨するProduction Baselineは次の通りである。

```text
Data:
  - authoritative sourceを限定
  - parser / chunker / metadata / ACLを整備
  - document versionとindex versionを管理

Retrieval:
  - BM25 + dense retrieval
  - RRFまたはscore fusion
  - cross-encoderまたはLLM reranker

Post-retrieval:
  - ACL/metadata filter
  - deduplication
  - compression
  - context packing

Generation:
  - grounded prompt
  - citation付き回答
  - 根拠不足時の拒否
  - claim-level verification

Evaluation:
  - golden dataset
  - retrieval / generation / e2eを分離
  - RAGAS / ARES / LLM-as-a-judgeを人手評価で校正

Operation:
  - trace log
  - latency / cost / quality monitoring
  - index lifecycle
  - security and prompt injection testing
```

> **図TODO: Production Baseline RAGアーキテクチャ**  
> `$image prompt: 日本語の技術資料向けに、Production Baseline RAGの全体構成図を作る。Offline LayerとOnline Layerを分ける。OfflineにはData Sources、Parser、Chunker、Metadata/ACL、Embedding、Sparse/Vector Index、Index Version Store。OnlineにはAPI Gateway、Auth/ACL、Query Rewrite、Hybrid Retrieval、RRF、Reranker、Context Packer、LLM、Citation Formatter、Verifier、Trace Logを置く。右側にEvaluationとMonitoringを接続する。白背景、横長。`

---

# 11. 参考文献（推奨）

[1] Patrick Lewis et al., “Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks,” NeurIPS 2020 / arXiv:2005.11401. https://arxiv.org/abs/2005.11401

[2] Yunfan Gao et al., “Retrieval-Augmented Generation for Large Language Models: A Survey,” arXiv:2312.10997. https://arxiv.org/abs/2312.10997

[3] Yizheng Huang and Jimmy Huang, “A Survey on Retrieval-Augmented Text Generation for Large Language Models,” arXiv:2404.10981. https://arxiv.org/abs/2404.10981

[4] Wenqi Fan et al., “A Survey on RAG Meeting LLMs: Towards Retrieval-Augmented Large Language Models,” arXiv:2405.06211. https://arxiv.org/abs/2405.06211

[5] Hao Yu et al., “Evaluation of Retrieval-Augmented Generation: A Survey,” arXiv:2405.07437. https://arxiv.org/abs/2405.07437

[6] Jiawei Chen et al., “Benchmarking Large Language Models in Retrieval-Augmented Generation,” AAAI 2024 / arXiv:2309.01431. https://arxiv.org/abs/2309.01431

[7] Jennifer Hsia et al., “RAGGED: Towards Informed Design of Scalable and Stable RAG Systems,” ICML 2025 / arXiv:2403.09040. https://arxiv.org/abs/2403.09040

[8] Stephen Robertson and Hugo Zaragoza, “The Probabilistic Relevance Framework: BM25 and Beyond,” Foundations and Trends in Information Retrieval, 2009. https://www.nowpublishers.com/article/Details/INR-019

[9] Vladimir Karpukhin et al., “Dense Passage Retrieval for Open-Domain Question Answering,” EMNLP 2020 / arXiv:2004.04906. https://arxiv.org/abs/2004.04906

[10] Omar Khattab and Matei Zaharia, “ColBERT: Efficient and Effective Passage Search via Contextualized Late Interaction over BERT,” SIGIR 2020 / arXiv:2004.12832. https://arxiv.org/abs/2004.12832

[11] Lee Xiong et al., “Approximate Nearest Neighbor Negative Contrastive Learning for Dense Text Retrieval,” arXiv:2007.00808. https://arxiv.org/abs/2007.00808

[12] Keshav Santhanam et al., “ColBERTv2: Effective and Efficient Retrieval via Lightweight Late Interaction,” NAACL 2022 / arXiv:2112.01488. https://arxiv.org/abs/2112.01488

[13] Luyu Gao et al., “Precise Zero-Shot Dense Retrieval without Relevance Labels,” ACL 2023 / arXiv:2212.10496. https://arxiv.org/abs/2212.10496

[14] Liang Wang, Nan Yang, Furu Wei, “Query2doc: Query Expansion with Large Language Models,” EMNLP 2023 / arXiv:2303.07678. https://arxiv.org/abs/2303.07678

[15] Harsh Trivedi et al., “Interleaving Retrieval with Chain-of-Thought Reasoning for Knowledge-Intensive Multi-Step Questions,” ACL 2023 / arXiv:2212.10509. https://arxiv.org/abs/2212.10509

[16] Gordon V. Cormack, Charles L. A. Clarke, Stefan Buettcher, “Reciprocal Rank Fusion outperforms Condorcet and Individual Rank Learning Methods,” SIGIR 2009. https://dl.acm.org/doi/10.1145/1571941.1572114

[17] Zhengbao Jiang et al., “Active Retrieval Augmented Generation,” EMNLP 2023 / arXiv:2305.06983. https://arxiv.org/abs/2305.06983

[18] Akari Asai et al., “Self-RAG: Learning to Retrieve, Generate, and Critique through Self-Reflection,” ICLR 2024 / arXiv:2310.11511. https://arxiv.org/abs/2310.11511

[19] Parth Sarthi et al., “RAPTOR: Recursive Abstractive Processing for Tree-Organized Retrieval,” ICLR 2024 / arXiv:2401.18059. https://arxiv.org/abs/2401.18059

[20] Shahul Es et al., “RAGAS: Automated Evaluation of Retrieval Augmented Generation,” EACL Demo 2024 / arXiv:2309.15217. https://arxiv.org/abs/2309.15217

[21] Jon Saad-Falcon et al., “ARES: An Automated Evaluation Framework for Retrieval-Augmented Generation Systems,” NAACL 2024 / arXiv:2311.09476. https://arxiv.org/abs/2311.09476

[22] Soyeong Jeong et al., “Adaptive-RAG: Learning to Adapt Retrieval-Augmented Large Language Models through Question Complexity,” NAACL 2024 / arXiv:2403.14403. https://arxiv.org/abs/2403.14403

[23] Boci Peng et al., “Graph Retrieval-Augmented Generation: A Survey,” arXiv:2408.08921. https://arxiv.org/abs/2408.08921

[24] Darren Edge et al., “From Local to Global: A Graph RAG Approach to Query-Focused Summarization,” arXiv:2404.16130. https://arxiv.org/abs/2404.16130

[25] Aditi Singh et al., “Agentic Retrieval-Augmented Generation: A Survey on Agentic RAG,” arXiv:2501.09136. https://arxiv.org/abs/2501.09136

[26] Bo Ni et al., “Towards Trustworthy Retrieval Augmented Generation for Large Language Models: A Survey,” arXiv:2502.06872. https://arxiv.org/abs/2502.06872

[27] Xi Victoria Lin et al., “RA-DIT: Retrieval-Augmented Dual Instruction Tuning,” ICLR 2024 / arXiv:2310.01352. https://arxiv.org/abs/2310.01352

[28] Tianjun Zhang et al., “RAFT: Adapting Language Model to Domain Specific RAG,” arXiv:2403.10131. https://arxiv.org/abs/2403.10131

[29] Shunyu Yao et al., “ReAct: Synergizing Reasoning and Acting in Language Models,” ICLR 2023 / arXiv:2210.03629. https://arxiv.org/abs/2210.03629

[30] Timo Schick et al., “Toolformer: Language Models Can Teach Themselves to Use Tools,” NeurIPS 2023 / arXiv:2302.04761. https://arxiv.org/abs/2302.04761

[31] Ehud Karpas et al., “MRKL Systems: A modular, neuro-symbolic architecture that combines large language models, external knowledge sources and discrete reasoning,” arXiv:2205.00445. https://arxiv.org/abs/2205.00445

[32] Yujia Qin et al., “ToolLLM: Facilitating Large Language Models to Master 16000+ Real-world APIs,” ICLR 2024 / arXiv:2307.16789. https://arxiv.org/abs/2307.16789

[33] Yupan Huang et al., “LayoutLMv3: Pre-training for Document AI with Unified Text and Image Masking,” ACM Multimedia 2022 / arXiv:2204.08387. https://arxiv.org/abs/2204.08387

[34] Lang Mei et al., “A Survey of Multimodal Retrieval-Augmented Generation,” arXiv:2504.08748. https://arxiv.org/abs/2504.08748

[35] Xinbei Ma et al., “Query Rewriting for Retrieval-Augmented Large Language Models,” EMNLP 2023 / arXiv:2305.14283. https://arxiv.org/abs/2305.14283

[36] Gautier Izacard and Edouard Grave, “Leveraging Passage Retrieval with Generative Models for Open Domain Question Answering,” EACL 2021 / arXiv:2007.01282. https://arxiv.org/abs/2007.01282

[37] Sebastian Borgeaud et al., “Improving Language Models by Retrieving from Trillions of Tokens,” ICML 2022 / arXiv:2112.04426. https://arxiv.org/abs/2112.04426

[38] Kelvin Guu et al., “REALM: Retrieval-Augmented Language Model Pre-Training,” ICML 2020 / arXiv:2002.08909. https://arxiv.org/abs/2002.08909

[39] Xu Zhong, Jianbin Tang, Antonio Jimeno Yepes, “PubLayNet: largest dataset ever for document layout analysis,” ICDAR 2019 / arXiv:1908.07836. https://arxiv.org/abs/1908.07836

[40] Birgit Pfitzmann et al., “DocLayNet: A Large Human-Annotated Dataset for Document-Layout Analysis,” KDD 2022 / arXiv:2206.01062. https://arxiv.org/abs/2206.01062

[41] Tong Chen et al., “Dense X Retrieval: What Retrieval Granularity Should We Use?,” EMNLP 2024 / arXiv:2312.06648. https://arxiv.org/abs/2312.06648

[42] Gautier Izacard et al., “Unsupervised Dense Information Retrieval with Contrastive Learning,” arXiv:2112.09118. https://arxiv.org/abs/2112.09118

[43] Yu. A. Malkov and D. A. Yashunin, “Efficient and robust approximate nearest neighbor search using Hierarchical Navigable Small World graphs,” TPAMI 2020 / arXiv:1603.09320. https://arxiv.org/abs/1603.09320

[44] Jeff Johnson, Matthijs Douze, Hervé Jégou, “Billion-scale similarity search with GPUs,” IEEE Transactions on Big Data / arXiv:1702.08734. https://arxiv.org/abs/1702.08734

[45] Hervé Jégou, Matthijs Douze, Cordelia Schmid, “Product Quantization for Nearest Neighbor Search,” TPAMI 2011. https://pubmed.ncbi.nlm.nih.gov/21088323/

[46] Zeqiu Wu et al., “CONQRR: Conversational Query Rewriting for Retrieval with Reinforcement Learning,” EMNLP 2022 / arXiv:2112.08558. https://arxiv.org/abs/2112.08558

[47] Shi Yu et al., “Few-Shot Conversational Dense Retrieval,” SIGIR 2021 / arXiv:2105.04166. https://arxiv.org/abs/2105.04166

[48] Thibault Formal, Benjamin Piwowarski, Stéphane Clinchant, “SPLADE: Sparse Lexical and Expansion Model for First Stage Ranking,” SIGIR 2021 / arXiv:2107.05720. https://arxiv.org/abs/2107.05720

[49] Luyu Gao et al., “RARR: Researching and Revising What Language Models Say, Using Language Models,” ACL 2023 / arXiv:2210.08726. https://arxiv.org/abs/2210.08726

[50] Zhuowan Li et al., “Retrieval Augmented Generation or Long-Context LLMs? A Comprehensive Study and Hybrid Approach,” EMNLP Industry 2024 / arXiv:2407.16833. https://arxiv.org/abs/2407.16833

[51] Rodrigo Nogueira et al., “Document Ranking with a Pretrained Sequence-to-Sequence Model,” Findings of EMNLP 2020. https://cs.uwaterloo.ca/~jimmylin/publications/Nogueira_etal_FindingsEMNLP2020.pdf

[52] Honglei Zhuang et al., “RankT5: Fine-Tuning T5 for Text Ranking with Ranking Losses,” SIGIR 2023 / arXiv:2210.10634. https://arxiv.org/abs/2210.10634

[53] Xueguang Ma et al., “Zero-Shot Listwise Document Reranking with a Large Language Model,” arXiv:2305.02156. https://arxiv.org/abs/2305.02156

[54] Fangyuan Xu, Weijia Shi, Eunsol Choi, “RECOMP: Improving Retrieval-Augmented LMs with Compression and Selective Augmentation,” ICLR 2024 / arXiv:2310.04408. https://arxiv.org/abs/2310.04408

[55] Huiqiang Jiang et al., “LLMLingua: Compressing Prompts for Accelerated Inference of Large Language Models,” EMNLP 2023 / arXiv:2310.05736. https://arxiv.org/abs/2310.05736

[56] Huiqiang Jiang et al., “LongLLMLingua: Accelerating and Enhancing LLMs in Long Context Scenarios via Prompt Compression,” ACL 2024 / arXiv:2310.06839. https://arxiv.org/abs/2310.06839

[57] Nelson F. Liu et al., “Lost in the Middle: How Language Models Use Long Contexts,” TACL 2024 / arXiv:2307.03172. https://arxiv.org/abs/2307.03172

[58] Tianyu Gao et al., “Enabling Large Language Models to Generate Text with Citations,” EMNLP 2023 / arXiv:2305.14627. https://arxiv.org/abs/2305.14627

[59] Ehsan Kamalloo et al., “HAGRID: A Human-LLM Collaborative Dataset for Generative Information-Seeking with Attribution,” SIGIR 2023 / arXiv:2307.16883. https://arxiv.org/abs/2307.16883

[60] Dongyu Ru et al., “RAGChecker: A Fine-grained Framework for Diagnosing Retrieval-Augmented Generation,” NeurIPS 2024 / arXiv:2408.08067. https://arxiv.org/abs/2408.08067

[61] Hannah Rashkin et al., “Measuring Attribution in Natural Language Generation Models,” Computational Linguistics, 2023 / arXiv:2112.12870. https://arxiv.org/abs/2112.12870

[62] Yang Liu et al., “G-Eval: NLG Evaluation using GPT-4 with Better Human Alignment,” EMNLP 2023 / arXiv:2303.16634. https://arxiv.org/abs/2303.16634

[63] Lianmin Zheng et al., “Judging LLM-as-a-Judge with MT-Bench and Chatbot Arena,” NeurIPS 2023 / arXiv:2306.05685. https://arxiv.org/abs/2306.05685

[64] TruLens, “RAG Triad.” https://www.trulens.org/getting_started/core_concepts/rag_triad/

[65] Confident AI, “DeepEval: The LLM Evaluation Framework.” https://github.com/confident-ai/deepeval

[66] Yi Liu et al., “Prompt Injection attack against LLM-integrated Applications,” arXiv:2306.05499. https://arxiv.org/abs/2306.05499

[67] Wei Zou et al., “PoisonedRAG: Knowledge Corruption Attacks to Retrieval-Augmented Generation of Large Language Models,” USENIX Security 2025 / arXiv:2402.07867. https://arxiv.org/abs/2402.07867

[68] Parshin Shojaee et al., “Federated Retrieval Augmented Generation for Multi-Product Question Answering,” COLING Industry 2025 / arXiv:2501.14998. https://arxiv.org/abs/2501.14998

[69] Ziyan Jiang, Xueguang Ma, Wenhu Chen, “LongRAG: Enhancing Retrieval-Augmented Generation with Long-context LLMs,” arXiv:2406.15319. https://arxiv.org/abs/2406.15319

[70] Howard Chen et al., “Walking Down the Memory Maze: Beyond Context Limit through Interactive Reading,” arXiv:2310.05029. https://arxiv.org/abs/2310.05029

[71] Alec Radford et al., “Learning Transferable Visual Models From Natural Language Supervision,” ICML 2021 / arXiv:2103.00020. https://arxiv.org/abs/2103.00020

[72] Shi Yu et al., “VisRAG: Vision-based Retrieval-augmented Generation on Multi-modality Documents,” ICLR 2025 / arXiv:2410.10594. https://arxiv.org/abs/2410.10594

[73] Wenhu Chen et al., “MuRAG: Multimodal Retrieval-Augmented Generator for Open Question Answering over Images and Text,” EMNLP 2022 / arXiv:2210.02928. https://arxiv.org/abs/2210.02928

[74] Shi-Qi Yan, Jia-Chen Gu, Yun Zhu, Zhen-Hua Ling, “Corrective Retrieval Augmented Generation,” arXiv:2401.15884. https://arxiv.org/abs/2401.15884

[75] Shu Wang, Yixiang Fang, Yingli Zhou, Xilin Liu, Yuchi Ma, “ArchRAG: Attributed Community-based Hierarchical Retrieval-Augmented Generation,” AAAI 2026 / arXiv:2502.09891. https://arxiv.org/abs/2502.09891

[76] Zhenghua Bao and Yi Shi, “IndexRAG: Bridging Facts for Cross-Document Reasoning at Index Time,” arXiv:2603.16415. https://arxiv.org/abs/2603.16415

[77] Peter Baile Chen, Tomer Wolfson, Michael Cafarella, Dan Roth, “EnrichIndex: Using LLMs to Enrich Retrieval Indices Offline,” arXiv:2504.03598. https://arxiv.org/abs/2504.03598
