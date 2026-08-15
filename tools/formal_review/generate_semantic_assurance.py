#!/usr/bin/env python3
"""Generate conservative natural-language entailment and source-truth evidence.

This generator does not turn a paper or product manual into an axiom called
"truth".  It separates the evidence chain into three independently reported
links:

1. the guide sentence and source-defined mechanism are translated to a small,
   controlled vocabulary of atomic retrieval properties;
2. Lean checks whether every guide atom occurs in the source contract;
3. empirical and runtime claims remain unproved until independently reproduced
   or observed.

Only subject-led, single-technique, non-empirical mechanism sentences enter the
automatic entailment subset.  Everything else is retained as INCONCLUSIVE with
an explicit reason instead of being silently treated as proved.
"""

from __future__ import annotations

import csv
import hashlib
import json
import re
from pathlib import Path

from generate_evidence_coverage import (
    OUT,
    ROOT,
    TECHNIQUES,
    read_csv,
    write_csv,
)


LEAN_OUT = ROOT / "formal" / "lean" / "RagEvidence" / "SemanticGenerated.lean"
MANIFEST_OUT = OUT / "semantic_assurance_manifest.json"


# The keys are the exact atoms used by concrete_technologies.csv.  Patterns are
# deliberately narrow: false negatives are preferable to an unsound semantic
# proof claim.
ATOM_PATTERNS: dict[str, tuple[str, ...]] = {
    "lexical=true": (r"語彙一致", r"語彙単位", r"単語頻度", r"語の出現"),
    "sparse=true": (r"疎(?:な|検索|表現)", r"スパース", r"sparse", r"転置インデックス"),
    "document_statistics=true": (r"逆文書頻度", r"\bIDF\b", r"文書集合全体", r"語の希少性"),
    "tf_saturation=true": (r"飽和", r"語の反復効果"),
    "length_normalization=true": (r"文書長",),
    "fielded=true": (r"項目別", r"フィールド(?:別|ごと)"),
    "generated_terms=true": (r"質問を(?:予測|生成|追加)", r"文書拡張", r"生成した語"),
    "original_text_preserved=true": (r"原文.*(?:残|保持)",),
    "learned=true": (r"学習(?:する|した|型)", r"追加学習", r"end.to.end"),
    "inverted_index_compatible=true": (r"転置インデックス",),
    "term_impact=true": (r"語.*影響.*学習", r"term impact"),
    "distillation=true": (r"知識蒸留", r"教師モデルの出力を学"),
    "dense=true": (r"密(?:な|検索|表現)", r"dense", r"単一ベクトル"),
    "dual_encoder=true": (r"別(?:々|の).*エンコーダ", r"二塔", r"dual.encoder", r"質問と文書.*別.*符号"),
    "similarity=dot_product": (r"内積", r"dot.product"),
    "independent_encoding=true": (r"独立.*(?:符号|埋め込み)", r"別々に符号化"),
    "cosine_compatible=true": (r"コサイン類似度", r"cosine"),
    "ann_negative_mining=true": (r"(?:ANN|近似最近傍).*難しい負例", r"難しい負例.*(?:ANN|近似最近傍)"),
    "prefix_contract=true": (r"接頭辞", r"質問と文書.*異なる指示"),
    "unsupervised_contrastive=true": (r"教師なし.*対照", r"unsupervised.*contrastive"),
    "ann=true": (r"近似最近傍", r"\bANN\b"),
    "graph_index=true": (r"近傍グラフ", r"グラフ.*(?:索引|探索)"),
    "recall_latency_tradeoff=true": (r"Recall.*(?:latency|応答時間)", r"検索品質.*(?:応答時間|処理量)"),
    "ann_support=true": (r"近傍探索.*(?:圧縮|量子化)",),
    "compressed_vectors=true": (r"部分ベクトル.*短いコード", r"量子化コード", r"ベクトル.*圧縮"),
    "disk_backed=true": (r"SSD", r"ディスク.*近似最近傍"),
    "gpu_accelerated=true": (r"GPU",),
    "incremental_updates=true": (r"追加.*削除", r"継続.*更新", r"ストリーミング.*更新"),
    "multi_vector=true": (r"複数ベクトル", r"トークン(?:ごと|表現).*ベクトル", r"multi.vector"),
    "late_interaction=true": (r"遅延相互作用", r"MaxSim", r"各質問トークン.*最も近い文書トークン"),
    "compressed_index=true": (r"残差圧縮", r"インデックス量を抑"),
    "ranks_only=true": (r"順位(?:だけ|を使|に基づ)", r"rank.*only"),
    "k_positive=true": (r"k\s*>\s*0", r"正のk"),
    "candidate_ids_stable=true": (r"安定.*(?:候補ID|candidate.id|chunk.id)",),
    "normalization_required=true": (r"スコア.*正規化", r"score normalization"),
    "weights_evaluated=true": (r"重み.*評価", r"重み.*検証"),
    "generated_query_representation=true": (r"擬似文書", r"仮想(?:的な)?(?:回答)?文書", r"生成した表現.*検索"),
    "original_query_retained=true": (r"元質問.*(?:残|保持)",),
    "hard_constraints_preserved=true": (r"(?:期間|版|否定|tenant|制約).*(?:保存|保持)",),
    "query_rewrite=true": (r"質問.*検索器向け.*書き換", r"query rewrite"),
    "original_query_trace=true": (r"元質問.*(?:trace|追跡|記録)",),
    "iterative=true": (r"検索と推論.*交互", r"推論と検索.*交互", r"交互検索"),
    "bounded_steps=true": (r"最大.*(?:回|step)", r"反復.*上限"),
    "evidence_trace=true": (r"根拠.*(?:trace|追跡|記録)",),
    "filter_aware=true": (r"フィルター条件.*考慮", r"filter.aware"),
    "acl_before_exposure=true": (r"権限.*(?:検索前|露出前|提示前)",),
    "filter_first=true": (r"filter.first", r"フィルター.*先に"),
    "adaptive_strategy=true": (r"探索(?:方法|戦略).*切り替", r"適応的.*探索"),
    "rerank=true": (r"再順位付け", r"rerank"),
    "diversity=true": (r"多様性", r"新規性"),
    "output_subset=true": (r"候補.*(?:絞|部分集合)",),
    "dedup=true": (r"重複(?:排除|除去|検出)",),
    "approximate_fingerprint=true": (r"ビット指紋", r"Hamming", r"近似.*fingerprint"),
    "reads_candidate_text=true": (r"質問と候補.*同時", r"候補本文.*(?:入力|読)",),
    "candidate_generation=false": (r"候補生成.*(?:しない|ではない)",),
    "pointwise=true": (r"pointwise", r"候補.*個別.*評価"),
    "ranking_loss=true": (r"順位.*学習目標", r"ranking.loss"),
    "listwise=true": (r"一覧比較", r"listwise", r"候補一覧.*順序"),
    "ids_closed_world=true": (r"候補ID.*順序", r"ID.*閉じた集合"),
    "compression=true": (r"圧縮",),
    "provenance_mapping_required=true": (r"(?:出典|provenance).*(?:対応|保持|追跡)",),
    "protected_tokens_required=true": (r"保護.*(?:token|トークン)",),
    "question_aware=true": (r"質問を考慮.*圧縮", r"question.aware"),
    "question_independent=true": (r"質問(?:非依存|を使わない).*圧縮", r"question.independent"),
    "segmentation=true": (r"(?:分割|セグメンテーション).*副話題", r"副話題.*分割"),
    "lexical_cohesion=true": (r"語彙(?:の)?(?:まとまり|結束性)",),
    "chunking=true": (r"チャンク(?:分割|表現|単位)", r"chunking"),
    "encode_before_pool=true": (r"先にエンコード.*後からチャンク", r"encode.*before.*pool"),
    "hierarchical=true": (r"階層(?:的|化|構造)", r"木構造"),
    "generated_summaries=true": (r"要約を作.*木", r"生成.*要約"),
    "provenance_required=true": (r"(?:出典|provenance).*(?:必須|保持|追跡)",),
    "tree_search=true": (r"木構造.*探索", r"木.*双方向.*探索"),
    "coarse_to_fine=true": (r"粗い.*細かい", r"coarse.to.fine"),
    "graph=true": (r"知識グラフ", r"部分グラフ", r"関係グラフ"),
    "subgraph_retrieval=true": (r"部分グラフ.*(?:検索|取得)",),
    "multi_hop=true": (r"複数段階", r"multi.hop", r"多段.*探索"),
    "multimodal=true": (r"文書ページ画像", r"画像.*検索", r"multimodal"),
}


RESULT_CUES = re.compile(
    r"上回|下回|改善|報告|実験|結果|データセット|ベンチマーク|比較しました|"
    r"精度|性能|効率的|効率化|減らします|削減|バランスを変え|state.of.the.art|"
    r"\d+(?:\.\d+)?\s*%|\d+(?:億|万|件|規模)",
    re.I,
)
NEGATION_CUES = re.compile(r"(?:では|は|を|が)?(?:ない|ありません|ません|せず|異なります|提供しません)")
NORMATIVE_CUES = re.compile(
    r"してください|使います|利用します|選びます|比較します|評価します|確認します|記録します|"
    r"測ります|残します|固定します|適用します|検討します|候補です|基準とします"
)
PRODUCT_CUES = re.compile(
    r"Amazon|AWS|S3 Vectors|OpenSearch|Knowledge Bases|Bedrock|Lambda|Lucene|MongoDB|Aurora",
    re.I,
)
MULTI_CLAIM_CUES = re.compile(r"ただし|ですが|ますが|一方|場合|ため、|加えて|また、|も示|優劣|取りこぼし|別の範囲|PagedAttention")


def split_values(value: str) -> list[str]:
    return [part.strip() for part in value.split(";") if part.strip()]


def source_atoms(technology_rows: dict[str, dict[str, str]], names: list[str]) -> list[str]:
    atoms: list[str] = []
    for name in names:
        for atom in split_values(technology_rows[name]["formal_contract"]):
            if atom not in atoms:
                atoms.append(atom)
    return atoms


def guide_atoms(text: str) -> list[str]:
    atoms: list[str] = []
    for atom, patterns in ATOM_PATTERNS.items():
        if any(re.search(pattern, text, re.I) for pattern in patterns):
            atoms.append(atom)
    return atoms


def subject_led(text: str, technique_name: str) -> bool:
    technique = next(item for item in TECHNIQUES if item.name == technique_name)
    boundary = len(text)
    for marker in ("は、", "は", "では", "が、", "が"):
        pos = text.find(marker)
        if pos >= 0:
            boundary = min(boundary, pos + len(marker))
    match = re.search(technique.pattern, text, re.I)
    if not match:
        return False
    if boundary == len(text):
        return match.start() <= 2
    return match.start() <= min(boundary, 48)


def formalization_reason(row: dict[str, str], names: list[str], atoms: list[str]) -> tuple[bool, str]:
    text = row["sentence"]
    if not row["coverage_status"].startswith("covered_"):
        return False, "eligible primary source is absent"
    if len(names) != 1:
        return False, "multiple or zero concrete technologies require relation-aware parsing"
    if not subject_led(text, names[0]):
        return False, "the concrete technology is not the grammatical lead subject"
    if RESULT_CUES.search(text):
        return False, "empirical or comparative result requires dataset/code reproduction"
    if PRODUCT_CUES.search(text):
        return False, "product capability claim is outside the academic technique contract"
    if NEGATION_CUES.search(text):
        return False, "negation scope is outside the controlled positive-atom grammar"
    if NORMATIVE_CUES.search(text):
        return False, "normative recommendation is not a source-defined mechanism proposition"
    if MULTI_CLAIM_CUES.search(text):
        return False, "multi-clause sentence is outside the controlled single-proposition grammar"
    if not atoms:
        return False, "no controlled semantic atom was recognized"
    if "](" in text or "：[" in text:
        return False, "navigation/link-label text is not a factual proposition"
    if len(text) < 25:
        return False, "heading or label lacks a complete natural-language predicate"
    if len(text) > 190:
        return False, "sentence exceeds the controlled single-proposition length boundary"
    return True, "single-technique controlled mechanism grammar"


def truth_status(row: dict[str, str], formalized: bool, entailed: bool, names: list[str], atoms: list[str]) -> tuple[str, str]:
    if not row["coverage_status"].startswith("covered_"):
        return "NO_PRIMARY_SOURCE", "INCONCLUSIVE"
    if RESULT_CUES.search(row["sentence"]) or row["claim_type"] == "empirical_or_research_claim":
        return "SOURCE_ASSERTED_EMPIRICAL_NOT_REPRODUCED", "INCONCLUSIVE"
    if row["claim_type"] == "official_product_contract" or PRODUCT_CUES.search(row["sentence"]):
        return "OFFICIAL_SPEC_ASSERTED_NOT_RUNTIME_VERIFIED", "INCONCLUSIVE"
    bm25_formula_atoms = {
        "document_statistics=true",
        "tf_saturation=true",
        "length_normalization=true",
    }
    if formalized and entailed and names == ["BM25"] and set(atoms).intersection(bm25_formula_atoms):
        return "MODEL_PROVED_UNDER_BM25_SOURCE_FORMALIZATION", "MODEL_PROVED"
    if formalized and entailed:
        return "SOURCE_DEFINITION_FORMALIZED_NOT_INDEPENDENTLY_TRUE", "MODEL_PROVED"
    return "TRUSTED_PRIMARY_ASSERTION_NOT_FORMALLY_PROVED", "INCONCLUSIVE"


def atom_id_map(technologies: list[dict[str, str]]) -> dict[str, int]:
    ordered: list[str] = []
    for row in technologies:
        for atom in split_values(row["formal_contract"]):
            if atom not in ordered:
                ordered.append(atom)
    missing = sorted(set(ordered) - set(ATOM_PATTERNS))
    if missing:
        raise SystemExit(f"missing semantic parser patterns for atoms: {missing}")
    return {atom: index for index, atom in enumerate(ordered, 1)}


def semantic_rows(
    sentences: list[dict[str, str]],
    technologies: list[dict[str, str]],
) -> list[dict[str, object]]:
    technology_rows = {row["technology"]: row for row in technologies}
    rows: list[dict[str, object]] = []
    for row in sentences:
        if row["evidence_required"] != "yes":
            continue
        names = split_values(row["concrete_technologies"])
        src_atoms = source_atoms(technology_rows, names)
        claim_atoms = guide_atoms(row["sentence"])
        formalized, reason = formalization_reason(row, names, claim_atoms)
        entailed = formalized and bool(claim_atoms) and set(claim_atoms).issubset(src_atoms)
        if formalized and not entailed:
            entailment_status = "NOT_ENTAILED_BY_SOURCE_CONTRACT"
            assurance = "DISPROVED"
        elif entailed:
            entailment_status = "PROVED_RELATIVE_TO_CURATED_FORMALIZATION"
            assurance = "MODEL_PROVED"
        else:
            entailment_status = "INCONCLUSIVE"
            assurance = "INCONCLUSIVE"
        source_truth_status, truth_assurance = truth_status(row, formalized, entailed, names, claim_atoms)
        unsupported = [atom for atom in claim_atoms if atom not in src_atoms]
        rows.append(
            {
                "sentence_id": row["sentence_id"],
                "unit_id": row["unit_id"],
                "file": row["file"],
                "line_start": row["line_start"],
                "sentence": row["sentence"],
                "claim_type": row["claim_type"],
                "source_ids": row["source_ids"],
                "source_urls": row["source_urls"],
                "concrete_technologies": row["concrete_technologies"],
                "guide_atoms": ";".join(claim_atoms),
                "source_atoms": ";".join(src_atoms),
                "unsupported_atoms": ";".join(unsupported),
                "formalization_complete": "yes" if formalized else "no",
                "formalization_reason": reason,
                "entailment_status": entailment_status,
                "entailment_assurance": assurance,
                "full_sentence_entailment_status": "INCONCLUSIVE_NL_TO_FORMAL_ADEQUACY_NOT_KERNEL_CERTIFIED",
                "full_sentence_assurance": "INCONCLUSIVE",
                "source_truth_status": source_truth_status,
                "truth_assurance": truth_assurance,
                "lean_obligation": f"SEM-{row['sentence_id'].split('-')[1]}",
                "validation_boundary": "Lean checks atom-level consequence; Japanese/English-to-atom adequacy and external-world truth are separate obligations.",
            }
        )
    return rows


def source_claim_rows(technologies: list[dict[str, str]]) -> list[dict[str, object]]:
    rows: list[dict[str, object]] = []
    for row in technologies:
        rows.append(
            {
                "source_claim_id": f"SCLAIM-{row['technology_id'].split('-')[1]}",
                "technology_id": row["technology_id"],
                "technology": row["technology"],
                "source_ids": row["source_ids"],
                "source_urls": row["source_urls"],
                "source_trust_tiers": row["source_trust_tiers"],
                "source_claim_ja": row["mechanism"],
                "formal_atoms": row["formal_contract"],
                "claim_kind": "source_defined_technique_mechanism",
                "formalization_validation": "curated_translation_requires_independent_domain_review",
                "truth_status": "definition_in_primary_source_not_independent_empirical_truth",
                "notes": "Lean can prove consequences of these atoms; it cannot prove that this translation exhausts the source text.",
            }
        )
    return rows


def metric(metric_id: str, name: str, numerator: int, denominator: int, scope: str, interpretation: str) -> dict[str, object]:
    percent = 100.0 if denominator == 0 else round(numerator * 100.0 / denominator, 2)
    return {
        "metric_id": metric_id,
        "metric": name,
        "numerator": numerator,
        "denominator": denominator,
        "coverage_percent": percent,
        "scope": scope,
        "interpretation": interpretation,
    }


def summary_rows(rows: list[dict[str, object]]) -> list[dict[str, object]]:
    formalized = [row for row in rows if row["formalization_complete"] == "yes"]
    entailed = [row for row in rows if row["entailment_status"] == "PROVED_RELATIVE_TO_CURATED_FORMALIZATION"]
    rejected = [row for row in rows if row["entailment_status"] == "NOT_ENTAILED_BY_SOURCE_CONTRACT"]
    model_truth = [row for row in rows if row["truth_assurance"] == "MODEL_PROVED"]
    empirical = [row for row in rows if row["source_truth_status"] == "SOURCE_ASSERTED_EMPIRICAL_NOT_REPRODUCED"]
    official = [row for row in rows if row["source_truth_status"] == "OFFICIAL_SPEC_ASSERTED_NOT_RUNTIME_VERIFIED"]
    independently_verified = [
        row
        for row in rows
        if row["source_truth_status"] in {"EMPIRICALLY_REPRODUCED", "OFFICIAL_RUNTIME_OBSERVED"}
    ]
    full_sentence_proved = [row for row in rows if row["full_sentence_assurance"] == "MODEL_PROVED"]
    return [
        metric("SEM-COV-001", "制御文法による意味形式化", len(formalized), len(rows), "根拠必須センテンス", "単一技術・単一命題・非経験的な制御文法へ変換できた割合"),
        metric("SEM-COV-002", "一次資料からの相対的意味論導出", len(entailed), len(rows), "根拠必須センテンス", "Leanがguide atoms ⊆ source atomsを検査した割合。自然言語変換の妥当性は別審査"),
        metric("SEM-COV-003", "形式契約による反証", len(rejected), len(formalized), "形式化完了センテンス", "形式化したが一次資料契約から導けなかった割合"),
        metric("SEM-COV-004", "自然言語全文の自動意味論証明", len(full_sentence_proved), len(rows), "根拠必須センテンス", "自然言語から形式命題への意味保存までkernel-certifiedな割合。現状は検証済み日本語semantic parserがないため0"),
        metric("TRUTH-COV-001", "一次資料定義下のモデル命題", len(model_truth), len(rows), "根拠必須センテンス", "一次資料を形式化したモデル内で証明済み。外界の事実証明ではない"),
        metric("TRUTH-COV-002", "経験的主張の独立再現", 0, len(empirical), "経験的・比較主張", "論文掲載を真理の証明とせず、コード・データで再現した割合"),
        metric("TRUTH-COV-003", "公式製品仕様の実動作検証", 0, len(official), "公式製品・API主張", "公式文書の記載だけでなく対象版の実サービスで観測した割合"),
        metric("TRUTH-COV-004", "一次資料主張の独立真偽確認", len(independently_verified), len(rows), "根拠必須センテンス", "出典の存在ではなく独立再現または実動作観測まで完了した割合"),
    ]


def lean_list(values: list[int]) -> str:
    return "[" + ", ".join(str(value) for value in values) + "]"


def generate_lean(rows: list[dict[str, object]], atoms: dict[str, int]) -> None:
    entries: list[str] = []
    entailed_ids: list[int] = []
    rejected_ids: list[int] = []
    for row in rows:
        sentence_number = int(str(row["sentence_id"]).split("-")[1])
        guide = [atoms[value] for value in split_values(str(row["guide_atoms"]))]
        source = [atoms[value] for value in split_values(str(row["source_atoms"]))]
        formalized = row["formalization_complete"] == "yes"
        if row["entailment_status"] == "PROVED_RELATIVE_TO_CURATED_FORMALIZATION":
            entailed_ids.append(sentence_number)
        if row["entailment_status"] == "NOT_ENTAILED_BY_SOURCE_CONTRACT":
            rejected_ids.append(sentence_number)
        entries.append(
            "  { id := %d, sourcePresent := %s, formalizationComplete := %s, guideAtoms := %s, sourceAtoms := %s, modelTruth := %s }"
            % (
                sentence_number,
                "true" if bool(row["source_ids"]) else "false",
                "true" if formalized else "false",
                lean_list(guide),
                lean_list(source),
                "true" if row["truth_assurance"] == "MODEL_PROVED" else "false",
            )
        )
    content = f"""-- Generated by tools/formal_review/generate_semantic_assurance.py.
-- Atom identifiers represent a curated controlled vocabulary.  Lean proves
-- consequence inside that representation, not the adequacy of NL translation
-- or empirical truth in the external world.

namespace RagEvidence.SemanticGenerated

structure SemanticRow where
  id : Nat
  sourcePresent : Bool
  formalizationComplete : Bool
  guideAtoms : List Nat
  sourceAtoms : List Nat
  modelTruth : Bool
  deriving Repr, DecidableEq

def semanticLedger : List SemanticRow := [
{',\n'.join(entries)}
]

def reportedEntailedIds : List Nat := {lean_list(entailed_ids)}
def reportedRejectedIds : List Nat := {lean_list(rejected_ids)}
def reportedAtomCount : Nat := {len(atoms)}

end RagEvidence.SemanticGenerated
"""
    LEAN_OUT.parent.mkdir(parents=True, exist_ok=True)
    LEAN_OUT.write_text(content, encoding="utf-8")


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    sentences = read_csv(OUT / "sentence_evidence.csv")
    technologies = read_csv(OUT / "concrete_technologies.csv")
    atoms = atom_id_map(technologies)
    semantic = semantic_rows(sentences, technologies)
    claims = source_claim_rows(technologies)
    summary = summary_rows(semantic)
    write_csv(OUT / "semantic_assurance.csv", semantic, list(semantic[0]))
    write_csv(OUT / "source_claim_formalizations.csv", claims, list(claims[0]))
    write_csv(OUT / "semantic_assurance_summary.csv", summary, list(summary[0]))
    generate_lean(semantic, atoms)

    generated = [
        OUT / "semantic_assurance.csv",
        OUT / "source_claim_formalizations.csv",
        OUT / "semantic_assurance_summary.csv",
        LEAN_OUT,
    ]
    metrics = {row["metric_id"]: row for row in summary}
    manifest = {
        "method_version": 1,
        "authoritative_commit": "52bebecfb2a435d0e7ff2efea557c5799674ded6",
        "required_sentences": len(semantic),
        "controlled_formalizations": int(metrics["SEM-COV-001"]["numerator"]),
        "relative_entailments_proved": int(metrics["SEM-COV-002"]["numerator"]),
        "contract_rejections": int(metrics["SEM-COV-003"]["numerator"]),
        "automatic_full_sentence_entailments": int(metrics["SEM-COV-004"]["numerator"]),
        "independently_verified_source_truths": int(metrics["TRUTH-COV-004"]["numerator"]),
        "atom_count": len(atoms),
        "assurance_boundary": {
            "proved": "Lean proves controlled guide-atom inclusion in curated source-contract atoms and formula-model properties.",
            "not_proved": "Natural-language-to-atom adequacy, paper experiment truth, and hosted service runtime behavior.",
            "anti_circularity": "Primary-source statements are not introduced as unclassified Lean axioms.",
        },
        "sha256": {path.relative_to(ROOT).as_posix(): sha256(path) for path in generated},
    }
    MANIFEST_OUT.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(manifest, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
