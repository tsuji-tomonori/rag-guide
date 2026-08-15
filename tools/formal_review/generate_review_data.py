#!/usr/bin/env python3
"""Generate auditable review tables from the pinned RAG guide snapshot."""

from __future__ import annotations

import csv
import concurrent.futures
import hashlib
import html
import json
import re
import subprocess
import sys
import time
import urllib.error
import urllib.request
from html.parser import HTMLParser
from dataclasses import dataclass
from pathlib import Path
from urllib.parse import quote, unquote, urlparse


ROOT = Path(__file__).resolve().parents[2]
DOCS = ROOT / "docs"
OUT = ROOT / "formal" / "review-data"
EXPECTED_COMMIT = "bfd1a104189827dff1d2febc13a0cce48120c6de"
NUMBERED = re.compile(r"^##\s+(\d+\.\d+\.\d+\.)\s+(.+?)\s*$")
LINK = re.compile(r"\[([^\]]+)\]\((https?://[^)]+)\)")
TITLE = re.compile(r"<title[^>]*>(.*?)</title>", re.I | re.S)
ARXIV_TITLE = re.compile(r'<meta\s+name="citation_title"\s+content="([^"]+)"', re.I)
ARXIV_AUTHORS = re.compile(r'<meta\s+name="citation_author"\s+content="([^"]+)"', re.I)
ARXIV_DATE = re.compile(r'<meta\s+name="citation_date"\s+content="([^"]+)"', re.I)
META_TITLE = re.compile(r'<meta\s+(?:name|property)="(?:citation_title|og:title)"\s+content="([^"]+)"', re.I)
META_DATE = re.compile(r'<meta\s+name="citation_(?:publication_date|date)"\s+content="([^"]+)"', re.I)
META_AUTHOR = re.compile(r'<meta\s+name="citation_author"\s+content="([^"]+)"', re.I)


TECH_PATTERNS: list[tuple[str, str, str, str]] = [
    ("RAG", r"\bRAG\b|Retrieval-Augmented Generation|検索拡張生成", "生成・アーキテクチャ", "INV-009;INV-011;INV-012"),
    ("情報源台帳", r"情報源台帳|source catalog|データソース棚卸し", "データ管理", "INV-004;INV-005;INV-024"),
    ("Ingestion", r"\bingestion\b|取り込み", "Pre-retrieval", "INV-003;INV-022;INV-023"),
    ("Snapshot・Manifest", r"snapshot|manifest|スナップショット|マニフェスト", "データ管理", "INV-004;INV-017;INV-020"),
    ("文書解析・Layout・OCR", r"parser|文書解析|layout|OCR|Donut|Nougat", "Pre-retrieval", "INV-004;INV-022"),
    ("Chunking", r"chunking|チャンク|TextTiling|Late Chunking", "Pre-retrieval", "INV-004;INV-008;INV-022"),
    ("Metadata・Provenance", r"metadata|provenance|来歴|出所", "データ管理", "INV-004;INV-005;INV-019"),
    ("ACL・認可", r"ACL|認可|RBAC|ABAC|ReBAC|Cedar|権限", "セキュリティ", "INV-001;INV-002;INV-003;INV-015"),
    ("Embedding", r"embedding|埋め込み|Sentence-BERT|MTEB|bi-encoder", "Pre-retrieval", "INV-006"),
    ("Vector index・ANN", r"vector index|ベクトルインデックス|ANN|HNSW|IVF|Product Quantization|DiskANN|Faiss", "Pre-retrieval", "INV-003;INV-006;INV-018"),
    ("Query理解・計画", r"Query理解|query type|検索計画|retrieval routing", "Retrieval", "INV-007;INV-021"),
    ("Query変換", r"Query rewriting|Query2doc|HyDE|Query decomposition|multi-query|Document expansion", "Retrieval", "INV-007"),
    ("Sparse retrieval", r"Sparse retrieval|BM25|TF-IDF|転置index|SPLADE|DeepImpact", "Retrieval", "INV-008"),
    ("Dense retrieval", r"Dense retrieval|DPR|dense retrieval|ColBERT|ANCE|Contriever|E5", "Retrieval", "INV-006;INV-008"),
    ("Hybrid・Fusion", r"Hybrid retrieval|ハイブリッド検索|RRF|rank fusion|score normalization", "Retrieval", "INV-008"),
    ("Retrieval-time filtering", r"Retrieval-time filtering|Pre-filter|Post-filter|filtered ANN|metadata filter", "Retrieval", "INV-001;INV-002;INV-003"),
    ("Dedup・Diversity", r"dedup|重複排除|Near-duplicate|MMR|Diversity", "Post-retrieval", "INV-008"),
    ("Reranking", r"rerank|Reranking|cross-encoder|monoT5|RankT5", "Post-retrieval", "INV-008;INV-020"),
    ("Context compression", r"Context compression|RECOMP|LLMLingua|Selective Context", "Post-retrieval", "INV-004;INV-009"),
    ("Evidence Set", r"Evidence Set|Evidence unit|evidence sufficiency", "Post-retrieval", "INV-004;INV-009;INV-010"),
    ("Context packing", r"Context packing|token budget|position bias|Lost in the Middle", "Post-retrieval", "INV-009;INV-021"),
    ("矛盾・版・時点", r"矛盾|CONFLICTING|OUTDATED|version lineage|有効期間|旧版|最新版|過去時点", "Post-retrieval", "INV-005;INV-010;INV-013"),
    ("Grounded generation", r"Grounded prompt|grounding|根拠に基づ|生成契約", "Generation", "INV-011;INV-012;INV-014"),
    ("Structured output", r"structured output|schema違反|format validation|出力schema", "Generation", "INV-022"),
    ("Answerability・Refusal", r"Answerability|回答保留|Refusal|回答可能", "Generation", "INV-009;INV-013"),
    ("Citation", r"Citation|citation|引用", "Generation", "INV-004;INV-012;INV-019"),
    ("Claim-level verification", r"Claim-level|claim単位|SUPPORTS|REFUTES|NOT ENOUGH INFO|NLI", "Generation", "INV-010;INV-011;INV-012"),
    ("Conversational RAG", r"Conversational RAG|会話履歴|session|長期記憶|QReCC|CONQRR", "Advanced RAG", "INV-002;INV-007;INV-024"),
    ("Tool use・Agentic RAG", r"Agentic RAG|Toolformer|ReAct|tool registry|ツール台帳|tool・action", "Advanced RAG", "INV-014;INV-015;INV-016;INV-021;INV-023"),
    ("評価データセット", r"評価データセット|gold evidence|golden dataset|dataset schema|synthetic data", "Evaluation", "INV-020"),
    ("Retrieval評価", r"Recall@k|nDCG|MRR|ranking quality|candidate recall", "Evaluation", "INV-020"),
    ("Generation評価", r"faithfulness|citation precision|citation completeness|RAGAS|ARES|LLM-as-a-judge", "Evaluation", "INV-009;INV-011;INV-012;INV-020"),
    ("Regression・A/B・Canary", r"Regression|A-B|A/B|Canary|release gate|回帰", "Evaluation・運用", "INV-017;INV-018;INV-020"),
    ("Prompt injection・Poisoning", r"prompt injection|プロンプトインジェクション|data poisoning|PoisonedRAG|StruQ|BIPIA", "セキュリティ", "INV-014;INV-015"),
    ("Privacy・機密情報", r"privacy|プライバシー|機密|data minimization|redaction|差分プライバシー", "セキュリティ", "INV-024"),
    ("Audit・Trace", r"監査|audit|trace|トレーサビリティ|Model Cards", "運用", "INV-019;INV-020"),
    ("性能・可用性", r"SLI|SLO|latency|throughput|timeout|retry|circuit breaker|可用性", "運用", "INV-021;INV-023"),
    ("Cost・Routing", r"cost|費用|FrugalGPT|RouteLLM|model routing|unit economics", "運用", "INV-021"),
    ("更新・削除・Rollback", r"blue-green|rollback|切り戻し|削除|ACL propagation|drift|FreshDiskANN|SPFresh", "運用", "INV-003;INV-017;INV-018;INV-023"),
    ("Governance", r"governance|ガバナンス|human oversight|appeal|risk tier", "運用", "INV-016;INV-019;INV-024"),
    ("Federated・Routed RAG", r"Federated|Routed RAG|router|MoR|R³AG", "Advanced RAG", "INV-001;INV-002;INV-004;INV-008"),
    ("Structured Data RAG", r"Structured Data RAG|text-to-SQL|RAT-SQL|DIN-SQL|semantic layer", "Advanced RAG", "INV-015;INV-022"),
    ("Long-context RAG", r"Long-context|LongBench|RULER|LC routing", "Advanced RAG", "INV-009;INV-021;INV-024"),
    ("Hierarchical RAG", r"Hierarchical|RAPTOR|TreeRAG|ZoomRAG|hierarchy", "Advanced RAG", "INV-003;INV-004;INV-005"),
    ("GraphRAG", r"GraphRAG|graph-guided|G-Retriever|HippoRAG|KnowGPT", "Advanced RAG", "INV-001;INV-003;INV-004"),
    ("Multimodal RAG", r"Multimodal|ColPali|vision-native|modalities", "Advanced RAG", "INV-004;INV-012;INV-022"),
    ("Retrieval-aware training", r"Retrieval-aware|RA-LLM|REALM|RETRO|FiD|Self-RAG", "Advanced RAG", "INV-006;INV-009;INV-020"),
    ("AWS Knowledge Bases", r"Knowledge Bases|Knowledge Base|RetrieveAndGenerate|AgenticRetrieveStream|Converse", "AWS implementation", "INV-004;INV-009;INV-012;INV-017"),
    ("S3 Vectors", r"S3 Vectors|S3 Vector index|S3 Vector", "AWS implementation", "INV-001;INV-003;INV-006"),
]


# A few publisher pages do not expose citation metadata to a non-browser HTTP
# client. Record metadata confirmed against the publisher or official source so
# the generated inventory remains complete and reproducible.
SOURCE_METADATA_OVERRIDES = {
    "https://ieeexplore.ieee.org/document/666900": {
        "title_resolved": "On the resemblance and containment of documents",
        "authors_or_owner": "Andrei Z. Broder",
        "year": "1997",
    },
    "https://www.vldb.org/pvldb/vol13/p3411-armbrust.pdf": {
        "title_resolved": "Delta Lake: High-Performance ACID Table Storage over Cloud Object Stores",
        "authors_or_owner": "Michael Armbrust et al.",
        "year": "2020",
    },
    "https://www.vldb.org/pvldb/vol6/p1033-akidau.pdf": {
        "title_resolved": "MillWheel: Fault-Tolerant Stream Processing at Internet Scale",
        "authors_or_owner": "Tyler Akidau; Alex Balikov; Kaya Bekiroglu; Slava Chernyak; Josh Haberman; Reuven Lax; Sam McVeety; Daniel Mills; Paul Nordstrom; Sam Whittle",
        "year": "2013",
    },
    "https://openreview.net/forum?id=dILIRHcYvC": {
        "title_resolved": "Learning Filter-Aware Distance Metrics for Nearest Neighbor Search with Multiple Filters",
        "authors_or_owner": "Ananya Sutradhar; Suryansh Gupta; Ravishankar Krishnaswamy; Haiyang Xu; Aseem Rastogi; Gopal Srinivasa",
        "year": "2025",
    },
    "https://proceedings.neurips.cc/paper_files/paper/2024/file/efaf1c9726648c8ba363a5c927440529-Paper-Conference.pdf": {
        "title_resolved": "G-Retriever: Retrieval-Augmented Generation for Textual Graph Understanding and Question Answering",
        "authors_or_owner": "Xiaoxin He; Yijun Tian; Yifei Sun; Nitesh V. Chawla; Thomas Laurent; Yann LeCun; Xavier Bresson; Bryan Hooi",
        "year": "2024",
    },
    "https://proceedings.iclr.cc/paper_files/paper/2025/file/99e9e141aafc314f76b0ca3dd66898b3-Paper-Conference.pdf": {
        "title_resolved": "ColPali: Efficient Document Retrieval with Vision Language Models",
        "authors_or_owner": "Manuel Faysse; Hugues Sibille; Tony Wu; Bilel Omrani; Gautier Viaud; Celine Hudelot; Pierre Colombo",
        "year": "2025",
    },
    "https://openreview.net/forum?id=xw5nxFWMlo": {
        "title_resolved": "Retrieval meets Long Context Large Language Models",
        "authors_or_owner": "Peng Xu; Wei Ping; Xianchao Wu; Lawrence McAfee; Chen Zhu; Zihan Liu; Sandeep Subramanian; Evelina Bakhturina; Mohammad Shoeybi; Bryan Catanzaro",
        "year": "2024",
    },
    "https://proceedings.iclr.cc/paper_files/paper/2025/file/0382cb76309820f71c6eacd47b36ce71-Paper-Conference.pdf": {
        "title_resolved": "From Isolated Conversations to Hierarchical Schemas: Dynamic Tree Memory Representation for LLMs",
        "authors_or_owner": "Alireza Rezazadeh; Zichao Li; Wei Wei; Yujia Bao",
        "year": "2025",
    },
    "https://openreview.net/forum?id=WE_vluYUL-X": {
        "title_resolved": "ReAct: Synergizing Reasoning and Acting in Language Models",
        "authors_or_owner": "Shunyu Yao; Jeffrey Zhao; Dian Yu; Nan Du; Izhak Shafran; Karthik Narasimhan; Yuan Cao",
        "year": "2023",
    },
}

# These URLs are living specifications, not versioned papers. Marking them as
# continuously maintained is more accurate than inventing a publication year.
for _url in [
    "https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html",
    "https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-bedrock-kb.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-supported.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters-titan-embed-text.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters-embed-v3.html",
    "https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-create-index.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/kb-advanced-parsing.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/kb-custom-transformation.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/kb-chunking.html",
    "https://docs.aws.amazon.com/bedrock/latest/APIReference/API_KnowledgeBaseVectorSearchConfiguration.html",
    "https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrievalFilter.html",
    "https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-metadata-filtering.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/rerank-use.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/structured-output.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/evaluation-kb.html",
    "https://docs.aws.amazon.com/bedrock/latest/userguide/kb-multimodal.html",
]:
    SOURCE_METADATA_OVERRIDES[_url] = {
        "authors_or_owner": "Amazon Web Services",
        "year": "継続更新",
    }


ISSUES = [
    {
        "id": "FND-001",
        "location": "docs/4.質問に合う根拠を探す/4.6.Retrieval-time filtering.md:56-62 と docs/8.安全に運用する/8.1.セキュリティと権限制御.md:40-45",
        "severity": "Critical",
        "problem": "第4章は検索後フィルターで権限外本文を一時取得し得る方式を条件付きで許容しますが、第8章は本文が生成モデル・キャッシュ・トレースへ入る前に検索前または検索中で候補集合から除外すると定めています。機密性要件に応じた例外条件が一意ではありません。",
        "evidence": "4.6.3はpost-filterを方式候補とし、8.1.2は権限のないチャンクを検索前または検索中に除外すると規定。INV-001/SCN-003は後者を安全境界としてモデル化。",
        "impact": "実装者が権限外本文を検索サービス、メモリ、ログへ露出する構成を選べ、認可境界の合否が章によって変わります。",
        "fix": "ACL・tenant・削除・失効はpre-filterまたは認可統合済みfiltered ANNに限定する、と4.6.3へ明記してください。post-filterは非機密の品質フィルターに限定し、権限用途では禁止してください。",
        "verification": "SCN-003/004/005を全retriever経路で実装し、権限外本文が検索応答・cache・trace・promptへ一度も出ないnegative testを実行します。",
        "status": "要修正",
    },
    {
        "id": "FND-002",
        "location": "docs/6.根拠に基づいて回答する/6.1.Grounded prompt.md:61-65 と同:14-16、docs/6.根拠に基づいて回答する/6.3.Answerability・Refusal.md:23-25",
        "severity": "Major",
        "problem": "プロンプト例は『根拠不足では回答保留』と一律に読めますが、本文は論点単位の部分回答を正常経路として許可しています。部分的な十分性の判定順序が曖昧です。",
        "evidence": "6.1.1は部分回答を列挙し、6.3.2は一部根拠が揃う場合に支持範囲だけ答える一方、テンプレートは根拠不足を一括保留。INV-009/013、SCN-010/011で分岐を分離。",
        "impact": "同じEvidence Setから過剰拒否または無根拠回答のどちらも実装でき、評価の期待値が固定できません。",
        "fix": "テンプレートを『論点ごとに十分性を判定し、支持できる論点は限定回答、支持できない論点は不足を明示。回答全体の中核が不足する場合のみ全体保留』へ置換してください。",
        "verification": "全論点十分、一部十分、中核不足の3ケースを独立テストし、claim単位で根拠・保留を照合します。",
        "status": "要修正",
    },
    {
        "id": "FND-003",
        "location": "docs/9.失敗パターンに応じて高度化する/9.9.Agentic RAG.md:63-76、docs/8.安全に運用する/8.1.セキュリティと権限制御.md:65-74、docs/6.根拠に基づいて回答する/6.8.回答と業務実行の境界.md:23-25",
        "severity": "Major",
        "problem": "第9章は副作用のある操作で人承認を必須としますが、第8章は『必要に応じて』、第6章は『必要な人の承認』と記し、必須範囲と例外規則が統一されていません。",
        "evidence": "9.9.3/4は書き込み操作の人承認を必須化。8.1.4は送信・決済・削除・権限変更に必要に応じた承認。INV-016/SCN-015/016は第9章の強い契約を採用。",
        "impact": "自動書き込みを許す実装と全面承認を要する実装が同じ本文に適合し、運用負荷と安全性を事前判定できません。",
        "fix": "原則を一つに統一してください。推奨は『副作用操作は人承認を既定必須。ただし事前承認済みの低リスク・可逆・上限付き操作は、risk tierと例外承認を構成として明記した場合に限り自動実行可』です。",
        "verification": "read-only、通常write、事前承認済み低risk write、高risk writeの4ケースでpolicy decisionと監査記録を固定試験します。",
        "status": "要修正",
    },
    {
        "id": "FND-004",
        "location": "docs/5.根拠を選別・整形する/5.5.Evidence Set設計.md:53-65 と docs/6.根拠に基づいて回答する/6.3.Answerability・Refusal.md:5-19",
        "severity": "Major",
        "problem": "Evidence sufficiencyの構成要素は列挙されていますが、論点ごとの必須条件・閾値・出力schemaが具体化されず、同じ入力に対する回答可能判定を再現できません。",
        "evidence": "『必要な論点をどれだけ含むか』『必要根拠の数』等はあるが、質問型ごとのrequired facets、合格式、UNKNOWN処理がない。INV-009は判定関数を抽象boolとしてのみ扱う。",
        "impact": "Quintはsufficiency判定後の安全性は検証できますが、その判定自体の正しさを検証できず、本文全体の最重要ゲートが実装者判断へ残ります。",
        "fix": "質問型ごとにrequired_facet、minimum_support、authority、time/version、conflict_policy、UNKNOWN時動作を持つschemaと受入例を追加してください。",
        "verification": "同一fixtureに対する決定的rule判定、LLM判定との比較、人手goldとの誤り率を測り、閾値をversion管理します。",
        "status": "要修正",
    },
    {
        "id": "FND-005",
        "location": "docs/3.回答に使う資料を準備する/3.2.Ingestion設計.md:122-145、docs/8.安全に運用する/8.7.知識更新と運用.md:47-65",
        "severity": "Major",
        "problem": "削除・権限剥奪の伝播を要求しますが、反映中に既に選択済み・生成待ち・cache済みのEvidenceを無効化する実行時契約が明示されていません。",
        "evidence": "8.7.3は各保存先への伝播を扱う一方、SCN-019ではrevokeAccess後に選択済みEvidenceを無効化しないとINV-001/003が破れます。",
        "impact": "質問開始後の権限剥奪や削除で、旧権限の回答が完了し得ます。",
        "fix": "回答確定直前にpolicy versionと文書statusを再検証し、変更済みならEvidence Setを破棄・再検索・保留する契約を追加してください。",
        "verification": "retrieval後・generation前に権限剥奪イベントを注入し、回答本文・引用・cacheへ残らない競合試験を実行します。",
        "status": "要修正",
    },
    {
        "id": "FND-006",
        "location": "docs/3.回答に使う資料を準備する/3.8.Publish前ゲート.md:15-23、docs/7.品質を評価し改善する/7.8.Regression・A-B・Canary.md、docs/8.安全に運用する/8.7.知識更新と運用.md:37-45",
        "severity": "Major",
        "problem": "公開前ゲートとrelease gateの責務は分離されていますが、複数構成版の互換性を表す一意なmanifest schemaと、原子的切替の受入条件が本文横断で固定されていません。",
        "evidence": "モデル・prompt・index・policyの互換組合せを記録する要求はあるが、required fieldsとversion compatibility ruleがない。INV-017/018は抽象release IDのみ。",
        "impact": "個別ゲートを通っても互換でないembedding/query encoder、index/schema、prompt/output schemaを組み合わせて公開できます。",
        "fix": "release_manifestにsource_snapshot、parser、chunker、embedding、index schema、retriever、reranker、prompt、model、policy、output schema、evaluation datasetのIDとcompatibility ruleを必須化してください。",
        "verification": "互換・非互換fixtureでpublish可否をテストし、alias切替失敗時に旧版と現在policyへ原子的に戻ることを確認します。",
        "status": "要修正",
    },
    {
        "id": "FND-007",
        "location": "docs/4.質問に合う根拠を探す/4.2.Query変換.md、docs/9.失敗パターンに応じて高度化する/9.2.Conversational RAG.md",
        "severity": "Major",
        "problem": "Query変換で意図保持を評価する方針はありますが、期間・版・否定・権限に関わる条件を失わない形式的契約が定義されていません。",
        "evidence": "SCN-009はqueryIntentPreservedを前提boolとして扱い、失われた場合の根拠選択を禁止。本文はtraceを要求するが同値・含意条件が未定義。",
        "impact": "語彙拡張や会話解決で『2023年当時』『しない』『このtenant』が落ちても、検索結果が自然なら検出できません。",
        "fix": "resolved query contractにentity、time_range、version_scope、polarity、tenant、hard_filtersを設け、変換前条件が変換後へ包含されることをrule検査してください。",
        "verification": "期間・否定・比較・代名詞・tenantを含む変形metamorphic testで、hard conditionの保存を確認します。",
        "status": "要修正",
    },
    {
        "id": "FND-008",
        "location": "docs/8.安全に運用する/8.4.監査とトレーサビリティ.md、docs/6.根拠に基づいて回答する/6.4.Citation設計.md、docs/7.品質を評価し改善する/7.9.Traceに基づく失敗分析.md",
        "severity": "Minor",
        "problem": "traceに含める項目は十分に列挙されていますが、相関IDの生成・継承・一意性・欠損時の失敗動作を一つの契約として参照できません。",
        "evidence": "INV-019はmaterial outputにauditLinkedを要求するが、本文では複数節に散在。",
        "impact": "工程別ログが存在しても同一実行として結合できず、失敗の最初のlayerを特定できない場合があります。",
        "fix": "trace_id、request_id、release_id、dataset_item_id、candidate_id、evidence_id、claim_id、citation_id、tool_call_idの関係を一表へ集約してください。",
        "verification": "正常・retry・fallback・rollbackの各traceをjoinし、孤立IDと多重割当が0件であることを検査します。",
        "status": "修正推奨",
    },
]


@dataclass
class Unit:
    unit_id: str
    chapter: str
    file: str
    line_start: int
    line_end: int
    heading: str
    body: str


class MetadataParser(HTMLParser):
    def __init__(self) -> None:
        super().__init__()
        self.meta: dict[str, list[str]] = {}
        self.in_title = False
        self.title_parts: list[str] = []

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        values = {k.lower(): v for k, v in attrs if v is not None}
        if tag.lower() == "meta":
            key = (values.get("name") or values.get("property") or "").lower()
            content = values.get("content")
            if key and content:
                self.meta.setdefault(key, []).append(content)
        elif tag.lower() == "title":
            self.in_title = True

    def handle_endtag(self, tag: str) -> None:
        if tag.lower() == "title":
            self.in_title = False

    def handle_data(self, data: str) -> None:
        if self.in_title:
            self.title_parts.append(data)


def doi_from_url(url: str) -> str | None:
    parsed = urlparse(url)
    if parsed.netloc.lower() == "doi.org":
        return unquote(parsed.path.lstrip("/"))
    if parsed.netloc.lower() == "dl.acm.org" and "/doi/" in parsed.path:
        return unquote(parsed.path.split("/doi/", 1)[1].lstrip("/"))
    return None


def crossref_metadata(doi: str) -> dict[str, str] | None:
    encoded = quote(doi, safe="")
    request = urllib.request.Request(
        f"https://api.crossref.org/works/{encoded}",
        headers={"User-Agent": "rag-guide-formal-review/1.0 (mailto:review@example.invalid)"},
    )
    try:
        with urllib.request.urlopen(request, timeout=12) as response:
            message = json.load(response)["message"]
    except Exception:
        return None
    title = " ".join(message.get("title", [])).strip()
    authors = []
    for author in message.get("author", []):
        name = " ".join(x for x in [author.get("given", ""), author.get("family", "")] if x).strip()
        if name:
            authors.append(name)
    date_parts = (message.get("published-print") or message.get("published-online") or message.get("issued") or {}).get("date-parts", [[]])
    year = str(date_parts[0][0]) if date_parts and date_parts[0] else ""
    return {
        "title_resolved": title,
        "authors_or_owner": "; ".join(authors),
        "year": year,
        "resolution_status": "resolved",
        "http_status": "200",
        "notes": f"metadata_resolved_via=Crossref; doi={doi}",
    }


def write_csv(path: Path, rows: list[dict[str, object]], fields: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8-sig", newline="") as f:
        w = csv.DictWriter(
            f,
            fieldnames=fields,
            extrasaction="ignore",
            lineterminator="\n",
        )
        w.writeheader()
        w.writerows(rows)


def chapter_of(path: Path) -> str:
    rel = path.relative_to(DOCS)
    return rel.parts[0].split(".", 1)[0] if rel.parts else ""


def extract_units() -> list[Unit]:
    units: list[Unit] = []
    for path in sorted(DOCS.rglob("*.md")):
        rel = path.relative_to(ROOT).as_posix()
        if path.name == "序文.md":
            lines = path.read_text(encoding="utf-8").splitlines()
            heading = lines[0].lstrip("# ").strip() if lines else path.parent.name
            body = "\n".join(lines[1:]).strip()
            units.append(Unit(f"INTRO-{chapter_of(path)}", chapter_of(path), rel, 1, len(lines), heading, body))
            continue
        lines = path.read_text(encoding="utf-8").splitlines()
        starts: list[tuple[int, str, str]] = []
        for idx, line in enumerate(lines, 1):
            m = NUMBERED.match(line)
            if m:
                starts.append((idx, m.group(1).rstrip("."), m.group(2).strip()))
        for pos, (start, unit_id, heading) in enumerate(starts):
            end = starts[pos + 1][0] - 1 if pos + 1 < len(starts) else len(lines)
            body_lines = lines[start:end]
            if pos == 0:
                # Treat the file-level introduction as part of its first numbered
                # explanation state. It is explanatory context, not a 340th state.
                body_lines = lines[: start - 1] + body_lines
            body = "\n".join(body_lines).strip()
            units.append(Unit(unit_id, unit_id.split(".")[0], rel, start, end, heading, body))
    return sorted(units, key=lambda u: (int(u.chapter) if u.chapter.isdigit() else 99, u.file, u.line_start))


def extract_links(units: list[Unit]) -> list[dict[str, str]]:
    by_url: dict[str, dict[str, object]] = {}
    for unit in units:
        text = f"{unit.heading}\n{unit.body}"
        for label, url in LINK.findall(text):
            item = by_url.setdefault(url, {"url": url, "labels": [], "units": [], "files": []})
            item["labels"].append(label)
            item["units"].append(unit.unit_id)
            item["files"].append(unit.file)
    rows: list[dict[str, str]] = []
    for i, (url, item) in enumerate(by_url.items(), 1):
        labels = list(dict.fromkeys(item["labels"]))
        units_ = list(dict.fromkeys(item["units"]))
        files = list(dict.fromkeys(item["files"]))
        rows.append({
            "source_id": f"SRC-{i:03d}",
            "label_in_guide": " / ".join(labels),
            "url": url,
            "source_type": classify_source(url),
            "role": source_role(url),
            "title_resolved": "",
            "authors_or_owner": "",
            "year": "",
            "resolution_status": "pending",
            "http_status": "",
            "used_by_units": ";".join(units_),
            "first_file": files[0] if files else "",
            "notes": "",
        })
    return rows


def classify_source(url: str) -> str:
    host = urlparse(url).netloc.lower()
    if host == "docs.aws.amazon.com":
        return "ベンダー公式仕様"
    if "arxiv.org" in host or "openreview.net" in host:
        return "プレプリント／公開査読"
    if any(x in host for x in ["aclanthology.org", "proceedings.", "papers.nips.cc", "vldb.org", "usenix.org", "dl.acm.org", "ieeexplore.ieee.org", "proceedings.mlr.press"]):
        return "査読付き論文／会議録"
    if host == "doi.org":
        return "DOI解決先"
    if "research.google" in host or "microsoft.com" in host:
        return "研究機関公開資料"
    return "一次資料候補"


def source_role(url: str) -> str:
    host = urlparse(url).netloc.lower()
    if host == "docs.aws.amazon.com":
        return "公式仕様"
    return "起源・提案・代表研究・評価基準のいずれか（本文との関係を個別確認）"


def metadata_from_url(row: dict[str, str]) -> dict[str, str]:
    url = row["url"]
    doi = doi_from_url(url)
    if doi:
        crossref = crossref_metadata(doi)
        if crossref:
            return crossref
    request = urllib.request.Request(url, headers={"User-Agent": "rag-guide-formal-review/1.0"})
    try:
        with urllib.request.urlopen(request, timeout=12) as response:
            status = str(getattr(response, "status", 200))
            raw = response.read(900_000)
            final_url = response.geturl()
    except urllib.error.HTTPError as exc:
        return {"resolution_status": "http_error", "http_status": str(exc.code), "notes": str(exc)}
    except Exception as exc:  # noqa: BLE001 - preserve unresolved sources explicitly
        return {"resolution_status": "unresolved", "http_status": "", "notes": f"{type(exc).__name__}: {exc}"}

    text = raw.decode("utf-8", errors="replace")
    parser = MetadataParser()
    parser.feed(text)
    meta_title = (parser.meta.get("citation_title") or parser.meta.get("og:title") or [""])[0]
    title = meta_title or " ".join(parser.title_parts).strip() or row["label_in_guide"]
    title = html.unescape(re.sub(r"\s+", " ", title).strip())
    authors = parser.meta.get("citation_author", [])
    date = (parser.meta.get("citation_publication_date") or parser.meta.get("citation_date") or [""])[0]
    year_match = re.search(r"(?:19|20)\d{2}", date)
    if not year_match:
        year_match = re.search(r"(?:19|20)\d{2}", title)
    return {
        "title_resolved": title[:500],
        "authors_or_owner": "; ".join(dict.fromkeys(html.unescape(a) for a in authors))[:1000],
        "year": year_match.group(0) if year_match else "",
        "resolution_status": "resolved",
        "http_status": status,
        "notes": "" if final_url == url else f"redirected_to={final_url}",
    }


def resolve_sources(rows: list[dict[str, str]]) -> list[dict[str, str]]:
    cache_path = OUT / "source_metadata_cache.json"
    if cache_path.exists():
        cache = json.loads(cache_path.read_text(encoding="utf-8"))
    else:
        # The committed source inventory is itself a reproducible metadata
        # snapshot.  Seed the ignored HTTP cache from it when available so a
        # docs-only regeneration does not depend on live publisher endpoints.
        existing_inventory = OUT / "primary_sources.csv"
        if existing_inventory.exists():
            with existing_inventory.open(encoding="utf-8-sig", newline="") as handle:
                cache = {
                    row["url"]: {
                        "title_resolved": row["title_resolved"],
                        "authors_or_owner": row["authors_or_owner"],
                        "year": row["year"],
                        "resolution_status": row["resolution_status"],
                        "http_status": row["http_status"],
                        "notes": row["notes"],
                    }
                    for row in csv.DictReader(handle)
                }
        else:
            cache = {}
    pending = []
    for row in rows:
        cached = cache.get(row["url"])
        effective = dict(cached or {})
        if row["url"] in SOURCE_METADATA_OVERRIDES:
            effective.update(SOURCE_METADATA_OVERRIDES[row["url"]])
            effective["resolution_status"] = "resolved"
        research_source = row["source_type"] not in {"ベンダー公式仕様"}
        incomplete = not effective or effective.get("resolution_status") != "resolved"
        incomplete = incomplete or (
            research_source and (not effective.get("authors_or_owner") or not effective.get("year"))
        )
        if incomplete:
            pending.append(row)
    with concurrent.futures.ThreadPoolExecutor(max_workers=6) as executor:
        futures = {executor.submit(metadata_from_url, row): row["url"] for row in pending}
        for idx, future in enumerate(concurrent.futures.as_completed(futures), 1):
            cache[futures[future]] = future.result()
            if idx % 20 == 0:
                cache_path.write_text(json.dumps(cache, ensure_ascii=False, indent=2), encoding="utf-8")
    for row in rows:
        row.update(cache[row["url"]])
        override = SOURCE_METADATA_OVERRIDES.get(row["url"])
        if override:
            row.update(override)
            if urlparse(row["url"]).netloc.lower() == "docs.aws.amazon.com" and row.get("title_resolved") in {"", "Site Unavailable"}:
                row["title_resolved"] = row["label_in_guide"]
            row["resolution_status"] = "resolved"
            override_note = "metadata_override=publisher_or_official_source"
            existing_notes = [note.strip() for note in row.get("notes", "").split(";") if note.strip()]
            if override_note not in existing_notes:
                existing_notes.append(override_note)
            row["notes"] = "; ".join(existing_notes)
    cache_path.write_text(json.dumps(cache, ensure_ascii=False, indent=2), encoding="utf-8")
    return rows


def unit_rows(units: list[Unit], sources: list[dict[str, str]]) -> list[dict[str, str]]:
    url_to_id = {r["url"]: r["source_id"] for r in sources}
    issue_targets: list[tuple[str, str, int | None, int | None]] = []
    target_pattern = re.compile(
        r"(?P<file>docs/.*?\.md)(?::(?P<start>\d+)(?:-(?P<end>\d+))?)?"
        r"|(?P<same>同):(?P<same_start>\d+)(?:-(?P<same_end>\d+))?"
    )
    for issue in ISSUES:
        previous_file: str | None = None
        for match in target_pattern.finditer(issue["location"]):
            file = match.group("file") or previous_file
            if not file:
                continue
            previous_file = file
            start_text = match.group("start") or match.group("same_start")
            end_text = match.group("end") or match.group("same_end") or start_text
            issue_targets.append(
                (issue["id"], file, int(start_text) if start_text else None, int(end_text) if end_text else None)
            )
    rows = []
    for unit in units:
        text = f"{unit.heading}\n{unit.body}"
        tech = [name for name, pattern, _, _ in TECH_PATTERNS if re.search(pattern, text, re.I)]
        inv = []
        for _, pattern, _, ids in TECH_PATTERNS:
            if re.search(pattern, text, re.I):
                inv.extend(ids.split(";"))
        urls = [url for _, url in LINK.findall(text)]
        source_ids = [url_to_id[url] for url in urls if url in url_to_id]
        findings = []
        for finding_id, file, start, end in issue_targets:
            if unit.file != file:
                continue
            if start is None or end is None or (unit.line_start <= end and unit.line_end >= start):
                findings.append(finding_id)
        if findings:
            result = "要修正"
        elif source_ids:
            result = "整合（一次資料あり）"
        elif unit.chapter in {"1", "2", "10"}:
            result = "整合（統合・仕様説明）"
        else:
            result = "整合（節内契約／原点資料の直接割当なし）"
        rows.append({
            "state_id": f"STATE-{len(rows)+1:03d}",
            "unit_id": unit.unit_id,
            "chapter": unit.chapter,
            "file": unit.file,
            "line_start": str(unit.line_start),
            "line_end": str(unit.line_end),
            "heading": unit.heading,
            "summary": re.sub(r"\s+", " ", re.sub(r"```.*?```", " ", unit.body, flags=re.S)).strip()[:700],
            "technical_elements": ";".join(tech) if tech else "横断説明・導入・判断基準",
            "source_ids": ";".join(dict.fromkeys(source_ids)),
            "invariant_ids": ";".join(dict.fromkeys(inv)),
            "scenario_ids": scenarios_for_invariants(inv),
            "result": result,
            "finding_ids": ";".join(dict.fromkeys(findings)),
            "review_note": "Quintは状態遷移契約を検査。説明の事実妥当性は一次資料台帳で別途追跡。",
        })
    return rows


def scenarios_for_invariants(invariants: list[str]) -> str:
    scenario_path = ROOT / "formal" / "quint" / "scenarios.csv"
    mapping: dict[str, list[str]] = {}
    with scenario_path.open(encoding="utf-8-sig") as f:
        for row in csv.DictReader(f):
            for inv in row["linked_invariants"].split(";"):
                mapping.setdefault(inv, []).append(row["scenario_id"])
    values = []
    for inv in dict.fromkeys(invariants):
        values.extend(mapping.get(inv, []))
    return ";".join(dict.fromkeys(values))


def technology_rows(units: list[Unit], sources: list[dict[str, str]]) -> list[dict[str, str]]:
    source_by_url = {source["url"]: source for source in sources}
    rows = []
    for idx, (name, pattern, category, invariants) in enumerate(TECH_PATTERNS, 1):
        matched = [u for u in units if re.search(pattern, f"{u.heading}\n{u.body}", re.I)]
        origin_source_ids: list[str] = []
        for u in matched:
            for label, url in LINK.findall(f"{u.heading}\n{u.body}"):
                source = source_by_url[url]
                origin_text = f"{label}\n{source['label_in_guide']}\n{source['title_resolved']}"
                if re.search(pattern, origin_text, re.I):
                    origin_source_ids.append(source["source_id"])
        origin_source_ids = list(dict.fromkeys(origin_source_ids))
        origin_status = (
            "起源・提案・代表一次資料を特定"
            if origin_source_ids
            else "単一起源なし／本ガイドの統合契約または一般標準"
        )
        rows.append({
            "technology_id": f"TECH-{idx:03d}",
            "technology": name,
            "category": category,
            "description": f"本文中で「{name}」に関係する説明・設計契約を横断集約。",
            "origin_status": origin_status,
            "origin_source_ids": ";".join(origin_source_ids),
            "invariant_ids": invariants,
            "unit_count": str(len(matched)),
            "unit_ids": ";".join(u.unit_id for u in matched),
            "review_result": "要修正あり" if any(issue["id"] in {"FND-001", "FND-002", "FND-003", "FND-004", "FND-005", "FND-006", "FND-007"} and any(u.file in issue["location"] for u in matched) for issue in ISSUES) else "整合",
            "notes": "名称・論文題名・リンクラベルが技術要素へ直接対応する資料を原点候補として抽出。全関連資料はunit_idsから説明状態.source_idsへ追跡。",
        })
    return rows


def main() -> int:
    docs_diff = subprocess.run(
        ["git", "diff", "--quiet", EXPECTED_COMMIT, "--", "docs"],
        cwd=ROOT,
        check=False,
    )
    if docs_diff.returncode == 1:
        raise SystemExit(
            "authoritative docs differ from pinned commit "
            f"{EXPECTED_COMMIT}; review and update the pin before regenerating"
        )
    if docs_diff.returncode > 1:
        raise SystemExit("failed to compare authoritative docs with pinned commit")
    OUT.mkdir(parents=True, exist_ok=True)
    units = extract_units()
    if len(units) != 353:
        raise SystemExit(f"expected 353 explanation units, got {len(units)}")
    sources = resolve_sources(extract_links(units))
    if len(sources) != 194:
        raise SystemExit(f"expected 194 unique URLs, got {len(sources)}")
    states = unit_rows(units, sources)
    technologies = technology_rows(units, sources)

    write_csv(OUT / "explanation_states.csv", states, list(states[0]))
    write_csv(OUT / "technical_elements.csv", technologies, list(technologies[0]))
    write_csv(OUT / "primary_sources.csv", sources, list(sources[0]))
    write_csv(OUT / "findings.csv", ISSUES, ["id", "location", "severity", "problem", "evidence", "impact", "fix", "verification", "status"])

    manifest = {
        "canonical_commit": EXPECTED_COMMIT,
        "generated_from_commit": EXPECTED_COMMIT,
        "markdown_files": len(list(DOCS.rglob("*.md"))),
        "explanation_states": len(states),
        "chapter_introductions": sum(1 for u in units if u.unit_id.startswith("INTRO-")),
        "numbered_sections": sum(1 for u in units if not u.unit_id.startswith("INTRO-")),
        "technical_elements": len(technologies),
        "unique_external_sources": len(sources),
        "resolved_sources": sum(1 for s in sources if s["resolution_status"] == "resolved"),
        "unresolved_sources": sum(1 for s in sources if s["resolution_status"] != "resolved"),
        "findings": len(ISSUES),
        "findings_by_severity": {level: sum(1 for i in ISSUES if i["severity"] == level) for level in ["Blocker", "Critical", "Major", "Minor"]},
        "sha256": {},
    }
    generated_csvs = [
        OUT / "explanation_states.csv",
        OUT / "technical_elements.csv",
        OUT / "primary_sources.csv",
        OUT / "findings.csv",
    ]
    for path in generated_csvs:
        manifest["sha256"][path.name] = hashlib.sha256(path.read_bytes()).hexdigest()
    (OUT / "manifest.json").write_text(json.dumps(manifest, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(manifest, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    sys.exit(main())
