#!/usr/bin/env python3
"""Generate sentence-level primary-source coverage and Lean input data.

The script deliberately separates three questions:

1. Does a sentence make an externally checkable technical claim?
2. Is that sentence mapped to a trusted primary document?
3. Do the generated coverage totals and uncovered list agree with the ledger?

Lean proves (3) and consistency properties of the encoded ledger.  Human review
is still required for the semantic adequacy of each sentence-to-source mapping.
"""

from __future__ import annotations

import csv
import hashlib
import json
import re
import subprocess
from dataclasses import dataclass
from pathlib import Path
from urllib.parse import urlparse


ROOT = Path(__file__).resolve().parents[2]
DOCS = ROOT / "docs"
OUT = ROOT / "formal" / "review-data"
LEAN_OUT = ROOT / "formal" / "lean" / "RagEvidence" / "Generated.lean"
CANONICAL_COMMIT = "63148eae30da71db0fb8769e59ed75680c8c7692"

EXTERNAL_LINK = re.compile(r"\[([^\]]+)\]\((https?://[^)]+)\)")
NUMBERED_HEADING = re.compile(r"^##\s+(\d+\.\d+\.\d+)\.\s+(.+)$")
SENTENCE_END = re.compile(r"(?<=[。！？!?])")
TABLE_SEPARATOR = re.compile(r"^\s*\|?(?:\s*:?-{3,}:?\s*\|)+\s*$")


@dataclass(frozen=True)
class Technique:
    name: str
    pattern: str
    category: str
    stage: str
    representation: str
    primary_urls: tuple[str, ...]
    mechanism: str
    formal_contract: str
    quint_scenario: str = ""


def technique(
    name: str,
    pattern: str,
    category: str,
    stage: str,
    representation: str,
    primary_urls: str | tuple[str, ...],
    mechanism: str,
    formal_contract: str,
    quint_scenario: str = "",
) -> Technique:
    urls = (primary_urls,) if isinstance(primary_urls, str) else primary_urls
    return Technique(name, pattern, category, stage, representation, urls, mechanism, formal_contract, quint_scenario)


TECHNIQUES: tuple[Technique, ...] = (
    technique("TF-IDF", r"TF[-‐‑–— ]?IDF", "lexical retrieval", "candidate generation", "weighted sparse terms", "https://www.sciencedirect.com/science/article/pii/0306457388900210", "語頻度と逆文書頻度を組み合わせて語を重み付けする。", "lexical=true; sparse=true; document_statistics=true", "tfIdfContractTest"),
    technique("BM25", r"(?<![A-Za-z0-9])BM25(?!F)", "lexical retrieval", "candidate generation", "probabilistic sparse ranking", "https://doi.org/10.1561/1500000019", "語頻度飽和、逆文書頻度、文書長補正を用いる順位付け。", "lexical=true; sparse=true; document_statistics=true; tf_saturation=true; length_normalization=true", "bm25ContractTest"),
    technique("BM25F", r"BM25F", "lexical retrieval", "candidate generation", "fielded probabilistic sparse ranking", "https://doi.org/10.1561/1500000019", "項目別の重みと長さを扱うBM25の拡張。", "lexical=true; fielded=true; sparse=true"),
    technique("Document Expansion by Query Prediction", r"Document Expansion by Query Prediction|文書拡張", "learned sparse retrieval", "index enrichment", "generated lexical expansion", "https://arxiv.org/abs/1904.08375", "文書に対応し得る質問を予測し、検索表現へ追加する。", "generated_terms=true; original_text_preserved=true"),
    technique("SPLADE", r"(?<![A-Za-z0-9])SPLADE(?![A-Za-z0-9]|\s*v?2)", "learned sparse retrieval", "candidate generation", "learned sparse vocabulary weights", "https://arxiv.org/abs/2107.05720", "語彙単位の疎な重みと展開を学習する第一段階検索器。", "lexical=true; learned=true; sparse=true; inverted_index_compatible=true", "spladeContractTest"),
    technique("DeepImpact", r"DeepImpact", "learned sparse retrieval", "candidate generation", "learned term impacts", "https://arxiv.org/abs/2104.12016", "文書中の語が検索へ与える影響度を学習する。", "learned=true; sparse=true; term_impact=true"),
    technique("SPLADE v2", r"SPLADE\s*v?2", "learned sparse retrieval", "candidate generation", "distilled learned sparse weights", "https://arxiv.org/abs/2109.10086", "プーリングと知識蒸留を用いてSPLADEを改善する。", "learned=true; sparse=true; distillation=true"),
    technique("DPR", r"(?<![A-Za-z0-9])DPR(?![A-Za-z0-9])|Dense Passage Retrieval", "dense retrieval", "candidate generation", "dual-encoder single vectors", ("https://aclanthology.org/2020.emnlp-main.550/", "https://arxiv.org/abs/2004.04906"), "質問と文書を別々に符号化し、内積で検索する二塔型検索器。", "dense=true; dual_encoder=true; similarity=dot_product", "dprContractTest"),
    technique("Sentence-BERT", r"Sentence[-‐‑–— ]?BERT", "dense retrieval", "embedding", "siamese/triplet sentence vectors", "https://arxiv.org/abs/1908.10084", "文を独立に符号化し、コサイン類似度等で比較できる表現を作る。", "dense=true; independent_encoding=true; cosine_compatible=true"),
    technique("ANCE", r"(?<![A-Za-z0-9])ANCE(?![A-Za-z0-9])", "dense retrieval", "training", "ANN-mined hard negatives", "https://arxiv.org/abs/2007.00808", "ANNインデックスから難しい負例を継続的に取得して学習する。", "dense=true; ann=true; ann_negative_mining=true"),
    technique("E5", r"(?<![A-Za-z0-9])E5(?![A-Za-z0-9])", "dense retrieval", "embedding", "instruction/prefix-conditioned vectors", "https://arxiv.org/abs/2212.03533", "弱教師あり対照学習により汎用テキスト埋め込みを作る。", "dense=true; prefix_contract=true"),
    technique("Contriever", r"Contriever", "dense retrieval", "candidate generation", "unsupervised contrastive vectors", "https://arxiv.org/abs/2112.09118", "人手関連度ラベルを用いない対照学習型検索器。", "dense=true; unsupervised_contrastive=true"),
    technique("HNSW", r"(?<![A-Za-z0-9])HNSW(?![A-Za-z0-9])|Hierarchical Navigable Small World", "ANN", "vector index", "hierarchical proximity graph", "https://arxiv.org/abs/1603.09320", "階層化した近傍グラフを探索する近似最近傍法。", "ann=true; graph_index=true; hierarchical=true; recall_latency_tradeoff=true", "hnswContractTest"),
    technique("Product Quantization", r"Product Quantization|直積量子化|\bPQ\b", "ANN", "vector compression", "subvector quantization codes", "https://doi.org/10.1109/TPAMI.2010.57", "ベクトルを部分空間へ分け、短い量子化コードで表す。", "ann_support=true; compression=true; compressed_vectors=true"),
    technique("DiskANN", r"DiskANN", "ANN", "vector index", "SSD-backed graph ANN", "https://www.microsoft.com/en-us/research/publication/diskann-fast-accurate-billion-point-nearest-neighbor-search-on-a-single-node/", "SSDとメモリを組み合わせる大規模近似最近傍探索。", "ann=true; disk_backed=true"),
    technique("Faiss GPU k-selection", r"Faiss", "ANN", "vector index", "GPU similarity search", "https://arxiv.org/abs/1702.08734", "GPU上の積量子化とk-selectionを用いる大規模類似検索。", "ann=true; gpu_accelerated=true"),
    technique("FreshDiskANN", r"FreshDiskANN", "ANN", "index lifecycle", "streaming graph ANN updates", "https://arxiv.org/abs/2105.09613", "追加・削除を継続的に処理するDiskANN系索引。", "ann=true; incremental_updates=true"),
    technique("SPFresh", r"SPFresh", "ANN", "index lifecycle", "in-place partitioned ANN updates", "https://arxiv.org/abs/2410.14452", "大規模ベクトル索引の継続更新を扱う。", "ann=true; incremental_updates=true"),
    technique("ColBERT", r"(?<![A-Za-z0-9])ColBERT(?![A-Za-z0-9]|v2)", "late-interaction retrieval", "candidate generation", "token-level multi-vectors", "https://arxiv.org/abs/2004.12832", "質問トークンと文書トークンのMaxSimを集約する遅延相互作用検索。", "dense=true; multi_vector=true; late_interaction=true", "colbertContractTest"),
    technique("ColBERTv2", r"ColBERTv2", "late-interaction retrieval", "candidate generation", "compressed token-level multi-vectors", "https://arxiv.org/abs/2112.01488", "残差圧縮等でColBERTの索引量を抑える。", "dense=true; multi_vector=true; compression=true; compressed_index=true"),
    technique("M3-Embedding", r"M3[-‐‑–— ]?Embedding", "multi-function retrieval", "candidate generation", "dense+sparse+multi-vector", "https://arxiv.org/abs/2402.03216", "単一モデルで密・疎・複数ベクトル検索を扱う。", "dense=true; sparse=true; multi_vector=true"),
    technique("RRF", r"(?<![A-Za-z0-9])RRF(?![A-Za-z0-9])|Reciprocal Rank Fusion|相互順位統合", "rank fusion", "fusion", "rank lists", "https://dl.acm.org/doi/10.1145/1571941.1572114", "各順位表の順位に基づき1/(k+rank)を加算する。", "ranks_only=true; k_positive=true; candidate_ids_stable=true", "rrfContractTest"),
    technique("Weighted score fusion", r"score normalization|スコア正規化|最小・最大|標準得点", "score fusion", "fusion", "normalized weighted scores", "https://arxiv.org/abs/2210.11934", "異なる検索器のスコアを正規化して重み付き統合する。", "normalization_required=true; weights_evaluated=true"),
    technique("Query2doc", r"Query2doc", "query transformation", "pre-retrieval", "generated pseudo-document", "https://arxiv.org/abs/2303.07678", "質問から擬似文書を生成し検索表現へ利用する。", "generated_query_representation=true; original_query_retained=true", "query2docContractTest"),
    technique("HyDE", r"(?<![A-Za-z0-9])HyDE(?![A-Za-z0-9])|Hypothetical Document Embeddings", "query transformation", "pre-retrieval", "hypothetical-document vector", "https://arxiv.org/abs/2212.10496", "仮想文書を生成し、その埋め込みで実文書を検索する。", "generated_query_representation=true; dense=true; hard_constraints_preserved=true", "hydeContractTest"),
    technique("Rewrite-Retrieve-Read", r"Rewrite[-‐‑–— ]Retrieve[-‐‑–— ]Read", "query transformation", "pre-retrieval", "LLM query rewrite", "https://arxiv.org/abs/2305.14283", "LLM向け質問を検索器向けに書き換えてから取得する。", "query_rewrite=true; original_query_trace=true"),
    technique("IRCoT", r"(?<![A-Za-z0-9])IRCoT(?![A-Za-z0-9])|Interleaved retrieval|交互検索", "iterative retrieval", "pre-retrieval", "interleaved retrieval and reasoning", "https://arxiv.org/abs/2212.10509", "複数段階質問で検索と推論を交互に進める。", "iterative=true; multi_hop=true; bounded_steps=true; evidence_trace=true"),
    technique("ACORN", r"(?<![A-Za-z0-9])ACORN(?![A-Za-z0-9])", "filtered ANN", "candidate generation", "predicate-aware graph ANN", "https://arxiv.org/abs/2403.04871", "構造化条件を近傍探索へ組み込むフィルター付きANN。", "ann=true; filter_aware=true; acl_before_exposure=true", "acornContractTest"),
    technique("NaviX", r"(?<![A-Za-z0-9])NaviX(?![A-Za-z0-9])", "filtered ANN", "candidate generation", "filter-first adaptive HNSW", "https://arxiv.org/abs/2506.23397", "フィルター選択率と空間分布に応じ探索戦略を切り替える。", "ann=true; filter_first=true; adaptive_strategy=true"),
    technique("MMR", r"(?<![A-Za-z0-9])MMR(?![A-Za-z0-9])|Maximal Marginal Relevance|最大周辺関連性", "diversification", "post-retrieval", "relevance-novelty objective", "https://dl.acm.org/doi/10.1145/290941.291025", "関連性と既選択候補に対する新規性を組み合わせる。", "rerank=true; diversity=true; output_subset=true", "mmrContractTest"),
    technique("SimHash", r"SimHash", "deduplication", "post-retrieval", "binary similarity fingerprints", "https://dl.acm.org/doi/10.1145/1242572.1242592", "近似重複検出用のビット指紋とHamming距離を用いる。", "dedup=true; approximate_fingerprint=true"),
    technique("BERT passage reranking", r"BERT passage reranking|BERTによる文書断片の再順位付け|交差符号化型", "reranking", "post-retrieval", "cross-encoder", "https://arxiv.org/abs/1901.04085", "質問と候補を同時に符号化して関連度を再評価する。", "rerank=true; reads_candidate_text=true; candidate_generation=false; output_subset=true", "crossEncoderContractTest"),
    technique("monoT5", r"monoT5", "reranking", "post-retrieval", "text-to-text pointwise reranker", "https://arxiv.org/abs/2003.06713", "関連・非関連トークンのスコアを順位付けへ使う。", "reads_candidate_text=true; pointwise=true; output_subset=true", "monoT5ContractTest"),
    technique("RankT5", r"RankT5", "reranking", "post-retrieval", "ranking-aware T5", "https://arxiv.org/abs/2210.10634", "順位を意識した学習目標を用いるT5再順位付け器。", "reads_candidate_text=true; ranking_loss=true; output_subset=true"),
    technique("LLM listwise reranking", r"一覧比較|listwise|Listwise|追加学習なしの一覧比較|GPT-4などを再順位付け", "reranking", "post-retrieval", "LLM-generated candidate ordering", ("https://arxiv.org/abs/2305.02156", "https://arxiv.org/abs/2304.09542"), "候補一覧を入力し候補IDの順序を生成する。", "reads_candidate_text=true; listwise=true; ids_closed_world=true", "listwiseRerankerContractTest"),
    technique("RECOMP", r"(?<![A-Za-z0-9])RECOMP(?![A-Za-z0-9])", "context compression", "post-retrieval", "extractive/abstractive compression", "https://arxiv.org/abs/2310.04408", "抽出型・要約型の検索文書圧縮と文書選択を行う。", "compression=true; provenance_mapping_required=true"),
    technique("LLMLingua", r"(?<!Long)LLMLingua", "context compression", "post-retrieval", "token-level prompt compression", "https://arxiv.org/abs/2310.05736", "小規模言語モデルでトークン重要度を推定して圧縮する。", "compression=true; protected_tokens_required=true"),
    technique("LongLLMLingua", r"LongLLMLingua", "context compression", "post-retrieval", "question-aware long-context compression", "https://arxiv.org/abs/2310.06839", "質問を考慮した圧縮と文書再配置を行う。", "compression=true; question_aware=true"),
    technique("Selective Context", r"Selective Context", "context compression", "post-retrieval", "self-information token pruning", "https://arxiv.org/abs/2310.06201", "予測しやすい語句を削る質問非依存の圧縮。", "compression=true; question_independent=true"),
    technique("TextTiling", r"TextTiling", "chunking", "pre-retrieval", "lexical-cohesion segmentation", "https://aclanthology.org/J97-1003/", "語彙結束性から複数段落文書を副話題へ分割する。", "segmentation=true; lexical_cohesion=true"),
    technique("Late Chunking", r"Late Chunking", "chunking", "pre-retrieval", "long-context encode then pool", "https://arxiv.org/abs/2409.04701", "長文を先に符号化し後からチャンク表現へ集約する。", "chunking=true; encode_before_pool=true"),
    technique("RAPTOR", r"(?<![A-Za-z0-9])RAPTOR(?![A-Za-z0-9])", "hierarchical retrieval", "candidate generation", "recursive clustered summaries", ("https://proceedings.iclr.cc/paper_files/paper/2024/hash/8a2acd174940dbca361a6398a4f9df91-Abstract-Conference.html", "https://arxiv.org/abs/2401.18059"), "文書断片を再帰的にクラスタリング・要約して木から検索する。", "hierarchical=true; generated_summaries=true; provenance_required=true"),
    technique("TreeRAG", r"TreeRAG", "hierarchical retrieval", "candidate generation", "bidirectional tree traversal", "https://aclanthology.org/2025.findings-acl.20/", "長文を木構造へ分割し双方向に探索する。", "hierarchical=true; tree_search=true"),
    technique("ZoomRAG", r"ZoomRAG", "hierarchical retrieval", "candidate generation", "coarse-to-fine relation graph", "https://aclanthology.org/2026.findings-acl.1643/", "複数粒度の関係グラフを粗い層から細かい層へ探索する。", "hierarchical=true; coarse_to_fine=true"),
    technique("G-Retriever", r"G[-‐‑–— ]Retriever", "graph retrieval", "candidate generation", "graph pruning plus generation", "https://proceedings.neurips.cc/paper_files/paper/2024/file/efaf1c9726648c8ba363a5c927440529-Paper-Conference.pdf", "質問に関係する部分グラフを検索して生成へ渡す。", "graph=true; subgraph_retrieval=true"),
    technique("HippoRAG", r"HippoRAG", "graph retrieval", "candidate generation", "memory-inspired knowledge graph", "https://proceedings.neurips.cc/paper_files/paper/2024/hash/6ddc001d07ca4f319af96a3024f6dbd1-Abstract-Conference.html", "知識グラフ上の関連探索を長期記憶になぞらえて行う。", "graph=true; multi_hop=true"),
    technique("ColPali", r"ColPali", "multimodal retrieval", "candidate generation", "vision-language page multi-vectors", "https://proceedings.iclr.cc/paper_files/paper/2025/file/99e9e141aafc314f76b0ca3dd66898b3-Paper-Conference.pdf", "文書ページ画像を複数ベクトルとして検索する。", "multimodal=true; multi_vector=true"),
)


TECHNICAL_TERMS = re.compile(
    r"疎検索|密検索|ハイブリッド検索|転置インデックス|埋め込み|ベクトル|近似最近傍|ANN|"
    r"再順位付け|順位統合|検索器|検索モデル|トークン|チャンク|context compression|"
    r"コサイン類似度|ユークリッド距離|内積|フィルター付き|metadata filter|"
    r"Recall@|nDCG|MRR|precision|faithfulness|citation|プロンプトインジェクション",
    re.I,
)
EMPIRICAL_CUES = re.compile(
    r"研究|論文|報告|提案|示しました|示した|上回|改善|評価した|データセット|ベンチマーク|"
    r"実験|結果は|相対約|\d+(?:\.\d+)?\s*%",
    re.I,
)
NORMATIVE_CUES = re.compile(
    r"してください|してはいけません|記録します|確認します|測ります|比較します|評価します|"
    r"保存します|残します|決めます|用意します|固定します|適用します|分けます|選びます|設けます|"
    r"検査します|禁止します|戻します|扱います|明記します",
)
AWS_TERMS = re.compile(
    r"Amazon Bedrock|Knowledge Bases|S3 Vectors|OpenSearch Serverless|RetrieveAndGenerate|"
    r"AgenticRetrieveStream|Converse|Titan|Cohere Embed|Bedrock reranker",
    re.I,
)


def run_git_guard() -> None:
    result = subprocess.run(
        ["git", "diff", "--quiet", CANONICAL_COMMIT, "--", "docs"],
        cwd=ROOT,
        check=False,
    )
    if result.returncode == 1:
        raise SystemExit(
            f"authoritative docs differ from pinned commit {CANONICAL_COMMIT}; update the review pin first"
        )
    if result.returncode > 1:
        raise SystemExit("failed to compare authoritative docs with pinned commit")


def read_csv(path: Path) -> list[dict[str, str]]:
    with path.open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def write_csv(path: Path, rows: list[dict[str, object]], fields: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8-sig", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields, extrasaction="ignore", lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)


def trust_profile(source: dict[str, str]) -> tuple[str, str, str, str]:
    host = urlparse(source["url"]).netloc.lower()
    if host == "docs.aws.amazon.com":
        return "official_specification", "A", "eligible", "サービス提供者が管理する公式API・製品仕様"
    if host in {
        "aclanthology.org",
        "doi.org",
        "dl.acm.org",
        "ieeexplore.ieee.org",
        "www.vldb.org",
        "proceedings.neurips.cc",
        "papers.nips.cc",
        "www.sciencedirect.com",
        "datasets-benchmarks-proceedings.neurips.cc",
        "proceedings.iclr.cc",
        "proceedings.mlr.press",
        "www.usenix.org",
    }:
        return "peer_reviewed_primary", "A", "eligible", "出版社・学会・会議録にある原著論文"
    if host == "arxiv.org":
        return "author_manuscript_primary", "B", "eligible", "著者が公開した原著論文（査読版の有無を別途追跡）"
    if host == "openreview.net":
        return "open_review_primary", "B", "eligible", "著者投稿と公開査読記録"
    if host in {"research.google", "www.microsoft.com"}:
        return "first_party_research_primary", "B", "eligible", "研究実施組織が公開する原著研究資料"
    return "unclassified", "C", "ineligible", "一次性または管理主体を自動確認できない"


def trusted_source_rows(sources: list[dict[str, str]]) -> list[dict[str, str]]:
    rows: list[dict[str, str]] = []
    for source in sources:
        primary_status, tier, eligibility, basis = trust_profile(source)
        if source.get("resolution_status") != "resolved":
            eligibility = "ineligible"
            basis += "；メタデータ未解決"
        rows.append(
            {
                "source_id": source["source_id"],
                "title": source["title_resolved"],
                "url": source["url"],
                "authors_or_owner": source["authors_or_owner"],
                "year": source["year"],
                "source_class": source["source_type"],
                "primary_status": primary_status,
                "trust_tier": tier,
                "eligibility": eligibility,
                "trust_basis": basis,
                "used_by_units": source["used_by_units"],
            }
        )
    return rows


def plain_text(markdown: str) -> str:
    text = EXTERNAL_LINK.sub(lambda match: match.group(1), markdown)
    text = re.sub(r"!\[([^\]]*)\]\([^)]+\)", r"\1", text)
    text = re.sub(r"<[^>]+>", " ", text)
    text = re.sub(r"[`*_~]", "", text)
    text = re.sub(r"^\s*(?:[-+*]|\d+[.)])\s+", "", text)
    return re.sub(r"\s+", " ", text).strip()


def chapter_for(path: Path) -> str:
    first = path.relative_to(DOCS).parts[0]
    return first.split(".", 1)[0]


def split_line_sentences(raw: str) -> list[str]:
    parts = [part.strip() for part in SENTENCE_END.split(raw) if part.strip()]
    return parts or ([raw.strip()] if raw.strip() else [])


def extract_sentence_rows() -> list[dict[str, object]]:
    rows: list[dict[str, object]] = []
    sentence_number = 0
    paragraph_number = 0
    for path in sorted(DOCS.rglob("*.md")):
        rel = path.relative_to(ROOT).as_posix()
        chapter = chapter_for(path)
        current_unit = f"INTRO-{chapter}" if path.name == "序文.md" else "FILE-INTRO"
        in_code = False
        paragraph: list[tuple[int, str, str]] = []

        def flush() -> None:
            nonlocal paragraph_number, sentence_number
            if not paragraph:
                return
            paragraph_number += 1
            paragraph_id = f"PAR-{paragraph_number:04d}"
            paragraph_raw = "\n".join(item[1] for item in paragraph)
            paragraph_urls = [url for _, url in EXTERNAL_LINK.findall(paragraph_raw)]
            for line_no, raw_line, unit_id in paragraph:
                if TABLE_SEPARATOR.match(raw_line):
                    continue
                if raw_line.lstrip().startswith("![") or raw_line.lstrip().startswith("**図"):
                    continue
                for raw_sentence in split_line_sentences(raw_line):
                    text = plain_text(raw_sentence)
                    if not text or text in {"---", "***"}:
                        continue
                    sentence_number += 1
                    rows.append(
                        {
                            "sentence_id": f"SENT-{sentence_number:04d}",
                            "sentence_number": sentence_number,
                            "paragraph_id": paragraph_id,
                            "unit_id": unit_id,
                            "chapter": chapter,
                            "file": rel,
                            "line_start": line_no,
                            "line_end": line_no,
                            "sentence": text,
                            "raw_sentence": raw_sentence.strip(),
                            "inline_urls": [url for _, url in EXTERNAL_LINK.findall(raw_sentence)],
                            "paragraph_urls": list(dict.fromkeys(paragraph_urls)),
                        }
                    )
            paragraph.clear()

        lines = path.read_text(encoding="utf-8").splitlines()
        for line_no, line in enumerate(lines, 1):
            stripped = line.strip()
            if stripped.startswith("```"):
                flush()
                in_code = not in_code
                continue
            if in_code:
                continue
            heading = NUMBERED_HEADING.match(stripped)
            if heading:
                flush()
                current_unit = heading.group(1)
                continue
            if stripped.startswith("#"):
                flush()
                continue
            if not stripped:
                flush()
                continue
            if stripped.startswith(("- ", "* ", "+ ")) or re.match(r"^\d+[.)]\s+", stripped):
                flush()
                paragraph.append((line_no, stripped, current_unit))
                flush()
                continue
            paragraph.append((line_no, stripped, current_unit))
        flush()
    return rows


def matched_techniques(text: str) -> list[Technique]:
    return [item for item in TECHNIQUES if re.search(item.pattern, text, re.I)]


def classify_claim(text: str, inline_urls: list[str], techniques: list[Technique], chapter: str) -> tuple[str, bool, str]:
    if inline_urls:
        return "externally_cited_claim", True, "センテンス内に外部一次資料への明示リンク"
    if techniques:
        return "concrete_technology_claim", True, "具体的なアルゴリズム・モデル・索引方式を記述"
    if chapter == "10" and AWS_TERMS.search(text):
        return "official_product_contract", True, "AWS製品・APIの外部検証可能な仕様を記述"
    if EMPIRICAL_CUES.search(text):
        return "empirical_or_research_claim", True, "研究結果・定量値・提案内容を記述"
    if TECHNICAL_TERMS.search(text):
        if NORMATIVE_CUES.search(text):
            return "normative_design_statement", False, "本ガイドが定める設計・評価手順であり外部事実の主張として数えない"
        return "general_technical_claim", True, "技術の性質・機構を説明する外部検証可能な記述"
    if NORMATIVE_CUES.search(text):
        return "normative_design_statement", False, "本ガイドが定める設計・評価手順"
    return "expository_or_structural", False, "導入・例示・接続・構成説明"


def build_sentence_evidence(
    sentence_rows: list[dict[str, object]],
    sources: list[dict[str, str]],
    trusted_sources: list[dict[str, str]],
) -> list[dict[str, object]]:
    source_by_url = {source["url"]: source for source in sources}
    trust_by_id = {source["source_id"]: source for source in trusted_sources}
    rows: list[dict[str, object]] = []
    for row in sentence_rows:
        text = str(row["sentence"])
        techniques = matched_techniques(text)
        inline_urls = list(row["inline_urls"])
        paragraph_urls = list(row["paragraph_urls"])
        claim_type, required, reason = classify_claim(text, inline_urls, techniques, str(row["chapter"]))

        mapped: list[tuple[str, str]] = []
        for url in inline_urls:
            if url in source_by_url:
                mapped.append((source_by_url[url]["source_id"], "direct_inline"))
        for item in techniques:
            for url in item.primary_urls:
                if url in source_by_url:
                    mapped.append((source_by_url[url]["source_id"], "concrete_technique_primary"))
        if required and not mapped:
            for url in paragraph_urls:
                if url in source_by_url:
                    mapped.append((source_by_url[url]["source_id"], "same_paragraph_primary"))

        source_ids = list(dict.fromkeys(source_id for source_id, _ in mapped))
        bases = list(dict.fromkeys(basis for _, basis in mapped))
        eligible_source_ids = [
            source_id for source_id in source_ids if trust_by_id[source_id]["eligibility"] == "eligible"
        ]
        direct = any(basis in {"direct_inline", "concrete_technique_primary"} for basis in bases)
        if not required:
            status = "not_required"
        elif eligible_source_ids and direct:
            status = "covered_direct"
        elif eligible_source_ids:
            status = "covered_contextual"
        else:
            status = "uncovered"
        source_urls = [source_by_url[next(url for url, source in source_by_url.items() if source["source_id"] == sid)]["url"] for sid in eligible_source_ids]
        rows.append(
            {
                "sentence_id": row["sentence_id"],
                "paragraph_id": row["paragraph_id"],
                "unit_id": row["unit_id"],
                "chapter": row["chapter"],
                "file": row["file"],
                "line_start": row["line_start"],
                "line_end": row["line_end"],
                "sentence": text,
                "claim_type": claim_type,
                "evidence_required": "yes" if required else "no",
                "classification_reason": reason,
                "concrete_technologies": ";".join(item.name for item in techniques),
                "source_ids": ";".join(eligible_source_ids),
                "source_urls": ";".join(source_urls),
                "mapping_basis": ";".join(bases),
                "source_count": len(eligible_source_ids),
                "coverage_status": status,
                "semantic_review_status": "machine_mapped_requires_human_confirmation" if required else "not_applicable",
                "review_note": "Lean 4は台帳整合性を証明する。資料が当該センテンスを意味的に十分支持するかは人手レビュー境界。",
            }
        )
    return rows


def concrete_technology_rows(
    sentence_rows: list[dict[str, object]],
    sources: list[dict[str, str]],
    trusted_sources: list[dict[str, str]],
) -> list[dict[str, object]]:
    source_by_url = {source["url"]: source for source in sources}
    trust_by_id = {source["source_id"]: source for source in trusted_sources}
    rows: list[dict[str, object]] = []
    for index, item in enumerate(TECHNIQUES, 1):
        matches = [row for row in sentence_rows if re.search(item.pattern, str(row["sentence"]), re.I)]
        if not matches:
            raise SystemExit(f"concrete technique is absent from the guide: {item.name}")
        source_ids = [source_by_url[url]["source_id"] for url in item.primary_urls if url in source_by_url]
        if not source_ids:
            raise SystemExit(f"no guide primary-source entry for concrete technique: {item.name}")
        if any(trust_by_id[source_id]["eligibility"] != "eligible" for source_id in source_ids):
            raise SystemExit(f"ineligible source mapped to concrete technique: {item.name}")
        unit_ids = list(dict.fromkeys(str(row["unit_id"]) for row in matches))
        tiers = list(dict.fromkeys(trust_by_id[source_id]["trust_tier"] for source_id in source_ids))
        rows.append(
            {
                "technology_id": f"CTECH-{index:03d}",
                "technology": item.name,
                "category": item.category,
                "stage": item.stage,
                "representation": item.representation,
                "mechanism": item.mechanism,
                "guide_sentence_count": len(matches),
                "guide_sentence_ids": ";".join(str(row["sentence_id"]) for row in matches),
                "unit_ids": ";".join(unit_ids),
                "source_ids": ";".join(source_ids),
                "source_urls": ";".join(item.primary_urls),
                "source_trust_tiers": ";".join(tiers),
                "formal_contract": item.formal_contract,
                "quint_scenario": item.quint_scenario,
                "lean_ledger_status": "modeled",
                "coverage_status": "covered_by_trusted_primary",
                "notes": "大分類ではなく固有アルゴリズム・モデル・索引方式として登録。性能優位はデータセット依存であり形式契約には含めない。",
            }
        )
    return rows


def coverage_rows(
    sentences: list[dict[str, object]],
    technologies: list[dict[str, object]],
    trusted_sources: list[dict[str, str]],
) -> list[dict[str, object]]:
    required = [row for row in sentences if row["evidence_required"] == "yes"]
    covered = [row for row in required if str(row["coverage_status"]).startswith("covered_")]
    direct = [row for row in required if row["coverage_status"] == "covered_direct"]
    files = {str(row["file"]) for row in sentences}
    eligible_sources = [row for row in trusted_sources if row["eligibility"] == "eligible"]
    quint_techniques = [row for row in technologies if row["quint_scenario"]]

    def metric(metric_id: str, name: str, numerator: int, denominator: int, scope: str, note: str) -> dict[str, object]:
        percent = 100.0 if denominator == 0 else round(numerator * 100.0 / denominator, 2)
        return {
            "metric_id": metric_id,
            "metric": name,
            "numerator": numerator,
            "denominator": denominator,
            "coverage_percent": percent,
            "scope": scope,
            "interpretation": note,
        }

    return [
        metric("COV-001", "センテンス一次資料カバレッジ", len(covered), len(required), "根拠必須センテンス", "直接・具体技術・同一段落の信頼できる一次資料対応"),
        metric("COV-002", "厳格直接カバレッジ", len(direct), len(required), "根拠必須センテンス", "センテンス内リンクまたは具体技術の原著へ直接対応"),
        metric("COV-003", "具体技術の一次資料カバレッジ", sum(row["coverage_status"] == "covered_by_trusted_primary" for row in technologies), len(technologies), "具体技術", "全固有技術に信頼できる一次資料がある割合"),
        metric("COV-004", "具体技術のLean台帳モデル化", sum(row["lean_ledger_status"] == "modeled" for row in technologies), len(technologies), "具体技術", "Lean 4の有限台帳へ登録した割合"),
        metric("COV-005", "具体技術のQuint振る舞いモデル化", len(quint_techniques), len(technologies), "具体技術", "状態遷移・入出力契約までQuintで検査した中核手法の割合"),
        metric("COV-006", "一次資料適格率", len(eligible_sources), len(trusted_sources), "外部資料台帳", "出版社・原著者・公式仕様の一次資料として適格な割合"),
        metric("COV-007", "Markdownセンテンス棚卸し", len(files), len(list(DOCS.rglob("*.md"))), "正本ファイル", "説明センテンスを一件以上抽出できたファイルの割合"),
    ]


def lean_bool(value: bool) -> str:
    return "true" if value else "false"


def generate_lean(
    sentences: list[dict[str, object]],
    technologies: list[dict[str, object]],
    coverage: list[dict[str, object]],
) -> None:
    required = [row for row in sentences if row["evidence_required"] == "yes"]
    uncovered_numbers = [int(str(row["sentence_id"]).split("-")[1]) for row in required if row["coverage_status"] == "uncovered"]
    sentence_entries = []
    for row in required:
        number = int(str(row["sentence_id"]).split("-")[1])
        source_count = int(row["source_count"])
        sentence_entries.append(
            "  { id := %d, trustedPrimary := %s, direct := %s, sourceCount := %d }"
            % (
                number,
                lean_bool(source_count > 0),
                lean_bool(row["coverage_status"] == "covered_direct"),
                source_count,
            )
        )
    technique_entries = []
    for index, row in enumerate(technologies, 1):
        source_count = len(str(row["source_ids"]).split(";")) if row["source_ids"] else 0
        technique_entries.append(
            "  { id := %d, concrete := true, trustedSourceCount := %d, quintModeled := %s }"
            % (index, source_count, lean_bool(bool(row["quint_scenario"])))
        )
    primary = next(row for row in coverage if row["metric_id"] == "COV-001")
    direct = next(row for row in coverage if row["metric_id"] == "COV-002")
    content = f"""-- Generated by tools/formal_review/generate_evidence_coverage.py.
-- Do not edit by hand.  The natural-language mapping remains a validation
-- obligation; these values are the implementation bridge checked by Lean.

namespace RagEvidence.Generated

structure EvidenceRow where
  id : Nat
  trustedPrimary : Bool
  direct : Bool
  sourceCount : Nat
  deriving Repr, DecidableEq

structure TechniqueRow where
  id : Nat
  concrete : Bool
  trustedSourceCount : Nat
  quintModeled : Bool
  deriving Repr, DecidableEq

def sentenceLedger : List EvidenceRow := [
{',\n'.join(sentence_entries)}
]

def techniqueLedger : List TechniqueRow := [
{',\n'.join(technique_entries)}
]

def reportedUncovered : List Nat := {uncovered_numbers!r}

def reportedRequired : Nat := {int(primary['denominator'])}
def reportedCovered : Nat := {int(primary['numerator'])}
def reportedDirect : Nat := {int(direct['numerator'])}
def reportedCoverageBasisPoints : Nat := {round(float(primary['coverage_percent']) * 100)}
def reportedDirectBasisPoints : Nat := {round(float(direct['coverage_percent']) * 100)}

end RagEvidence.Generated
"""
    LEAN_OUT.parent.mkdir(parents=True, exist_ok=True)
    LEAN_OUT.write_text(content, encoding="utf-8")


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    run_git_guard()
    sources = read_csv(OUT / "primary_sources.csv")
    trusted_sources = trusted_source_rows(sources)
    raw_sentences = extract_sentence_rows()
    sentences = build_sentence_evidence(raw_sentences, sources, trusted_sources)
    technologies = concrete_technology_rows(raw_sentences, sources, trusted_sources)
    coverage = coverage_rows(sentences, technologies, trusted_sources)
    uncovered = [row for row in sentences if row["coverage_status"] == "uncovered"]

    write_csv(OUT / "trusted_primary_sources.csv", trusted_sources, list(trusted_sources[0]))
    write_csv(OUT / "sentence_evidence.csv", sentences, list(sentences[0]))
    write_csv(OUT / "uncovered_sentences.csv", uncovered, list(sentences[0]))
    write_csv(OUT / "concrete_technologies.csv", technologies, list(technologies[0]))
    write_csv(OUT / "coverage_summary.csv", coverage, list(coverage[0]))
    generate_lean(sentences, technologies, coverage)

    generated = [
        OUT / "trusted_primary_sources.csv",
        OUT / "sentence_evidence.csv",
        OUT / "uncovered_sentences.csv",
        OUT / "concrete_technologies.csv",
        OUT / "coverage_summary.csv",
        LEAN_OUT,
    ]
    primary_metric = next(row for row in coverage if row["metric_id"] == "COV-001")
    direct_metric = next(row for row in coverage if row["metric_id"] == "COV-002")
    manifest = {
        "canonical_commit": CANONICAL_COMMIT,
        "method_version": 1,
        "markdown_files": len(list(DOCS.rglob("*.md"))),
        "sentences": len(sentences),
        "evidence_required_sentences": int(primary_metric["denominator"]),
        "covered_sentences": int(primary_metric["numerator"]),
        "coverage_percent": primary_metric["coverage_percent"],
        "direct_covered_sentences": int(direct_metric["numerator"]),
        "direct_coverage_percent": direct_metric["coverage_percent"],
        "uncovered_sentences": len(uncovered),
        "concrete_technologies": len(technologies),
        "trusted_primary_sources": sum(row["eligibility"] == "eligible" for row in trusted_sources),
        "source_trust_tiers": {
            tier: sum(row["trust_tier"] == tier for row in trusted_sources) for tier in ("A", "B", "C")
        },
        "coverage_definition": {
            "denominator": "externally checkable technical, empirical, research, or official-product sentences",
            "covered": "at least one eligible primary source mapped by direct link, concrete-technique mapping, or same paragraph",
            "direct": "sentence-local link or curated concrete-technique primary source",
            "not_required": "normative design instructions, examples, transitions, and structural prose",
        },
        "semantic_validation_boundary": "Lean proves ledger consistency, not that a source semantically entails the Japanese sentence.",
        "sha256": {path.relative_to(ROOT).as_posix(): sha256(path) for path in generated},
    }
    manifest_path = OUT / "coverage_manifest.json"
    manifest_path.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(manifest, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
