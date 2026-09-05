export type SeminarSlide = {
  id: string;
  section: string;
  topic?: string;
  figure?: { src: string; alt: string; caption: string };
  title: string;
  lead?: string;
  layout?: 'cover' | 'quote' | 'columns' | 'stages' | 'matrix' | 'table' | 'figure' | 'architecture' | 'grid';
  items?: { label: string; text: string }[];
  headers?: string[];
  rows?: string[][];
  takeaway?: string;
  example?: boolean;
  weight: number;
  notes: string;
  expand: string;
  sources: { label: string; href: string }[];
};
export const seminarChapters = [
  "RAGとは何か",
  "アーキテクチャ",
  "検索を支える技術要素",
  "評価と改善",
  "機能要件",
  "AWSでRAGを設計する"
];
export const slides: SeminarSlide[] = [
  {
    "id": "intro",
    "section": "社内勉強会",
    "title": "根拠を探して、答える。",
    "layout": "cover",
    "lead": "RAGの選び方から、構成・技術・評価・AWSまで",
    "takeaway": "30〜40分で学ぶ、RAGの6つの視点",
    "weight": 0.4,
    "notes": "今日はRAGを六つの大分類で学びます。方式を選ぶ判断から始め、四工程と二層、検索の技術、評価、安全な運用、AWSのサービスへつなぎます。詳細な実装は本文とハンズオンを使い、自分の業務で何を設計するかを説明できる状態を目指します。",
    "expand": "参加者に、社内の情報を探すときに困る場面を一つ思い浮かべてもらいます。",
    "sources": [
      {
        "label": "ガイド第1章",
        "href": "/rag-guide/guide/chapter-01/"
      },
      {
        "label": "ガイド第2章",
        "href": "/rag-guide/guide/chapter-02/"
      }
    ]
  },
  {
    "id": "agenda",
    "section": "全体の概要",
    "title": "今日の話は、6つの大分類。",
    "layout": "grid",
    "items": [
      {
        "label": "1. RAGとは何か",
        "text": "使う理由と、使わない判断"
      },
      {
        "label": "2. アーキテクチャ",
        "text": "4つの工程・2つの層"
      },
      {
        "label": "3. 検索を支える技術要素",
        "text": "BM25・密検索・統合・再順位付け"
      },
      {
        "label": "4. 評価と改善",
        "text": "工程別に測り、失敗から直す"
      },
      {
        "label": "5. 機能要件",
        "text": "攻撃への備え・知識更新"
      },
      {
        "label": "6. AWSでRAGを設計する",
        "text": "KB・モデル・ストアを対応付ける"
      }
    ],
    "weight": 0.4,
    "notes": "前半の全体像とアーキテクチャを詳しく説明します。技術名は工程の役割に結び付け、後半は評価、運用、AWSへ進みます。小節番号はこの勉強会用です。下部の本文リンクには最新ガイドの章番号を表示します。",
    "expand": "30分版では各ページの結論を中心に、40分版では図の例や問いかけまで説明します。",
    "sources": [
      {
        "label": "ガイド第1章",
        "href": "/rag-guide/guide/chapter-01/"
      },
      {
        "label": "ガイド第2章",
        "href": "/rag-guide/guide/chapter-02/"
      }
    ]
  },
  {
    "id": "rag",
    "section": "1. RAGとは何か",
    "topic": "1-1",
    "title": "RAGとは：検索した資料を根拠に答える。",
    "layout": "columns",
    "lead": "LLMの内部知識 ＋ 検索できる外部知識",
    "items": [
      {
        "label": "内部知識",
        "text": "学習で得た知識・言語能力を使い、文章を理解し回答する。"
      },
      {
        "label": "外部知識",
        "text": "質問に合う資料を取得し、更新可能な根拠として渡す。"
      },
      {
        "label": "RAGの価値",
        "text": "組織固有の情報を使い、出典と失敗箇所を確認できる。"
      }
    ],
    "takeaway": "外部知識を使っても、回答の正しさが自動で保証されるわけではない。",
    "weight": 1.2,
    "notes": "RAGは検索拡張生成です。検索で見つけた資料を条件としてLLMが回答します。生成モデルを毎回再学習するのではなく、質問時に関連情報を渡します。外部の事実を更新しやすく、主張から原文へ戻れることが価値です。ただし誤った資料、検索の不足、生成時の誤読は残るため評価が必要です。",
    "expand": "少数の短い資料なら、そのまま入力する方法とも比較できます。RAGは大量の資料、更新、出典の追跡が必要な場面で候補になります。",
    "sources": [
      {
        "label": "ガイド第1章・1.1",
        "href": "/rag-guide/guide/chapter-01/#section-1-1"
      }
    ]
  },
  {
    "id": "comparison",
    "section": "1. RAGとは何か",
    "topic": "1-2",
    "title": "返すものと、失敗を調べる場所が違う。",
    "layout": "table",
    "headers": [
      "方式",
      "何を返すか",
      "失敗したら調べる場所"
    ],
    "rows": [
      [
        "LLM単体",
        "文章・変換結果",
        "入力情報・指示・モデルの出力"
      ],
      [
        "検索システム",
        "原文・該当箇所の一覧",
        "検索対象・クエリ・順位"
      ],
      [
        "RAG",
        "外部根拠に基づく説明と引用",
        "資料 → 検索候補 → 根拠集合 → 回答"
      ]
    ],
    "takeaway": "原文を読む → 検索 ／ 文章を変換 → LLM ／ 外部根拠付きの説明 → RAG",
    "weight": 1.2,
    "notes": "原文をそのまま読む業務は検索システム、入力済みの文章を変換するだけならLLM単体が候補です。大量の外部資料から該当箇所を探して出典付きで説明するならRAGを検討します。RAGでは資料がないのか、取れないのか、取得後に失ったのか、読み違えたのかを分けて調べます。",
    "expand": "短い固定文書を毎回全体入力できるなら、検索索引を持たない構成も比較します。",
    "sources": [
      {
        "label": "ガイド第1章・1.2",
        "href": "/rag-guide/guide/chapter-01/#section-1-2"
      },
      {
        "label": "ガイド第1章・1.5",
        "href": "/rag-guide/guide/chapter-01/#section-1-5"
      }
    ]
  },
  {
    "id": "problems",
    "section": "1. RAGとは何か",
    "topic": "1-3",
    "title": "内部知識だけでは扱いにくい問題を補う。",
    "layout": "columns",
    "items": [
      {
        "label": "変わる情報",
        "text": "規程改訂・製品更新を、検索対象の更新で反映する。"
      },
      {
        "label": "組織固有の情報",
        "text": "社内手順・仕様・FAQを、許可された範囲で利用する。"
      },
      {
        "label": "出所が必要な説明",
        "text": "主張を原文の位置と版へ結び、判断材料を確認する。"
      }
    ],
    "takeaway": "LLMが知らない事実を、検索可能な外部知識として整備する。",
    "weight": 0.9,
    "notes": "RAGが扱うのは更新される事実、非公開の組織知識、出典を確認したい説明です。知識を外部に置けば更新できますが、原文、索引、キャッシュの更新がそろわなければ古い回答が残ります。検索できる根拠がない質問は、保留や追加調査へ回します。",
    "expand": "引用番号の存在と、原文が主張を支持していることは別の確認事項です。",
    "sources": [
      {
        "label": "ガイド第1章・1.3",
        "href": "/rag-guide/guide/chapter-01/#section-1-3"
      }
    ]
  },
  {
    "id": "suitable",
    "section": "1. RAGとは何か",
    "topic": "1-4",
    "title": "外部の根拠を特定して使う業務に向く。",
    "layout": "table",
    "headers": [
      "業務",
      "特定する根拠",
      "回答に残すもの"
    ],
    "rows": [
      [
        "社内規程の照会",
        "対象者・地域・現行版の条文",
        "条件・例外・出典"
      ],
      [
        "製品サポート",
        "製品と版に合う仕様・FAQ",
        "手順・適用範囲"
      ],
      [
        "技術調査・障害対応支援",
        "設計資料・Runbook・過去事例",
        "比較・確認順・出典"
      ]
    ],
    "takeaway": "正本があり、所有者・版・権限を管理でき、回答を評価できること。",
    "weight": 0.9,
    "notes": "RAGが向くのは、回答の判断材料が外部文書にあり、質問に関係する箇所を検索して説明する業務です。利用できる文書を管理し、正解根拠と期待回答を用意できることが前提です。障害対応の手順を説明することと、復旧操作を実行することは分けます。",
    "expand": "社内規程なら、金額だけでなく事前承認や適用日が必要になる質問を例にします。",
    "sources": [
      {
        "label": "ガイド第1章・1.4",
        "href": "/rag-guide/guide/chapter-01/#section-1-4"
      }
    ]
  },
  {
    "id": "unsuitable",
    "section": "1. RAGとは何か",
    "topic": "1-5",
    "title": "判断の出発点は、正解がどこにあるか。",
    "layout": "table",
    "headers": [
      "欲しいもの",
      "候補となる手段"
    ],
    "rows": [
      [
        "正確な在庫・残高・集計",
        "DB照会・業務API"
      ],
      [
        "厳密な計算／承認・発注",
        "計算処理／認可されたワークフロー"
      ],
      [
        "根拠文書がない質問",
        "情報整備・調査・回答保留"
      ],
      [
        "高リスクな最終判断",
        "専門家の確認と定められた判断手続"
      ]
    ],
    "takeaway": "RAGで作れることと、RAGが正しい手段であることは別。",
    "weight": 0.9,
    "notes": "正解がデータベースの現在値ならDBやAPIで照会します。計算は計算処理、状態変更は認可済みの業務手続へ任せます。RAGと組み合わせることはできますが、入力検証、権限、監査は別に設計します。文書がない問題を検索技術だけで解決することはできません。",
    "expand": "原文を読むだけ、または短い固定資料を変換するだけの場合も、より単純な方式を比較します。",
    "sources": [
      {
        "label": "ガイド第1章・1.5",
        "href": "/rag-guide/guide/chapter-01/#section-1-5"
      }
    ]
  },
  {
    "id": "advanced",
    "section": "1. RAGとは何か",
    "topic": "1-6",
    "title": "最小のAdvanced RAGを出発点にする。",
    "layout": "columns",
    "items": [
      {
        "label": "基本的なRAG",
        "text": "取得した資料を生成へ渡す。\n検索 → 生成の基本を理解する。"
      },
      {
        "label": "Advanced RAG",
        "text": "検索統合・再順位付け・根拠整形に、引用・保留・評価を備える。"
      },
      {
        "label": "Modularなどの発展",
        "text": "部品の組合せ・経路選択・反復を、観測した問題に応じて追加する。"
      }
    ],
    "takeaway": "今回はAdvanced RAGまで。追加の複雑化は、再現する失敗が見えてから。",
    "weight": 1.1,
    "notes": "これらは厳密な成熟度認証や必ず順に進む階段ではなく、構成の整理です。最新ガイドは疎密検索の統合、再順位付け、根拠集合、引用、回答保留、評価を含む最小のAdvanced RAGを出発点にします。Modular RAGの部品再構成やAgentic RAGの反復探索を最初から全部入れる必要はありません。",
    "expand": "基準構成で会話の省略や関係探索が繰り返し失敗したときに、対応する部品を一つずつ比較します。",
    "sources": [
      {
        "label": "ガイド第2章・2.8",
        "href": "/rag-guide/guide/chapter-02/#section-2-8"
      },
      {
        "label": "ガイド第9章・9.1",
        "href": "/rag-guide/guide/chapter-09/#section-9-1"
      }
    ]
  },
  {
    "id": "four-stages",
    "section": "2. アーキテクチャ",
    "topic": "2-1",
    "title": "4つの工程 × 2つの層で設計する。",
    "layout": "architecture",
    "takeaway": "工程は目的、層は実行タイミング。最初に失敗した工程を切り分ける。",
    "weight": 2.8,
    "notes": "上段がBatch Layer、下段がReal-time Layerです。バッチは質問前の文書準備、リアルタイムは質問ごとの応答を表します。検索前処理には文書側と質問側の両方があります。文書解析・分割・埋め込みで公開済み索引を作り、質問理解・変換から検索、検索後処理、生成へ進みます。四工程はサーバー四台という意味ではありません。正本が索引にあるか、候補に取れたか、根拠に残ったか、回答が正しく利用したかを順に調べます。",
    "expand": "バッチは夜間処理に限定されず更新イベントでも動きます。評価用に検索・生成をバッチ再実行する場合もあります。図は一般的な質問応答経路です。",
    "sources": [
      {
        "label": "ガイド第2章・2.1",
        "href": "/rag-guide/guide/chapter-02/#section-2-1"
      }
    ]
  },
  {
    "id": "batch",
    "section": "2. アーキテクチャ",
    "topic": "2-2",
    "title": "検索前処理：資料と質問を検索可能にする。",
    "layout": "grid",
    "items": [
      {
        "label": "01 正本を決める",
        "text": "Source of Truth\n所有者・現行版・利用条件"
      },
      {
        "label": "02 文書を解析する",
        "text": "見出し・表・本文を読み取り、構造を保つ。"
      },
      {
        "label": "03 チャンクに分ける",
        "text": "条件や例外を切り離さず、検索単位を作る。"
      },
      {
        "label": "04 属性を結び付ける",
        "text": "出典位置・版・対象・閲覧権限（ACL）を持つ。"
      },
      {
        "label": "05 索引を公開する",
        "text": "語の索引・埋め込みを作り、欠落や削除反映を検査。"
      },
      {
        "label": "質問時の前処理",
        "text": "質問を理解・変換し、認証済み属性から検索条件を作る。"
      }
    ],
    "takeaway": "文書側：01 → 02 → 03 → 04 → 05 ／ 質問側：検索クエリ・条件へ",
    "weight": 1.7,
    "notes": "Pre-retrievalは検索へ渡す入力を整える工程です。正誤の判断基準となる正本を定め、解析と分割で表の列や例外条件を壊さず、出典・版・権限をチャンクへ結びます。図は理解のための代表順序で、属性は取り込み時から引き継ぎます。質問時には省略や表現を整えますが、質問文の自己申告をアクセス権限にしません。",
    "expand": "チャンクが小さすぎると文脈が欠け、大きすぎると不要情報が混ざります。サイズは実際の質問で比較します。",
    "sources": [
      {
        "label": "ガイド第2章・2.2",
        "href": "/rag-guide/guide/chapter-02/#section-2-2"
      },
      {
        "label": "ガイド第3章",
        "href": "/rag-guide/guide/chapter-03/"
      },
      {
        "label": "ガイド第4章・4.2",
        "href": "/rag-guide/guide/chapter-04/#section-4-2"
      }
    ]
  },
  {
    "id": "retrieval",
    "section": "2. アーキテクチャ",
    "topic": "2-3",
    "title": "検索：答えを支える候補を集める。",
    "layout": "columns",
    "items": [
      {
        "label": "疎検索（Sparse）",
        "text": "語の一致を手掛かりに探す。\n代表例：BM25"
      },
      {
        "label": "密検索（Dense）",
        "text": "埋め込みの類似度で探す。\n表現の言い換えに対応する。"
      },
      {
        "label": "ハイブリッド検索",
        "text": "疎検索と密検索の候補を集め、統合する。"
      }
    ],
    "takeaway": "関連して見える資料ではなく、回答に必要な根拠を回収できたか。",
    "weight": 1.2,
    "notes": "Retrievalの出力は根拠候補です。まだ回答に使う最終集合ではありません。疎検索は型番や固有名詞、密検索は意味的な言い換えに強みがあります。ハイブリッド検索は取りこぼしを補います。どの検索も利用者の閲覧範囲を守り、候補数と遅延を含めて評価します。",
    "expand": "型番の一文字違いと、宿泊費という用語を知らない質問を並べ、検索方式を使い分ける理由を説明します。",
    "sources": [
      {
        "label": "ガイド第2章・2.3",
        "href": "/rag-guide/guide/chapter-02/#section-2-3"
      },
      {
        "label": "ガイド第4章",
        "href": "/rag-guide/guide/chapter-04/"
      }
    ]
  },
  {
    "id": "evidence",
    "section": "2. アーキテクチャ",
    "topic": "2-4",
    "title": "検索後処理：候補を根拠集合へ整える。",
    "layout": "grid",
    "items": [
      {
        "label": "必須フィルター",
        "text": "権限・版・対象条件を確認する。"
      },
      {
        "label": "重複排除",
        "text": "同じ内容の占有を減らし、必要な根拠の幅を確保する。"
      },
      {
        "label": "再順位付け",
        "text": "質問への関連度を詳しく比較する。"
      },
      {
        "label": "圧縮",
        "text": "不要部分を減らし、数値・条件・否定を保つ。"
      },
      {
        "label": "配置",
        "text": "入力長の範囲で、関連根拠を読みやすくまとめる。"
      },
      {
        "label": "根拠集合",
        "text": "出典・採用理由・矛盾や不足を持つEvidence Setへ。"
      }
    ],
    "takeaway": "権限は取得段階から適用し、後処理での確認だけに任せない。",
    "weight": 1.6,
    "notes": "Post-retrievalは候補を選び、生成へ渡すEvidence Setへ整える工程です。必須条件の確認、重複排除、再順位付け、圧縮、配置を基本にします。権限外の文書は生成モデルだけでなく、再ランキングモデルにも見せない設計が必要です。圧縮で例外条件を消したり、同じ根拠だけで入力を埋めたりしないようにします。",
    "expand": "コンテキストを増やすだけでは不要情報も増えます。本文の長さではなく、質問を支える情報がそろっているかで考えます。",
    "sources": [
      {
        "label": "ガイド第2章・2.4",
        "href": "/rag-guide/guide/chapter-02/#section-2-4"
      },
      {
        "label": "ガイド第5章",
        "href": "/rag-guide/guide/chapter-05/"
      }
    ]
  },
  {
    "id": "generation",
    "section": "2. アーキテクチャ",
    "topic": "2-5",
    "title": "生成：根拠の範囲で、回答と引用を作る。",
    "layout": "columns",
    "items": [
      {
        "label": "根拠に従う",
        "text": "資料は命令ではなく情報。\n主張と根拠を対応付ける。"
      },
      {
        "label": "矛盾・不足を扱う",
        "text": "食い違いを隠さない。\n追加質問・保留・引継ぎを選ぶ。"
      },
      {
        "label": "引用を検証する",
        "text": "原文の位置へ戻れるか。\nその原文が主張を支えるか。"
      }
    ],
    "takeaway": "引用番号があるだけでは不十分。回答と根拠の対応を確かめる。",
    "weight": 1.4,
    "notes": "Generationには質問、根拠集合、回答ルールを渡します。根拠不足を内部知識で穴埋めしたり、矛盾した資料を一つの事実へまとめたりしません。回答保留は正常な出力です。引用の存在、支持関係、引用が必要な主張の網羅を確認します。回答することと業務を実行することの認可は別です。",
    "expand": "「今年の海外出張は？」と聞かれて国内規程しかない場合、国内の金額を流用しない例を説明します。",
    "sources": [
      {
        "label": "ガイド第2章・2.5",
        "href": "/rag-guide/guide/chapter-02/#section-2-5"
      },
      {
        "label": "ガイド第6章",
        "href": "/rag-guide/guide/chapter-06/"
      }
    ]
  },
  {
    "id": "bm25",
    "section": "3. 検索を支える技術要素",
    "topic": "3-1",
    "title": "BM25：語の一致から順位を作る。",
    "layout": "figure",
    "figure": {
      "src": "/rag-guide/guide-assets/v4/11-sparse-retrieval-intuition.png",
      "alt": "質問のエラーコードとログインという語に一致する文書を、希少語と文書長を考慮して順位付けする模式図",
      "caption": "図は模式例。実際の順位は語の頻度・希少性・文書長と設定で決まる。"
    },
    "takeaway": "語の希少性を重視し、同じ語の反復は飽和させ、文書長を補正する。",
    "weight": 1.6,
    "notes": "質問と文書を語へ分け、転置索引から一致する候補を探します。BM25は各語について、文書中の出現回数、コーパスでの希少性、文書長を考慮した寄与を足します。同じ語が何度も出ても加点は頭打ちになり、長い文書が単に有利にならないよう補正します。型番に強い一方、用語が一致しない言い換えを取りこぼし得ます。",
    "expand": "図の順位を一般化せず、語分割やk1、bなどの設定を固定して比較します。",
    "sources": [
      {
        "label": "ガイド第4章・4.3",
        "href": "/rag-guide/guide/chapter-04/#section-4-3"
      }
    ]
  },
  {
    "id": "embedding",
    "section": "3. 検索を支える技術要素",
    "topic": "3-2",
    "title": "ベクトル検索：意味の近い候補を探す。",
    "layout": "figure",
    "figure": {
      "src": "/rag-guide/guide-assets/v4/08-embedding-vector-space.png",
      "alt": "文章を埋め込みモデルでベクトル化し、質問に近い関連文書を探す。二次元表示は模式図",
      "caption": "文書は事前に、質問は質問時に埋め込む。比較できる同じ空間の表現を使う。"
    },
    "takeaway": "「宿泊費」と「ホテル代」を近づけられる。近さは正しさ・権限ではない。",
    "weight": 1.6,
    "notes": "Dense retrievalでは文書を事前に埋め込み、質問も互換な表現へ変換して、コサイン類似度や内積などで近い候補を取得します。実際は高次元で、図は直感のための二次元表現です。大量の候補には近似近傍探索を使うこともあります。生成モデルと埋め込みモデルは役割が違い、モデル変更時には文書側の再埋め込みも検討します。",
    "expand": "型番や否定条件の区別まで意味の近さだけで任せられないため、次のキーワード検索やフィルターが必要になるとつなぎます。",
    "sources": [
      {
        "label": "ガイド第4章・4.4",
        "href": "/rag-guide/guide/chapter-04/#section-4-4"
      },
      {
        "label": "ガイド第3章・3.6",
        "href": "/rag-guide/guide/chapter-03/#section-3-6"
      }
    ]
  },
  {
    "id": "hybrid",
    "section": "3. 検索を支える技術要素",
    "topic": "3-3",
    "title": "ハイブリッド検索：二つの手掛かりを使う。",
    "layout": "figure",
    "figure": {
      "src": "/rag-guide/guide-assets/v4/13-hybrid-retrieval-rrf.png",
      "alt": "質問を疎検索と密検索へ分岐し、候補を統合して再ランキングへ渡す流れ",
      "caption": "RRFを使う構成例。候補IDを統合しても、各検索での順位は保持する。"
    },
    "takeaway": "両検索の取りこぼしを補い、統合方法と候補数を評価する。",
    "weight": 1.2,
    "notes": "同じ質問をBM25と密検索へ送り、候補の和集合を作ります。同一候補のIDをそろえ、各検索での順位を保持して融合します。図はRRFから再ランキングへ進む一例で、ハイブリッドなら必ずRRFという意味ではありません。図中の意味一致は意味的類似の意図で、事実の一致を保証しません。検索器の生スコアは尺度が違うため単純加算を避けます。",
    "expand": "片方だけに現れる正解根拠も拾える一方で、ノイズも増えるため、次の再ランキングが必要になると説明します。",
    "sources": [
      {
        "label": "ガイド第4章・4.5",
        "href": "/rag-guide/guide/chapter-04/#section-4-5"
      }
    ]
  },
  {
    "id": "ranking",
    "section": "3. 検索を支える技術要素",
    "topic": "3-4",
    "title": "ランキング①：RRFで順位を統合する。",
    "layout": "figure",
    "figure": {
      "src": "/rag-guide/guide-assets/v6/41-rrf.png",
      "alt": "Aは疎検索1位・密検索3位、Bは2位・1位、Cは3位・2位。RRFでB、A、Cの順に統合する",
      "caption": "各順位rから1/(c+r)を足す。図のc=60は説明用で、万能の推奨値ではない。"
    },
    "takeaway": "RRFは順位を使う。スコア融合なら尺度の正規化・重み付けを設計する。",
    "weight": 1.4,
    "notes": "RRFはReciprocal Rank Fusionです。各検索での順位から寄与を計算し、同じ候補の寄与を足して並べ直します。Bは二つの検索で上位なので統合後1位になります。一方の一覧にない候補は、その一覧からの寄与をゼロとして扱います。定数は実験で比較します。別方式としてスコアを正規化し重み付き融合する方法もあります。",
    "expand": "Bは1/62+1/61で約0.03252、Aは1/61+1/63で約0.03227です。数式の暗記より生スコアの単純加算との違いを押さえます。",
    "sources": [
      {
        "label": "ガイド第4章・4.5",
        "href": "/rag-guide/guide/chapter-04/#section-4-5"
      }
    ]
  },
  {
    "id": "reranking",
    "section": "3. 検索を支える技術要素",
    "topic": "3-4",
    "title": "ランキング②：質問と候補を読み直す。",
    "layout": "figure",
    "figure": {
      "src": "/rag-guide/guide-assets/v6/44-rerank.png",
      "alt": "候補を集め、質問と本文をcross-encoderへ渡して関連度を再評価し、根拠へ整える",
      "caption": "RRFによる順位統合と、本文を比較する再ランキングは別の処理。"
    },
    "takeaway": "再ランキングは、検索で取れなかった根拠を復活させられない。",
    "weight": 1.1,
    "notes": "Cross-encoder型の再ランキングは質問と各候補本文を一緒に入力し、関連度を詳しく採点して並べます。RRFが検索器の順位を使うのに対し、こちらは内容を見直します。図では対象の第3版を優先しますが、版や権限は別の必須条件として適用します。精度に加えて候補数、遅延、費用を評価します。",
    "expand": "Pointwiseは候補単位、pairwiseは二候補の比較、listwiseは一覧を対象にする方式です。ここではcross-encoderの役割を中心に扱います。",
    "sources": [
      {
        "label": "ガイド第5章・5.3",
        "href": "/rag-guide/guide/chapter-05/#section-5-3"
      }
    ]
  },
  {
    "id": "evaluation",
    "section": "4. 評価と改善",
    "topic": "4-1",
    "title": "評価の全体像：公開条件を先に決める。",
    "layout": "stages",
    "items": [
      {
        "label": "基準を作る",
        "text": "質問・正解根拠・期待する振る舞いを固定。"
      },
      {
        "label": "工程別に測る",
        "text": "前処理・検索・根拠集合・生成を検査。"
      },
      {
        "label": "公開を判定",
        "text": "品質・権限・保留・遅延・費用の基準を満たす。"
      },
      {
        "label": "変更を見張る",
        "text": "回帰検査・限定公開・切り戻しを用意。"
      }
    ],
    "takeaway": "平均点だけで公開しない。重大な失敗と質問の種類別の結果を見る。",
    "weight": 1,
    "notes": "評価データと合格条件を先に決めます。回答可能な質問だけでなく、回答不能、曖昧、旧版、権限外のケースを含めます。開発用と公開判定用を分け、同じ条件で変更前後を測ります。閾値は業務リスクから定め、権限漏えいのような重大失敗を平均点で相殺しません。",
    "expand": "プロンプトと検索方式を同時に変えると原因が分かりにくくなるため、一つずつ変更する例を説明します。",
    "sources": [
      {
        "label": "ガイド第7章・7.1",
        "href": "/rag-guide/guide/chapter-07/#section-7-1"
      },
      {
        "label": "ガイド第7章・7.2",
        "href": "/rag-guide/guide/chapter-07/#section-7-2"
      },
      {
        "label": "ガイド第7章・7.8",
        "href": "/rag-guide/guide/chapter-07/#section-7-8"
      }
    ]
  },
  {
    "id": "retrieval-metrics",
    "section": "4. 評価と改善",
    "topic": "4-2",
    "title": "検索評価：回収率と上位の質を分ける。",
    "layout": "table",
    "headers": [
      "指標",
      "確かめること"
    ],
    "rows": [
      [
        "Recall@k",
        "必要な正解根拠のうち、上位k件で回収できた割合"
      ],
      [
        "Precision@k",
        "上位k件のうち、関連する根拠の割合"
      ],
      [
        "MRR",
        "最初の正解根拠が、どれだけ早く現れるか"
      ],
      [
        "nDCG@k",
        "関連度の高い根拠が上位に並んでいるか"
      ]
    ],
    "takeaway": "kと正解根拠の単位を固定する。根拠が2件必要で1件取得ならRecallは1/2。",
    "weight": 1,
    "notes": "Recallは取りこぼし、Precisionは混入、MRRは最初の正解の順位、nDCGは段階的な関連度と順位を見ます。複数根拠が必要な質問では最初の一件だけでは十分性を判断できません。文書単位かチャンク単位か、kはいくつかをそろえ、検索前処理で正解文書が登録済みかも確認します。",
    "expand": "kを増やすと回収は改善し得ますが、ノイズ、後処理コスト、遅延も増えるので同時に比較します。",
    "sources": [
      {
        "label": "ガイド第7章・7.4",
        "href": "/rag-guide/guide/chapter-07/#section-7-4"
      }
    ]
  },
  {
    "id": "generation-metrics",
    "section": "4. 評価と改善",
    "topic": "4-3",
    "title": "生成評価：正しさと根拠への忠実性。",
    "layout": "grid",
    "items": [
      {
        "label": "正確性",
        "text": "期待する事実・条件に合うか。"
      },
      {
        "label": "根拠への忠実性",
        "text": "渡した根拠が主張を支持するか。"
      },
      {
        "label": "引用の正しさ・網羅性",
        "text": "参照先が支え、必要な主張を覆うか。"
      },
      {
        "label": "回答の充足性",
        "text": "質問に必要な論点へ答えたか。"
      },
      {
        "label": "保留の適切さ",
        "text": "答えられない質問を保留し、拒否しすぎないか。"
      },
      {
        "label": "形式・使いやすさ",
        "text": "指定形式を守り、条件と結論が分かるか。"
      }
    ],
    "takeaway": "一般論として正しくても、渡した根拠にない断定は区別して評価する。",
    "weight": 1,
    "notes": "正確性は期待する事実との一致、忠実性は与えた根拠による支持です。古い根拠に忠実でも現在の事実としては誤る場合があり、内部知識で当たっていても根拠にはない主張の場合があります。両軸を分け、引用、十分性、保留も見ます。根拠集合で条件が失われていないかも追跡します。",
    "expand": "回答が正解でも毎回根拠を無視しているなら、更新への追従性を信頼できません。",
    "sources": [
      {
        "label": "ガイド第7章・7.5",
        "href": "/rag-guide/guide/chapter-07/#section-7-5"
      },
      {
        "label": "ガイド第7章・7.6",
        "href": "/rag-guide/guide/chapter-07/#section-7-6"
      }
    ]
  },
  {
    "id": "evaluation-methods",
    "section": "4. 評価と改善",
    "topic": "4-4",
    "title": "評価の方法を、判定対象で使い分ける。",
    "layout": "table",
    "headers": [
      "方法",
      "向く判定",
      "注意点"
    ],
    "rows": [
      [
        "ルールベース",
        "形式・必須項目・引用ID",
        "意味的な支持は判定しきれない"
      ],
      [
        "専用モデル",
        "関連度・含意などの分類",
        "対象業務への適合を検証する"
      ],
      [
        "LLMによる採点",
        "意味・忠実性・説明品質",
        "採点基準・モデル版を固定する"
      ],
      [
        "人手",
        "曖昧例・重要判断・採点の校正",
        "基準を共有し、不一致を見直す"
      ]
    ],
    "takeaway": "LLMの採点を正解扱いせず、人の判断と突き合わせて校正する。",
    "weight": 0.9,
    "notes": "ルールは再現性のある形式検査、専用モデルは関連度や含意の判定、LLM Judgeは意味的品質を採点基準に沿って見る用途です。専用モデルとLLMはどちらも誤り得ます。人のラベルとの一致、質問の種類ごとの差、採点の揺れを確認します。高リスクな判断や曖昧なケースには人の確認を残します。",
    "expand": "採点モデルの変更で点数の基準も変わり得ます。生成側の改善と評価側の変更を混ぜず記録します。",
    "sources": [
      {
        "label": "ガイド第7章・7.1",
        "href": "/rag-guide/guide/chapter-07/#section-7-1"
      },
      {
        "label": "ガイド第7章・7.6",
        "href": "/rag-guide/guide/chapter-07/#section-7-6"
      }
    ]
  },
  {
    "id": "diagnosis",
    "section": "4. 評価と改善",
    "topic": "4-5",
    "title": "失敗パターンから、最初の改善手段を選ぶ。",
    "layout": "table",
    "headers": [
      "最初に起きた失敗",
      "まず調べる・変えるもの"
    ],
    "rows": [
      [
        "正本が索引にない",
        "取り込み・解析・更新・公開判定"
      ],
      [
        "索引にはあるが候補にない",
        "クエリ・検索方式・フィルター・候補数"
      ],
      [
        "候補にあるが根拠集合で落ちる",
        "再順位付け・重複排除・圧縮・配置"
      ],
      [
        "根拠はあるが回答が誤る",
        "生成指示・引用検査・回答可能性"
      ]
    ],
    "takeaway": "再現する質問と実行記録を固定し、一つずつ変更して回帰評価する。",
    "weight": 1,
    "notes": "最終回答だけを見てプロンプトを変える前に、四工程の成果物を同じ質問IDでたどります。最初に期待から外れた工程へ戻り、最小の修正を比較します。それでも会話、複数情報源、関係探索などに失敗が残るとき、第9章の発展技術を選びます。",
    "expand": "対象の質問だけが改善し、別の質問が悪化していないか、固定した評価集合で確認します。",
    "sources": [
      {
        "label": "ガイド第7章・7.9",
        "href": "/rag-guide/guide/chapter-07/#section-7-9"
      },
      {
        "label": "ガイド第7章・7.10",
        "href": "/rag-guide/guide/chapter-07/#section-7-10"
      },
      {
        "label": "ガイド第9章・9.1",
        "href": "/rag-guide/guide/chapter-09/#section-9-1"
      }
    ]
  },
  {
    "id": "security",
    "section": "5. 機能要件",
    "topic": "5-1",
    "title": "攻撃への備え：文書も信頼境界の外側。",
    "layout": "table",
    "headers": [
      "攻撃例（説明用）",
      "備えること"
    ],
    "rows": [
      [
        "文書内に「指示を無視し秘密を出せ」",
        "資料と命令を分離。権限外の情報を渡さない"
      ],
      [
        "偽の規程を混ぜて誤答を誘う",
        "正本・所有者・取込元を管理し、公開前に検査"
      ],
      [
        "引用・キャッシュ・ログから漏れる",
        "利用者ごとの認可、保存範囲・期限を適用"
      ]
    ],
    "takeaway": "プロンプトインジェクションとデータ汚染に、多層の対策と攻撃テストを備える。",
    "weight": 1.2,
    "notes": "間接プロンプトインジェクションは検索文書に命令が混ざる攻撃、データ汚染は検索対象へ不正な情報を混ぜる攻撃です。プロンプトだけで完全には防げません。情報源の管理、公開前検査、最小権限、モデルへ渡す前の認可、ツール実行の制限を組み合わせます。章名は機能要件ですが、安全性・運用などの非機能要件も横断して扱います。",
    "expand": "権限を失った人のキャッシュに過去の根拠が残るケースを挙げ、検索時の制限だけでなく運用も必要と補足します。",
    "sources": [
      {
        "label": "ガイド第8章・8.1",
        "href": "/rag-guide/guide/chapter-08/#section-8-1"
      },
      {
        "label": "ガイド第8章・8.2",
        "href": "/rag-guide/guide/chapter-08/#section-8-2"
      },
      {
        "label": "ガイド第8章・8.3",
        "href": "/rag-guide/guide/chapter-08/#section-8-3"
      }
    ]
  },
  {
    "id": "operations",
    "section": "5. 機能要件",
    "topic": "5-2",
    "title": "知識更新：原文からキャッシュまで追う。",
    "layout": "table",
    "headers": [
      "管理対象",
      "更新・削除で確認すること"
    ],
    "rows": [
      [
        "文書",
        "正本の版・所有者・権限を記録"
      ],
      [
        "チャンク",
        "変更箇所を再分割し、古い断片を除去"
      ],
      [
        "ベクトル",
        "変更分を再埋め込み。モデル変更時は互換性確認"
      ],
      [
        "索引",
        "検査後に公開版を切り替え、戻せるようにする"
      ],
      [
        "キャッシュ",
        "文書・権限・構成の変更に合わせて失効"
      ]
    ],
    "takeaway": "原文の更新だけでは完了しない。削除・権限剥奪も末端まで反映する。",
    "weight": 1.1,
    "notes": "文書、チャンク、ベクトル、索引、キャッシュの対応をIDと版で追跡します。解析・分割設定を変えた場合も再構築の範囲を判定します。新しい索引を検査して切り替え、障害時に復旧できるようにします。ただし切り戻しで削除済み情報や剥奪済み権限を復活させない制御も必要です。鮮度、遅延、費用と失敗を監視します。",
    "expand": "モデル呼び出しだけでなく、再取り込みや評価にも費用がかかることを補足します。",
    "sources": [
      {
        "label": "ガイド第8章・8.7",
        "href": "/rag-guide/guide/chapter-08/#section-8-7"
      },
      {
        "label": "ガイド第8章・8.4",
        "href": "/rag-guide/guide/chapter-08/#section-8-4"
      }
    ]
  },
  {
    "id": "aws",
    "section": "6. AWSでRAGを設計する",
    "topic": "6-1",
    "title": "最小構成：KB・モデル・ストアを分ける。",
    "layout": "table",
    "headers": [
      "役割",
      "Customer-managed KBの構成例"
    ],
    "rows": [
      [
        "原文を保管",
        "Amazon S3"
      ],
      [
        "取り込み・検索をつなぐ",
        "Amazon Bedrock Knowledge Bases"
      ],
      [
        "埋め込み／回答生成",
        "Amazon Bedrockの埋め込みモデル／生成モデル"
      ],
      [
        "索引を保存・検索",
        "Amazon S3 Vectors または Amazon OpenSearch"
      ]
    ],
    "takeaway": "Retrieve：根拠候補を取得 ／ RetrieveAndGenerate：検索と回答生成をまとめる",
    "weight": 1.2,
    "notes": "S3の原文をKBが取り込み、埋め込みモデルを呼んでストアへ登録します。アプリはRetrieveで候補を受け取り、必要な根拠整形後にConverseで生成できます。RetrieveAndGenerateは検索と生成をまとめるAPIです。S3 VectorsとOpenSearchはこの例では選択肢で必ず両方を置くわけではありません。Managed Knowledge Baseでは保存・索引もAWSが管理するため、KB一般で外部ストアの運用が必須とは限りません。",
    "expand": "KBが複数工程をつなぎ、各モデルとストアが処理を分担します。一つのサービスを一つの工程へ固定しません。",
    "sources": [
      {
        "label": "ガイド第10章",
        "href": "/rag-guide/guide/chapter-10/"
      },
      {
        "label": "AWS公式：Knowledge Bases",
        "href": "https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html"
      }
    ]
  },
  {
    "id": "s3-vectors",
    "section": "6. AWSでRAGを設計する",
    "topic": "6-2",
    "title": "S3 Vectors：ベクトルの保存・検索を担う。",
    "layout": "columns",
    "items": [
      {
        "label": "保存する",
        "text": "ベクトルバケットと索引に、ベクトル・キー・メタデータを格納。"
      },
      {
        "label": "検索する",
        "text": "質問ベクトルに近い候補を、メタデータ条件で絞って取得。"
      },
      {
        "label": "組み合わせる",
        "text": "KBと接続するか、アプリからAPIを使う。原文のS3とは役割が別。"
      }
    ],
    "takeaway": "S3 Vectors自体は、文章の埋め込みや回答生成をしない。",
    "weight": 0.7,
    "notes": "S3 Vectorsはベクトルを保存し、類似度とメタデータ条件で検索するストアです。通常のS3バケットにPDFを置く処理と、ベクトル索引への登録は異なります。ベクトル化には埋め込みモデル、回答には生成モデル、取り込み全体の接続にはKBやアプリを組み合わせます。必要な検索方式、応答時間、運用、費用で選定します。",
    "expand": "ストア単体の機能と、KB経由で利用できる検索・フィルターの条件は分けて確認します。",
    "sources": [
      {
        "label": "ガイド第10章",
        "href": "/rag-guide/guide/chapter-10/"
      },
      {
        "label": "AWS公式：S3 Vectors",
        "href": "https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors.html"
      }
    ]
  },
  {
    "id": "opensearch",
    "section": "6. AWSでRAGを設計する",
    "topic": "6-3",
    "title": "OpenSearch：語とベクトルの検索を設計する。",
    "layout": "columns",
    "items": [
      {
        "label": "全文検索",
        "text": "語の解析・BM25による検索を構成する。"
      },
      {
        "label": "ベクトル検索",
        "text": "埋め込みの類似検索を構成する。"
      },
      {
        "label": "ハイブリッド",
        "text": "両検索の結果を統合し、フィルターや順位を調整する。"
      }
    ],
    "takeaway": "検索の柔軟性と、索引・容量・費用を管理する範囲を比べる。",
    "weight": 0.7,
    "notes": "OpenSearch Serviceは全文検索とベクトル検索、ハイブリッド検索に対応します。直接検索する場合とKBのストアとして使う場合では設定範囲が異なります。KBでHYBRIDを指定できるかはストアやフィルタ可能なテキストフィールドなどの条件を確認します。S3 Vectorsより常に優れるとせず、質問と運用要件で選びます。",
    "expand": "Managed clusterとServerlessなどの形態によって容量管理や機能が異なるため、構成とリージョンの対応を確認します。",
    "sources": [
      {
        "label": "ガイド第10章",
        "href": "/rag-guide/guide/chapter-10/"
      },
      {
        "label": "AWS公式：OpenSearchのベクトル検索",
        "href": "https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vector-search.html"
      }
    ]
  },
  {
    "id": "knowledge-bases",
    "section": "6. AWSでRAGを設計する",
    "topic": "6-4",
    "title": "Knowledge Bases：取り込みと検索をつなぐ。",
    "layout": "table",
    "headers": [
      "機能・API",
      "できること"
    ],
    "rows": [
      [
        "取り込み",
        "データソースを接続し、解析・分割・埋め込み・索引化をつなぐ"
      ],
      [
        "Retrieve",
        "質問に関連する根拠候補と出典を返す"
      ],
      [
        "RetrieveAndGenerate",
        "Customer-managed KBで、検索から回答・引用生成まで行う"
      ],
      [
        "構成に応じた設定",
        "検索条件・フィルター・再ランキングなどを調整する"
      ]
    ],
    "takeaway": "業務固有の権限・公開判定・回答品質は、利用側でも設計し評価する。",
    "weight": 0.9,
    "notes": "KBはベクトルストアの別名ではなく、取り込みと検索、モデル呼び出しをつなぎます。Customer-managedとManagedで管理範囲や設定が異なります。独自に根拠を選別したいならRetrieveの後にアプリで処理し、生成モデルへ渡します。RetrieveAndGenerateの引用も業務基準で確認します。Guardrailsは取得文書そのものへの認可を代替しません。",
    "expand": "Managed Knowledge Baseでは取り込み・索引・保存などもAWSが管理します。モデル、リージョン、KB種別ごとの対応を確認します。",
    "sources": [
      {
        "label": "ガイド第10章",
        "href": "/rag-guide/guide/chapter-10/"
      },
      {
        "label": "AWS公式：Retrieve",
        "href": "https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-retrieve.html"
      },
      {
        "label": "AWS公式：RetrieveAndGenerate",
        "href": "https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-retrieve-generate.html"
      }
    ]
  },
  {
    "id": "takeaways",
    "section": "まとめ",
    "title": "持ち帰る6つのこと。",
    "layout": "grid",
    "items": [
      {
        "label": "1 根拠を説明につなぐ",
        "text": "更新可能な外部知識を使い、出典を確かめられる。"
      },
      {
        "label": "2 四工程で切り分ける",
        "text": "準備する・集める・選ぶ・答える。"
      },
      {
        "label": "3 二層で実行を分ける",
        "text": "質問前に文書を準備し、質問ごとに検索・応答する。"
      },
      {
        "label": "4 検索は必要な根拠の回収",
        "text": "語と意味を補完し、統合と再順位付けを分ける。"
      },
      {
        "label": "5 評価と安全性を通す",
        "text": "検索と回答を別々に測り、権限・更新を全工程で守る。"
      },
      {
        "label": "6 高度化は失敗から選ぶ",
        "text": "最小構成を評価し、AWSでも役割からサービスを選ぶ。"
      }
    ],
    "takeaway": "自分の業務の一つの質問から、正本と期待する回答を用意しよう。",
    "weight": 0.8,
    "notes": "RAGの強みは外部根拠を検査できる説明につなぐことです。四工程と二層で責任を分け、必要な根拠を検索して最後まで保ちます。検索と生成を別々に測り、権限と鮮度を全工程で管理します。高度化やAWS選定は実際の質問と失敗に合わせます。ここから質疑へ移り、詳細は本文リンクで復習します。",
    "expand": "参加者の質問を、四工程・二層のどこに関わるものか整理して答えると、全体像の復習になります。",
    "sources": [
      {
        "label": "ガイド第2章",
        "href": "/rag-guide/guide/chapter-02/"
      },
      {
        "label": "ガイド第7章",
        "href": "/rag-guide/guide/chapter-07/"
      },
      {
        "label": "ガイド第10章",
        "href": "/rag-guide/guide/chapter-10/"
      }
    ]
  }
];

// Round cumulative boundaries, so each plan adds up to exactly its target duration.
export function timings(minutes: 30 | 40) {
  const total = slides.reduce((sum, slide) => sum + slide.weight, 0);
  let weight = 0;
  return slides.map((slide) => {
    const start = Math.round(weight / total * minutes * 60);
    weight += slide.weight;
    return { start, end: Math.round(weight / total * minutes * 60) };
  });
}
