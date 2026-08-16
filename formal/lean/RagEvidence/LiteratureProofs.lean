import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 478 := by
  decide

theorem every_required_sentence_assessed : sentenceProofRows.length = reportedRequiredCount := by
  decide

theorem every_primary_source_summarized : sourceTheorems.length = reportedSourceCount := by
  decide

theorem conditional_proofs_are_nonvacuous :
    sentenceProofRows.all (fun row =>
      if row.reportedDerived then
        row.formalized && decide (row.sourceIds != []) && decide (row.sourceFacts != [])
      else true) = true := by
  decide

theorem no_end_to_end_upgrade_without_adequacy_review :
    sentenceProofRows.all (fun row => !row.endToEnd) = true := by
  decide

theorem source_theorem_catalog_is_inhabited : reportedSourceCount > 0 := by
  decide

theorem semantic_atom_catalog_is_inhabited : reportedAtomCount > 0 := by
  decide

theorem literature_SENT_0002 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 99)) (.atom 90)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [142]))))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [71, 90, 93, 99, 111, 119, 142])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.head [111, 119, 142])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [93, 99, 111, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0022 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0041 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 56, 140, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 140)) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 8 (List.Mem.head [140, 142]))) (.atom (List.Mem.tail 8 (List.Mem.tail 56 (List.Mem.head [142]))))) (.atom (List.Mem.head [56, 140, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 50, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 44, 46, 50, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 128, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0075 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 50, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.head [71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 128, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0076 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 46, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0077 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0078 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.head [119, 142])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.tail 14 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0084 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 50, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0087 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 46, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 46, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0111 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142] →
      Formula.Holds valuation (.or (.and (.and (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 122)) (.atom 40)) (.atom 100)) (.and (.and (.atom 119) (.atom 12)) (.atom 94))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 122, 142]))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.head [13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142])))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.head [111, 118, 119, 120, 122, 142]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0114 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 38, 44, 46, 50, 56, 60, 76, 77, 83, 89, 111, 118, 119, 120, 122, 128, 136, 142] →
      Formula.Holds valuation (.or (.and (.and (.and (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 19)) (.atom 44)) (.atom 43)) (.atom 13)) (.atom 120)) (.atom 60)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.head [60, 76, 77, 83, 89, 111, 118, 119, 120, 122, 128, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0119 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [46, 83, 94, 119, 122])))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40, 46, 83, 94, 119, 122]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0127 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 74, 83, 89, 92, 94, 100, 111, 118, 119, 122] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 46)) (.atom 12)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 74 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [122]))))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 74, 83, 89, 92, 94, 100, 111, 118, 119, 122])))))))))) (.atom (List.Mem.tail 11 (List.Mem.head [13, 19, 32, 34, 40, 46, 56, 74, 83, 89, 92, 94, 100, 111, 118, 119, 122])))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.head [19, 32, 34, 40, 46, 56, 74, 83, 89, 92, 94, 100, 111, 118, 119, 122])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0146 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 120, 142] →
      Formula.Holds valuation (.or (.and (.and (.atom 119) (.atom 46)) (.atom 13)) (.and (.and (.atom 119) (.atom 56)) (.atom 120))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.head [120, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 60, 118, 119, 120, 142])))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 46, 56, 60, 118, 119, 120, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0149 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 120, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.head [120, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0153 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 120, 142] →
      Formula.Holds valuation (.or (.and (.and (.atom 119) (.atom 56)) (.atom 120)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.head [120, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [60, 118, 119, 120, 142]))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0155 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 119, 120] →
      Formula.Holds valuation (.or (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 120)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0156 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [119, 120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0159 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 120, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 19)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.head [120, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [60, 118, 119, 120, 142]))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [46, 56, 60, 118, 119, 120, 142]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0163 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 119 (List.Mem.head []))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.head [119, 122]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0174 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 46) (.atom 13)) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [83, 119, 122])))) (.atom (List.Mem.head [32, 46, 83, 119, 122]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 119 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0179 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142] →
      Formula.Holds valuation (.or (.and (.and (.atom 46) (.atom 13)) (.atom 122)) (.and (.atom 119) (.atom 94))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142]))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.head [19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142]))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [142])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0180 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142] →
      Formula.Holds valuation (.or (.and (.atom 46) (.atom 13)) (.and (.and (.atom 119) (.atom 46)) (.atom 13))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142]))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.head [19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0182 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head []))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0204 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head []))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0281 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 118] →
      Formula.Holds valuation (.and (.atom 118) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head []))) (.atom (List.Mem.head [118])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0290 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 89, 111, 118, 119, 120, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 142]))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [60, 89, 111, 118, 119, 120, 142]))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0292 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 38, 44, 46, 50, 56, 60, 76, 77, 83, 89, 111, 118, 119, 120, 122, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 122, 128, 136, 142])))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [32, 38, 44, 46, 50, 56, 60, 76, 77, 83, 89, 111, 118, 119, 120, 122, 128, 136, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0299 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 129] →
      Formula.Holds valuation (.or (.atom 129) (.and (.atom 19) (.atom 8))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0316 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 89, 111, 118, 119, 120, 142] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [46, 56, 60, 89, 111, 118, 119, 120, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0327 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 32) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.head [34, 40, 46, 83, 94, 119, 122])))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0347 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 56, 89, 119] →
      Formula.Holds valuation (.or (.atom 13) (.and (.and (.and (.atom 89) (.atom 119)) (.atom 46)) (.atom 13))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.head [56, 89, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0352 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 89, 111, 118, 119, 120, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 142]))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [60, 89, 111, 118, 119, 120, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0364 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 46, 56, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head []))))) (.atom (List.Mem.tail 13 (List.Mem.head [56, 119])))) (.atom (List.Mem.head [46, 56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0382 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0383 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 128) (.atom 32)) (.atom 119)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.head [136, 142]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0385 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 38, 41, 43, 44, 50, 56, 72, 76, 77, 88, 118, 119, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.head [119, 128, 136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 72, 76, 77, 88, 118, 119, 128, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0387 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 8, 14, 19, 41, 43, 44, 46, 54, 56, 63, 71, 86, 90, 93, 99, 107, 111, 119, 140, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 8 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 86, 90, 93, 99, 107, 111, 119, 140, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0392 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0398 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 5, 14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 5) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.head [14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142]))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 118 (List.Mem.head [142])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0408 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0409 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0411 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.and (.atom 119) (.atom 44)) (.atom 117)) (.and (.atom 43) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [119, 127, 136, 142]))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0412 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.atom 119) (.atom 44)) (.and (.and (.atom 119) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0413 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0414 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0417 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.atom 119) (.and (.and (.and (.and (.atom 31) (.atom 119)) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0418 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 23, 24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 106, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.atom 23) (.atom 119)) (.and (.and (.and (.atom 119) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 106, 111, 117, 119, 127, 136, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0419 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 142)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0420 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0421 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0422 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 142)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0425 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 26, 32, 38, 39, 41, 43, 46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 142)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head []))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0435 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 38, 41, 43, 44, 50, 59, 63, 66, 76, 77, 116, 118, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.tail 118 (List.Mem.head [128, 136])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0437 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0438 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0441 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136])))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0443 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [117, 119, 127, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0448 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 118, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [118, 119])))) (.atom (List.Mem.head [41, 43, 118, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0449 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0452 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 85, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0453 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.head [119, 142])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [142])))))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0454 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0456 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0457 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 19 (List.Mem.head [119]))) (.atom (List.Mem.head [56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0458 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 47) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 64, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0459 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119, 142] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0460 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0461 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0462 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 46, 56, 58, 111, 119] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.head [119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0463 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 126] →
      Formula.Holds valuation (.and (.and (.and (.atom 111) (.atom 119)) (.atom 56)) (.atom 126)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 56 (List.Mem.head [119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [126]))))) (.atom (List.Mem.head [111, 119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0464 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0465 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0466 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 69, 71, 86, 119, 133, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133, 142]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.head [86, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0467 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 56, 140, 142] →
      Formula.Holds valuation (.and (.atom 140) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 8 (List.Mem.tail 56 (List.Mem.head [142])))) (.atom (List.Mem.head [56, 140, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0472 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0473 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0474 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0475 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0559 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0561 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0646 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))) (.atom (List.Mem.head [111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0675 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0693 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0703 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 133)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [133])))) (.atom (List.Mem.head [111, 119, 133]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0704 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0714 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0720 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.head [85, 119])))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0753 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 43, 119] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0785 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0793 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0796 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0821 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 92, 119] →
      Formula.Holds valuation (.atom 92) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0855 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 28, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 26 (List.Mem.tail 28 (List.Mem.tail 43 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0865 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0866 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 89, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [89, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0875 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0884 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 74, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [74, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0895 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.and (.atom 74) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 74, 119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0911 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 119 (List.Mem.tail 125 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0940 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 74, 92, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 74, 92, 119, 125, 131]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 44, 74, 92, 119, 125, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0968 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0969 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 32, 35, 38, 39, 41, 43, 59, 66, 73, 76, 77, 93, 117, 119, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 133, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0986 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [78, 125, 142] →
      Formula.Holds valuation (.and (.atom 125) (.atom 78)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 78 (List.Mem.head [142]))) (.atom (List.Mem.head [125, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1013 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 23, 40, 41, 42, 43, 54, 56, 63, 81, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1017 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1020 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 63) (.atom 54)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1026 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1030 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1032 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1040 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1044 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 32, 41, 43, 54, 56, 63, 81, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 81, 86, 107, 111, 119, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1052 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1053 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1064 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1083 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1104 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 19)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1116 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1132 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1140 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1141 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1145 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1155 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.head [43, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1199 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 23, 25, 32, 38, 39, 40, 41, 42, 43, 44, 50, 67, 76, 77, 81, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 81 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1203 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1204 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 39)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1214 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.atom 39) (.atom 67)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1215 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1224 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1255 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1257 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 50) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136])))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1259 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1264 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1266 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 26, 32, 40, 41, 42, 43, 56, 72, 81, 88, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 81 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1267 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1274 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.and (.atom 75) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [119]))))) (.atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1284 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1285 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1291 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [72, 88, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142]))))))))) (.atom (List.Mem.head [25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1298 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 136, 142]))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1302 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 23, 26, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 73, 116, 117, 119, 123, 130, 133] →
      Formula.Holds valuation (.or (.atom 119) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [123, 130, 133])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1303 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1311 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1312 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1317 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1318 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1325 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 51) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [59, 63, 119, 130]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1326 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 63, 119] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 32, 35, 41, 43, 51, 52, 63, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1331 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [23, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1333 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 22 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1339 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.and (.atom 57) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [63, 119, 123])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.head [123])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1361 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 30, 34, 41, 57, 63, 66, 73, 119, 123, 133] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.head [41, 57, 63, 66, 73, 119, 123, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1367 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1372 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1377 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 56, 119, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1380 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.atom 66) (.atom 119)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.head [73, 117, 119, 123, 133]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1381 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 133)) (.atom 117)) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.head [119, 123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1405 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1408 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1412 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 35, 41, 57, 59, 63, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1417 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 59, 66, 73, 117, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1473 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 35, 41, 43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head []))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.head [43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1498 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.head [124, 133]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1508 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1520 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 41, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 46)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.head [56, 86, 93, 99, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1576 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1578 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1588 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 81 (List.Mem.tail 111 (List.Mem.head [126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1589 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1598 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 15, 41, 45, 46, 56, 61, 69, 71, 86, 93, 99, 111, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 93, 99, 111, 119, 133])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [133])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1611 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 108) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.head [111, 119, 123])))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1616 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1617 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1629 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 53, 55, 73, 97, 118, 119] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [73, 97, 118, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1635 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 93 (List.Mem.tail 95 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123, 136]))))))))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.head [71, 76, 93, 95, 96, 108, 111, 119, 123, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1645 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 55, 56, 73, 76, 95, 97, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.tail 97 (List.Mem.tail 118 (List.Mem.head [136]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1650 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 76, 95, 119, 136] →
      Formula.Holds valuation (.or (.and (.and (.atom 53) (.atom 119)) (.atom 56)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 76, 95, 119, 136])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [76, 95, 119, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1659 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 62, 119, 142])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1661 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1663 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1675 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1703 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1710 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1716 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1732 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 77, 119, 128] →
      Formula.Holds valuation (.and (.atom 77) (.atom 38)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.head [119, 128]))) (.atom (List.Mem.head [77, 119, 128])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1734 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1740 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 136) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head []))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1743 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.and (.atom 77) (.atom 38)) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.head [44, 50, 76, 77, 119, 128, 136]))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1745 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1747 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1750 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 36, 41, 43, 53, 68, 75, 76, 77, 113, 118, 119, 128, 136] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.head [53, 68, 75, 76, 77, 113, 118, 119, 128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1764 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 136)) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1770 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 76) (.atom 50)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1790 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 75)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.head [77, 97, 113, 118, 119, 128, 134, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1793 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 68, 75, 77, 118, 119, 128, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [128, 134])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1794 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 68, 75, 77, 113, 119, 128] →
      Formula.Holds valuation (.and (.atom 36) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.head [41, 43, 53, 68, 75, 77, 113, 119, 128])))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.head [43, 53, 68, 75, 77, 113, 119, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1795 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 68, 75, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 75) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))) (.atom (List.Mem.tail 5 (List.Mem.head [68, 75, 77, 119, 128, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1798 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 68)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.head [73, 75, 77, 97, 113, 118, 119, 128, 134, 136]))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1801 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1806 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1807 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.and (.atom 39) (.atom 67)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1808 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 32) (.atom 39)) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1812 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1813 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1815 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1825 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 32, 119] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [32, 119]))) (.atom (List.Mem.head [6, 32, 119]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 32 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1826 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.head [50, 76, 77, 119, 128, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1834 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1841 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1842 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1847 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1848 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1850 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 127) (.atom 25)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1857 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1859 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1863 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.head [43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1885 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 72)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1888 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 32, 41, 43, 71, 72, 88, 119, 123] →
      Formula.Holds valuation (.and (.atom 21) (.atom 23)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [23, 32, 41, 43, 71, 72, 88, 119, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.head [32, 41, 43, 71, 72, 88, 119, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1889 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.atom 32) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1893 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1894 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 88, 119, 128] →
      Formula.Holds valuation (.and (.and (.and (.atom 128) (.atom 32)) (.atom 88)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.tail 119 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [40, 41, 43, 88, 119, 128])))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119, 128])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.head [128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1895 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.and (.atom 88) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.head [118, 119, 123, 128]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 71, 72, 88, 118, 119, 123, 128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1909 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1912 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1920 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1924 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1927 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1936 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1950 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1963 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1965 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1968 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.and (.atom 91) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.head [114, 119, 143])))) (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1970 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1978 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1983 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1987 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1991 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1995 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2028 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2040 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.head [51, 52, 59, 63, 66, 116, 119])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.head [43, 51, 52, 59, 63, 66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2047 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 32, 35, 38, 41, 43, 44, 50, 51, 52, 59, 63, 66, 76, 77, 116, 119, 128, 130, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 130, 136])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2089 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 44, 50, 67, 76, 77, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2131 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2134 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2147 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 46)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2184 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 43, 56, 119] →
      Formula.Holds valuation (.and (.atom 31) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [43, 56, 119])) (.atom (List.Mem.tail 31 (List.Mem.head [56, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2191 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 31] →
      Formula.Holds valuation (.and (.atom 31) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [31])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2210 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 37) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [98, 118]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2211 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2217 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 118 (List.Mem.head [])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2218 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2236 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2237 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 115)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [118, 119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2243 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [98, 115, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2244 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 56, 98, 115, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2249 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 46, 56, 61, 73, 81, 109, 110, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.tail 109 (List.Mem.tail 110 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [81, 109, 110, 111, 119, 124, 133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2253 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2254 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2257 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2260 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2261 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 65)) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [79, 80, 115, 118, 119, 142])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [65, 79, 80, 115, 118, 119, 142]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2265 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 112, 115, 119] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [115, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2272 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2276 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2278 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 119)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 115, 118, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2280 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2284 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 118) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2285 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 38, 39, 41, 43, 44, 50, 56, 65, 76, 77, 79, 80, 98, 101, 115, 118, 119, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 128, 136, 142])))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2290 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2305 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2307 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2329 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.or (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2336 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 56, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 56, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [105, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2344 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2348 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 73, 81, 105, 109, 110, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2350 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 56, 73, 81, 110, 119] →
      Formula.Holds valuation (.atom 24) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.head [26, 41, 56, 73, 81, 110, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2361 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2377 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119, 142] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2399 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2404 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2461 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2486 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2495 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2580 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [71, 90, 93, 99, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2586 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))) (.atom (List.Mem.tail 56 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2592 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2606 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2636 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 119, 133, 142])))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2691 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2693 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2706 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2718 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2742 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119, 142] →
      Formula.Holds valuation (.and (.atom 44) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119, 142]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2751 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133]))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 44, 47, 56, 61, 64, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2757 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.or (.atom 56) (.and (.atom 19) (.atom 44))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.head [61, 64, 119, 133]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2795 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 119, 142] →
      Formula.Holds valuation (.and (.atom 56) (.atom 142)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [61, 119, 142]))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2809 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2878 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2884 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 71)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.head [93, 119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2894 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2908 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2910 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2911 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2919 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 23) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2944 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2952 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2962 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2982 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [46, 56, 86, 111, 118, 119, 123]))) (.atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2987 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2991 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [86, 111, 118, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2999 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3002 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 34, 41, 43, 44, 46, 47, 56, 61, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 71, 93, 111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 71, 93, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3014 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3045 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 34 (List.Mem.tail 43 (List.Mem.head [71, 111, 119])))) (.atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3048 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 44, 46, 47, 56, 71, 93, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3074 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3090 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3096 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3099 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 18, 32, 41, 43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125] →
      Formula.Holds valuation (.and (.atom 44) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3111 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 71, 111, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [41, 43, 44, 56, 61, 64, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3114 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 32, 38, 39, 41, 43, 46, 53, 56, 61, 62, 76, 77, 80, 93, 117, 119, 123, 127, 136, 137, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 80 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.tail 137 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3140 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3146 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3156 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3157 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3167 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3169 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3172 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 38, 41, 44, 50, 70, 76, 77, 114, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 114) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 70 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 128, 136])))))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.head [50, 70, 76, 77, 114, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3178 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 43) (.atom 14)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3182 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 32, 38, 39, 41, 43, 68, 75, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 128) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.head [136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3183 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 38, 41, 44, 50, 68, 75, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.head [44, 50, 68, 75, 76, 77, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3189 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3224 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3240 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 101, 115, 118, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 98, 101, 115, 118, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3252 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 105, 106, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3265 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 46, 47, 56, 64, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [64, 71, 93, 111, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 64, 71, 93, 111, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 64, 71, 93, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3272 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3309 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 47 (List.Mem.head [64, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3314 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [61, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3326 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3336 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 56, 61, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3341 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3353 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head []))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3379 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3389 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3405 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3407 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3414 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [56, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3417 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3427 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3439 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3440 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 43)) (.atom 80)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 64 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 37 (List.Mem.head [43, 56, 64, 80, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [111, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3460 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.or (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3464 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3472 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3477 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3492 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3493 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3505 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3509 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3512 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3526 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3533 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3534 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3538 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 44)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [125, 127, 133, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3549 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 124] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3555 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3561 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3567 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 119) (.atom 87)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.tail 87 (List.Mem.head [130]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 87) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.head [43, 51, 59, 63, 83, 87, 119, 130])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3578 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3595 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.head [61, 82, 103, 111, 119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3600 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3604 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3610 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 82 (List.Mem.tail 103 (List.Mem.head [119, 124]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 82, 103, 111, 119, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3618 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.head [56, 82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.head [43, 56, 82, 103, 119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3626 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.atom 56) (.atom 103)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 82 (List.Mem.head [119, 124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3658 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3664 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 104) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 46, 56, 61, 63, 104, 111, 119, 124, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3675 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3681 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 104, 119, 124] →
      Formula.Holds valuation (.atom 124) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3682 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 43) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 104, 119, 124])))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3699 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 63, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3717 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.head [14, 19, 34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3723 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3733 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3739 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3746 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3791 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 43, 56, 73, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 43, 56, 73, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [73, 105, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3796 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 83, 87, 119] →
      Formula.Holds valuation (.atom 87) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 83 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3826 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [41, 56, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3837 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3843 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3849 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 105, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 105 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3854 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 43, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3878 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3884 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3890 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 28, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [49, 56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3903 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3914 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 34, 119] →
      Formula.Holds valuation (.atom 30) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [34, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3934 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3940 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119, 142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3965 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 111, 119, 124, 133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3999 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 61, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [61, 111, 119])))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 61, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4018 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4022 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4028 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4038 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4046 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4047 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4054 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4056 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4061 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [71, 85, 93, 111, 119, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 71, 85, 93, 111, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4138 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142] →
      Formula.Holds valuation (.or (.and (.atom 117) (.atom 26)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 108 (List.Mem.tail 109 (List.Mem.tail 111 (List.Mem.head [119, 126, 127, 130, 142]))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.head [32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4146 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 56, 61, 75, 108, 111, 117, 119, 127, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [119, 127, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4159 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4178 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 108, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 108 (List.Mem.head [])))) (.atom (List.Mem.head [108, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4182 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4183 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4210 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 14, 26, 32, 34, 41, 43, 56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.head [117, 119, 136, 142]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [136, 142])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4216 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 71, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4240 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4270 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4302 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4323 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 81)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.head [81, 119]))) (.atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4333 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4335 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4346 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4353 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 86, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 86, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4354 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 119, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 56, 81, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4376 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.atom 63) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4393 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143])) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.head [43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4404 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4405 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 20, 41, 43, 54, 56, 58, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 20 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 114 (List.Mem.head [139, 142, 143]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4414 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 1)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.head [14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142]))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4437 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4465 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4475 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4503 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 89, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [89, 119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4513 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4520 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [119, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4522 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.head [89, 92, 111, 119, 125, 131]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4550 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4557 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124, 126] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 61, 99, 111, 119, 124, 126]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4578 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 69) (.atom 86)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.head [119, 133]))))))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4588 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4620 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 15, 41, 43, 45, 46, 56, 61, 69, 71, 86, 99, 104, 111, 119, 124, 126, 133, 137, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 99 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.head [124, 126, 133, 137, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4635 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 108, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 108 (List.Mem.head [142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4640 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4641 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4729 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4738 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4740 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4762 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.head [119, 142])))))))))))
    (valuation := valuation)
    hFacts


end RagEvidence.LiteratureProofs

#print axioms RagEvidence.LiteratureProofs.reported_literature_entailments_count_exact
#print axioms RagEvidence.LiteratureProofs.every_required_sentence_assessed
#print axioms RagEvidence.LiteratureProofs.every_primary_source_summarized
#print axioms RagEvidence.LiteratureProofs.conditional_proofs_are_nonvacuous
#print axioms RagEvidence.LiteratureProofs.no_end_to_end_upgrade_without_adequacy_review
#print axioms RagEvidence.LiteratureProofs.source_theorem_catalog_is_inhabited
#print axioms RagEvidence.LiteratureProofs.semantic_atom_catalog_is_inhabited
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0002
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0022
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0041
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0051
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0075
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0076
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0077
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0078
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0079
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0084
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0087
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0106
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0111
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0114
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0119
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0127
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0146
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0149
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0153
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0155
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0156
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0159
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0163
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0174
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0179
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0180
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0182
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0204
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0205
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0281
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0290
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0292
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0299
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0316
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0327
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0347
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0352
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0364
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0382
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0383
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0385
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0387
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0392
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0398
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0408
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0409
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0411
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0412
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0413
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0414
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0417
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0418
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0419
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0420
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0421
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0422
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0425
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0435
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0437
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0438
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0441
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0443
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0448
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0449
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0452
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0453
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0454
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0456
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0457
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0458
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0459
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0460
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0461
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0462
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0463
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0464
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0465
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0466
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0467
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0472
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0473
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0474
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0475
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0559
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0561
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0646
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0675
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0693
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0703
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0704
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0714
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0720
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0753
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0785
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0793
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0796
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0821
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0855
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0865
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0866
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0875
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0884
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0895
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0911
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0940
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0968
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0969
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0986
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1013
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1017
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1020
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1026
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1030
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1032
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1040
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1044
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1052
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1053
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1064
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1083
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1104
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1106
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1116
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1132
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1140
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1141
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1145
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1155
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1199
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1203
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1204
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1205
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1214
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1215
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1222
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1224
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1255
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1257
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1259
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1264
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1266
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1267
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1274
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1284
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1285
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1291
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1298
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1302
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1303
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1311
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1312
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1317
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1318
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1325
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1326
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1331
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1333
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1339
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1361
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1367
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1372
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1377
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1380
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1381
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1405
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1408
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1412
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1417
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1473
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1498
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1508
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1520
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1576
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1578
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1588
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1589
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1598
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1611
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1616
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1617
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1629
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1635
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1645
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1650
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1659
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1661
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1663
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1675
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1703
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1710
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1716
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1732
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1734
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1740
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1743
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1745
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1747
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1750
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1764
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1770
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1790
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1793
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1794
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1795
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1798
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1801
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1806
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1807
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1808
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1812
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1813
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1815
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1825
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1826
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1834
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1841
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1842
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1847
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1848
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1850
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1857
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1859
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1863
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1885
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1888
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1889
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1893
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1894
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1895
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1909
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1912
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1920
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1924
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1927
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1936
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1950
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1963
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1965
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1968
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1970
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1978
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1983
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1987
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1991
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1995
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2028
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2040
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2047
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2051
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2089
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2131
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2134
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2147
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2184
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2191
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2210
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2211
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2217
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2218
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2236
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2237
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2243
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2244
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2249
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2253
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2254
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2257
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2260
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2261
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2265
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2272
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2276
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2278
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2280
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2284
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2285
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2290
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2305
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2307
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2329
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2336
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2344
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2348
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2350
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2361
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2377
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2399
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2404
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2461
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2486
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2495
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2580
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2586
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2592
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2606
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2636
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2691
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2693
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2706
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2718
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2742
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2751
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2757
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2795
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2809
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2878
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2884
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2894
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2908
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2910
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2911
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2919
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2944
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2952
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2962
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2982
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2987
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2991
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2999
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3002
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3014
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3045
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3048
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3074
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3090
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3096
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3099
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3111
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3114
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3140
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3146
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3156
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3157
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3167
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3169
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3172
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3178
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3182
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3183
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3189
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3224
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3240
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3252
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3265
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3272
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3309
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3314
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3326
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3336
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3341
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3353
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3379
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3389
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3405
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3407
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3414
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3417
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3427
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3439
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3440
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3460
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3464
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3472
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3477
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3492
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3493
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3505
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3509
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3512
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3526
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3533
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3534
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3538
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3549
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3555
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3561
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3567
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3578
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3595
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3600
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3604
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3610
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3618
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3626
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3658
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3664
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3675
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3681
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3682
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3699
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3717
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3723
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3733
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3739
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3746
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3791
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3796
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3826
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3837
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3843
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3849
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3854
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3878
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3884
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3890
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3903
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3914
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3934
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3940
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3965
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3999
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4018
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4022
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4028
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4038
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4046
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4047
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4054
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4056
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4061
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4138
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4146
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4159
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4178
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4182
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4183
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4210
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4216
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4240
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4270
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4302
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4323
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4333
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4335
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4346
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4353
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4354
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4376
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4393
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4404
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4405
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4414
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4437
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4465
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4475
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4503
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4513
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4520
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4522
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4550
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4557
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4578
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4588
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4620
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4635
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4640
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4641
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4729
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4738
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4740
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4762
