# 01 — RAGは「検索＋生成」ではなく、根拠を運ぶシステム

サブタイトル: ソフトウェアエンジニアのためのRAGアーキテクチャ入門

- 30分でつかむ: 四工程 / 二層 / テスト / AWS実装
- 今日のゴール: 障害を工程へ分解し、最小構成から育てられる
- 図: 質問 → 根拠候補 → 根拠付き回答（全体を細いパイプで接続）

# 02 — RAGを選ぶ理由は、流暢さではなく更新・権限・出典

- LLM単体: 説明は得意。知識の版・出典・権限を回答ごとに固定しにくい
- 検索: 原文へ戻れる。複数資料の統合は利用者が担う
- RAG: 外部知識を検索し、条件付きの回答と引用へ統合する
- 判断軸: 最新性 / 組織固有情報 / 出典 / アクセス制御

# 03 — 最終回答だけを見ると、障害原因を取り違える

- 同じ誤答でも原因は異なる
- 文書がない → Ingestion
- 正解を取れない → Retrieval
- 候補から落とす → Post-retrieval
- 根拠を無視する → Generation
- 結論: 中間成果物を観測可能にする

# 04 — RAGは四工程に分けると設計と責任境界が見える

- ① Pre-retrieval: 解析・正規化・chunk・metadata・embedding・index
- ② Retrieval: query理解・変換・filter・sparse/dense/hybrid検索
- ③ Post-retrieval: rerank・重複排除・圧縮・順序付け
- ④ Generation: prompt・根拠利用・引用・回答保留
- 図: 左から右の四工程と、各工程の入出力

# 05 — Pre-retrievalで「検索可能な知識」を作る

- 正本と版: 更新・失効・公開範囲を管理する
- Chunk: 意味のまとまりと原文への復元可能性を両立する
- Metadata / ACL: 製品、版、地域、時点、権限を保持する
- Index lifecycle: 取り込み完了と公開を分け、再構築可能にする
- 出力契約: chunk本文＋source ID＋位置＋版＋権限

# 06 — Retrievalは候補を広く拾い、条件で正しく絞る

- Query理解: 対象、版、期間、識別子、曖昧さを抽出
- Sparse: エラーコードや型番など完全一致に強い
- Dense: 言い換えや意味の近さに強い
- Hybrid: 両者を統合し、metadata filterで適用範囲を固定
- 観測: query、filter、rank、score、sourceを保存

# 07 — Post-retrievalは「上位K件」をLLMが使える根拠へ変える

- Rerank: 質問への直接性で並べ直す
- Dedup: 同一内容の版違い・重複chunkを抑える
- Compression: 条件・例外・出典を壊さず不要部分を減らす
- Context配置: 重要根拠を埋もれさせず、矛盾を明示する
- 原則: 検索scoreは正答確率ではない

# 08 — Generationの正常系には「答えない」を含める

- Prompt契約: 根拠だけを使い、適用条件と例外を引き継ぐ
- Citation: 主張と原文位置を対応付ける
- Conflict: 同格の資料が矛盾するなら断定しない
- Abstention: 根拠不足・権限不足・曖昧さを理由付きで返す
- 出力: answer / citations / status / reason

# 09 — OnlineとOfflineを分けると、変更と配信を独立できる

- Offline層: source → parse → chunk → embed → index
- Online層: request → retrieve → rerank → generate → response
- 境界: versioned index / metadata schema / retrieval contract
- 利点: blue-green index、再現試験、段階的ロールアウト
- 横断: identity、policy、telemetry、cost

# 10 — 最初は単純に作り、失敗の証拠から一段ずつ足す

- Stage 1: dense検索＋top-k＋根拠付き生成
- Stage 2: metadata filter / hybrid / rerank
- Stage 3: query routing / multi-step / tool連携
- 追加条件: 再現する失敗、改善仮説、評価指標、ロールバック
- アンチパターン: 最初から全機能を積み、原因を観測できない

# 11 — テストは四工程の契約とEnd-to-endを同じ版で結ぶ

- Pre: parse成功率、chunk境界、metadata/ACL、index件数
- Retrieval: Recall@k、MRR/nDCG、filter漏れ、正解根拠の順位
- Post: 根拠保持率、重複率、圧縮後の条件保持
- Generation: 忠実性、引用正確性/網羅性、回答保留
- E2E: タスク成功、安全、p95遅延、費用。重大失敗は平均で相殺しない

# 12 — AWS最小構成は四工程をManaged Serviceへ写像できる

- S3原文 → Bedrock Knowledge Base（parser / chunking）
- Titan Text Embeddings V2 → S3 Vectors
- Retrieve API → rank / score / text / S3 URIを診断
- RetrieveAndGenerate → Claude Haiku 4.5 → answer / citations
- 東京リージョン。API Gateway / Lambda / Web UIは初回成功後

# 13 — 設計レビューでは四工程・二層・評価ゲートを確認する

- 四工程: 各入出力と失敗責任を説明できるか
- 二層: index版とonline設定を再現・切替できるか
- 評価: 工程別＋E2E＋安全条件を回帰試験できるか
- AWS: Retrieveで診断し、RetrieveAndGenerateの引用で利用根拠を確認
- Takeaway: まず観測可能な最小構成。高度化は失敗パターンから

