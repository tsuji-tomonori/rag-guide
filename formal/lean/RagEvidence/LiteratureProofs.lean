import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 481 := by
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
      allFacts valuation [12, 13, 19, 32, 43, 46, 56, 83, 89, 111, 118, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 43 (List.Mem.head [56, 83, 89, 111, 118, 119, 122]))))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 32, 43, 46, 56, 83, 89, 111, 118, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0138 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 43, 46, 56, 83, 89, 111, 118, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [122]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 43 (List.Mem.head [56, 83, 89, 111, 118, 119, 122])))))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 32, 43, 46, 56, 83, 89, 111, 118, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0148 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0166 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.or (.atom 119) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.head [122])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0178 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.head [122])))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [83, 94, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [32, 34, 40, 46, 83, 94, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0185 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 63, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 13) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 63, 74, 83, 92, 94, 100, 119, 122]))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 83 (List.Mem.tail 92 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 119 (List.Mem.head []))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 83 (List.Mem.tail 92 (List.Mem.head [100, 119, 122]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0187 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0191 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 46, 83, 119] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [83, 119])))) (.atom (List.Mem.head [40, 46, 83, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0210 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 63] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [63])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0220 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0229 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [83, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 83 (List.Mem.head []))) (.atom (List.Mem.head [122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0230 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 119) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.head [122])))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0243 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0244 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 119)) (.atom 56)) (.atom 19)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.head [119, 120, 136, 142]))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142]))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0249 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0250 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0252 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 120, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.head [120, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [60, 118, 119, 120, 142]))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0259 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0285 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.and (.and (.and (.atom 118) (.atom 119)) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.head [119, 120]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 83, 118, 119, 120]))))) (.atom (List.Mem.head [19, 46, 56, 83, 118, 119, 120]))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0294 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.atom 118) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.head [119, 120]))))))) (.atom (List.Mem.head [19, 46, 56, 83, 118, 119, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0313 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [119, 120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0318 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0361 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 19, 32, 34, 40, 46, 56, 74, 83, 92, 100, 119, 120, 122] →
      Formula.Holds valuation (.atom 13) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [18, 19, 32, 34, 40, 46, 56, 74, 83, 92, 100, 119, 120, 122]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0389 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 41, 46, 53, 56, 62, 76, 83, 94, 95, 119, 120, 122, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 95 (List.Mem.head [120, 122, 136, 142]))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.head [95, 119, 120, 122, 136, 142]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0390 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142] →
      Formula.Holds valuation (.or (.atom 83) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.head [89, 94, 111, 118, 119, 122, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0412 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 76, 83, 89, 95, 111, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [60, 76, 83, 89, 95, 111, 118, 119, 120, 136, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [32, 41, 46, 53, 56, 60, 76, 83, 89, 95, 111, 118, 119, 120, 136, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0428 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 142] →
      Formula.Holds valuation (.atom 60) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [118, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0431 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 118) (.atom 119)) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.head [119, 120, 122, 142])))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 122, 142])))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [142])))))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.head [111, 118, 119, 120, 122, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0458 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0459 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 62, 76, 83, 89, 95, 111, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 136, 142]))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [62, 76, 83, 89, 95, 111, 118, 119, 120, 136, 142])))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [136, 142])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0479 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0480 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 128) (.atom 32)) (.atom 119)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.head [136, 142]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0482 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 38, 41, 43, 44, 50, 56, 72, 76, 77, 88, 118, 119, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.head [119, 128, 136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 72, 76, 77, 88, 118, 119, 128, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0484 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 8, 14, 19, 41, 43, 44, 46, 54, 56, 63, 71, 86, 90, 93, 99, 107, 111, 119, 140, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 8 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 86, 90, 93, 99, 107, 111, 119, 140, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0489 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0495 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 5, 14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 5) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.head [14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142]))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 118 (List.Mem.head [142])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0505 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0506 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0508 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.and (.atom 119) (.atom 44)) (.atom 117)) (.and (.atom 43) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [119, 127, 136, 142]))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0509 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.atom 119) (.atom 44)) (.and (.and (.atom 119) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0510 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0511 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0514 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.atom 119) (.and (.and (.and (.and (.atom 31) (.atom 119)) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0515 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 23, 24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 106, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.atom 23) (.atom 119)) (.and (.and (.and (.atom 119) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 106, 111, 117, 119, 127, 136, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0516 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 142)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0517 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0518 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0519 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 142)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0522 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 26, 32, 38, 39, 41, 43, 46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 142)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head []))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0532 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 38, 41, 43, 44, 50, 59, 63, 66, 76, 77, 116, 118, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.tail 118 (List.Mem.head [128, 136])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0534 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0535 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0538 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136])))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0540 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [117, 119, 127, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0545 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 118, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [118, 119])))) (.atom (List.Mem.head [41, 43, 118, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0546 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0549 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 85, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0550 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.head [119, 142])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [142])))))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0551 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0553 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0554 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 19 (List.Mem.head [119]))) (.atom (List.Mem.head [56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0555 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 47) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 64, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0556 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119, 142] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0557 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0558 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0559 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 46, 56, 58, 111, 119] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.head [119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0560 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 126] →
      Formula.Holds valuation (.and (.and (.and (.atom 111) (.atom 119)) (.atom 56)) (.atom 126)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 56 (List.Mem.head [119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [126]))))) (.atom (List.Mem.head [111, 119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0561 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0562 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0563 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 69, 71, 86, 119, 133, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133, 142]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.head [86, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0564 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 56, 140, 142] →
      Formula.Holds valuation (.and (.atom 140) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 8 (List.Mem.tail 56 (List.Mem.head [142])))) (.atom (List.Mem.head [56, 140, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0569 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0571 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0572 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0656 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0658 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0743 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))) (.atom (List.Mem.head [111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0772 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0790 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0800 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 133)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [133])))) (.atom (List.Mem.head [111, 119, 133]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0801 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0811 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0817 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.head [85, 119])))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0850 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 43, 119] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0882 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0890 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0893 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0918 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 92, 119] →
      Formula.Holds valuation (.atom 92) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0952 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 28, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 26 (List.Mem.tail 28 (List.Mem.tail 43 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0962 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0963 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 89, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [89, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0972 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0981 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 74, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [74, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.and (.atom 74) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 74, 119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1008 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 119 (List.Mem.tail 125 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1037 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 74, 92, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 74, 92, 119, 125, 131]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 44, 74, 92, 119, 125, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1065 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1066 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 32, 35, 38, 39, 41, 43, 59, 66, 73, 76, 77, 93, 117, 119, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 133, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1083 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [78, 125, 142] →
      Formula.Holds valuation (.and (.atom 125) (.atom 78)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 78 (List.Mem.head [142]))) (.atom (List.Mem.head [125, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1110 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 23, 40, 41, 42, 43, 54, 56, 63, 81, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1114 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1117 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 63) (.atom 54)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1123 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1127 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1129 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1141 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 32, 41, 43, 54, 56, 63, 81, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 81, 86, 107, 111, 119, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1149 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1150 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1161 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1180 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1201 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1203 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 19)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1213 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1229 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1237 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1238 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1242 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1248 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1252 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1255 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.head [43, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1296 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 23, 25, 32, 38, 39, 40, 41, 42, 43, 44, 50, 67, 76, 77, 81, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 81 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1300 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1301 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1302 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 39)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1311 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.atom 39) (.atom 67)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1312 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1319 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1321 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1352 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1354 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 50) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136])))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1356 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1361 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1363 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 26, 32, 40, 41, 42, 43, 56, 72, 81, 88, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 81 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1364 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1371 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.and (.atom 75) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [119]))))) (.atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1381 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1382 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1388 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [72, 88, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1390 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142]))))))))) (.atom (List.Mem.head [25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1395 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 136, 142]))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1399 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 23, 26, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 73, 116, 117, 119, 123, 130, 133] →
      Formula.Holds valuation (.or (.atom 119) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [123, 130, 133])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1400 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1408 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1409 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1414 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1415 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1422 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 51) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [59, 63, 119, 130]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1423 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 63, 119] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 32, 35, 41, 43, 51, 52, 63, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1428 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [23, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1430 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 22 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1436 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.and (.atom 57) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [63, 119, 123])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.head [123])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1458 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 30, 34, 41, 57, 63, 66, 73, 119, 123, 133] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.head [41, 57, 63, 66, 73, 119, 123, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1464 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1469 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1474 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 56, 119, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1477 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.atom 66) (.atom 119)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.head [73, 117, 119, 123, 133]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1478 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 133)) (.atom 117)) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.head [119, 123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1502 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1505 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1509 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 35, 41, 57, 59, 63, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1514 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 59, 66, 73, 117, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 35, 41, 43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head []))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.head [43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1595 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.head [124, 133]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1605 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1617 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 41, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 46)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.head [56, 86, 93, 99, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1673 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1675 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1685 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 81 (List.Mem.tail 111 (List.Mem.head [126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1686 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1695 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 15, 41, 45, 46, 56, 61, 69, 71, 86, 93, 99, 111, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 93, 99, 111, 119, 133])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [133])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1708 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 108) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.head [111, 119, 123])))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1713 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1714 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1726 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 53, 55, 73, 97, 118, 119] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [73, 97, 118, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1732 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 93 (List.Mem.tail 95 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123, 136]))))))))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.head [71, 76, 93, 95, 96, 108, 111, 119, 123, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1742 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 55, 56, 73, 76, 95, 97, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.tail 97 (List.Mem.tail 118 (List.Mem.head [136]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1747 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 76, 95, 119, 136] →
      Formula.Holds valuation (.or (.and (.and (.atom 53) (.atom 119)) (.atom 56)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 76, 95, 119, 136])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [76, 95, 119, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1756 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 62, 119, 142])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1758 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1760 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1772 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1781 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1800 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1807 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1813 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1829 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 77, 119, 128] →
      Formula.Holds valuation (.and (.atom 77) (.atom 38)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.head [119, 128]))) (.atom (List.Mem.head [77, 119, 128])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1831 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1837 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 136) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head []))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1840 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.and (.atom 77) (.atom 38)) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.head [44, 50, 76, 77, 119, 128, 136]))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1842 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1844 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1847 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 36, 41, 43, 53, 68, 75, 76, 77, 113, 118, 119, 128, 136] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.head [53, 68, 75, 76, 77, 113, 118, 119, 128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1861 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 136)) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1867 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 76) (.atom 50)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1887 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 75)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.head [77, 97, 113, 118, 119, 128, 134, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1890 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 68, 75, 77, 118, 119, 128, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [128, 134])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1891 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 68, 75, 77, 113, 119, 128] →
      Formula.Holds valuation (.and (.atom 36) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.head [41, 43, 53, 68, 75, 77, 113, 119, 128])))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.head [43, 53, 68, 75, 77, 113, 119, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1892 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 68, 75, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 75) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))) (.atom (List.Mem.tail 5 (List.Mem.head [68, 75, 77, 119, 128, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1895 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 68)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.head [73, 75, 77, 97, 113, 118, 119, 128, 134, 136]))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1898 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1903 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1904 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.and (.atom 39) (.atom 67)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1905 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 32) (.atom 39)) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1909 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1910 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1912 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1922 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 32, 119] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [32, 119]))) (.atom (List.Mem.head [6, 32, 119]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 32 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1923 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.head [50, 76, 77, 119, 128, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1931 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1938 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1939 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1944 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1945 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 127) (.atom 25)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1954 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1956 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1960 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1969 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.head [43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1982 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 72)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1985 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 32, 41, 43, 71, 72, 88, 119, 123] →
      Formula.Holds valuation (.and (.atom 21) (.atom 23)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [23, 32, 41, 43, 71, 72, 88, 119, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.head [32, 41, 43, 71, 72, 88, 119, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1986 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.atom 32) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1990 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1991 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 88, 119, 128] →
      Formula.Holds valuation (.and (.and (.and (.atom 128) (.atom 32)) (.atom 88)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.tail 119 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [40, 41, 43, 88, 119, 128])))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119, 128])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.head [128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.and (.atom 88) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.head [118, 119, 123, 128]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 71, 72, 88, 118, 119, 123, 128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2006 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2009 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2017 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2021 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2024 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2033 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2044 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2047 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2060 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2062 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2065 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.and (.atom 91) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.head [114, 119, 143])))) (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2067 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2075 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2084 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2092 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2125 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.head [51, 52, 59, 63, 66, 116, 119])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.head [43, 51, 52, 59, 63, 66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2144 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 32, 35, 38, 41, 43, 44, 50, 51, 52, 59, 63, 66, 76, 77, 116, 119, 128, 130, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 130, 136])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2148 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2186 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 44, 50, 67, 76, 77, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2228 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2231 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2244 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 46)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2281 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 43, 56, 119] →
      Formula.Holds valuation (.and (.atom 31) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [43, 56, 119])) (.atom (List.Mem.tail 31 (List.Mem.head [56, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2288 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 31] →
      Formula.Holds valuation (.and (.atom 31) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [31])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2307 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 37) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [98, 118]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2308 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2314 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 118 (List.Mem.head [])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2315 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2333 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2334 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 115)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [118, 119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2340 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [98, 115, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2341 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 56, 98, 115, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2346 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 46, 56, 61, 73, 81, 109, 110, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.tail 109 (List.Mem.tail 110 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [81, 109, 110, 111, 119, 124, 133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2350 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2351 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2354 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2357 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2358 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 65)) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [79, 80, 115, 118, 119, 142])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [65, 79, 80, 115, 118, 119, 142]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2362 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 112, 115, 119] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [115, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2373 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2375 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 119)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 115, 118, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2377 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2381 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 118) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2382 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 38, 39, 41, 43, 44, 50, 56, 65, 76, 77, 79, 80, 98, 101, 115, 118, 119, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 128, 136, 142])))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2387 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2402 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2404 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.or (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2433 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 56, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 56, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [105, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2441 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2445 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 73, 81, 105, 109, 110, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 56, 73, 81, 110, 119] →
      Formula.Holds valuation (.atom 24) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.head [26, 41, 56, 73, 81, 110, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2458 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2474 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119, 142] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2496 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2558 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2583 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2592 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2677 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [71, 90, 93, 99, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2683 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))) (.atom (List.Mem.tail 56 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2689 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2703 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2733 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 119, 133, 142])))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2788 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2790 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2803 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2815 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2839 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119, 142] →
      Formula.Holds valuation (.and (.atom 44) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119, 142]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2848 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133]))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 44, 47, 56, 61, 64, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2854 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.or (.atom 56) (.and (.atom 19) (.atom 44))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.head [61, 64, 119, 133]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2892 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 119, 142] →
      Formula.Holds valuation (.and (.atom 56) (.atom 142)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [61, 119, 142]))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2906 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2969 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2975 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2981 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 71)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.head [93, 119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2991 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3005 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3007 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3008 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3016 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 23) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3041 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3049 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3059 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [46, 56, 86, 111, 118, 119, 123]))) (.atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3084 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [86, 111, 118, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3096 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3099 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 34, 41, 43, 44, 46, 47, 56, 61, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 71, 93, 111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 71, 93, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3111 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3142 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 34 (List.Mem.tail 43 (List.Mem.head [71, 111, 119])))) (.atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3145 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 44, 46, 47, 56, 71, 93, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3171 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3177 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3187 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3193 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3196 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 18, 32, 41, 43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125] →
      Formula.Holds valuation (.and (.atom 44) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3208 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 71, 111, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [41, 43, 44, 56, 61, 64, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3211 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 32, 38, 39, 41, 43, 46, 53, 56, 61, 62, 76, 77, 80, 93, 117, 119, 123, 127, 136, 137, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 80 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.tail 137 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3237 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3243 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3248 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3253 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3254 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3264 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3266 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3269 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 38, 41, 44, 50, 70, 76, 77, 114, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 114) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 70 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 128, 136])))))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.head [50, 70, 76, 77, 114, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3275 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 43) (.atom 14)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3279 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 32, 38, 39, 41, 43, 68, 75, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 128) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.head [136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3280 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 38, 41, 44, 50, 68, 75, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.head [44, 50, 68, 75, 76, 77, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3286 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3321 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3337 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 101, 115, 118, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 98, 101, 115, 118, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3349 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 105, 106, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3362 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 46, 47, 56, 64, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [64, 71, 93, 111, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 64, 71, 93, 111, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 64, 71, 93, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3390 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3406 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 47 (List.Mem.head [64, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3411 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [61, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3423 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3433 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 56, 61, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3438 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3450 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head []))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3476 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3486 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3502 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3504 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3511 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [56, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3514 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3524 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3536 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3537 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 43)) (.atom 80)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 64 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 37 (List.Mem.head [43, 56, 64, 80, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3544 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [111, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3557 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.or (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3561 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3569 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3574 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3589 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3590 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3602 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3606 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3623 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3630 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3631 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3635 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 44)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [125, 127, 133, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3646 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 124] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3652 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3658 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3664 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 119) (.atom 87)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.tail 87 (List.Mem.head [130]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 87) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.head [43, 51, 59, 63, 83, 87, 119, 130])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3675 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3692 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.head [61, 82, 103, 111, 119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3697 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3701 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3707 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 82 (List.Mem.tail 103 (List.Mem.head [119, 124]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 82, 103, 111, 119, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3715 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.head [56, 82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.head [43, 56, 82, 103, 119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3723 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.atom 56) (.atom 103)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 82 (List.Mem.head [119, 124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3755 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3761 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 104) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 46, 56, 61, 63, 104, 111, 119, 124, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3772 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3778 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 104, 119, 124] →
      Formula.Holds valuation (.atom 124) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3779 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 43) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 104, 119, 124])))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3796 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 63, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3814 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.head [14, 19, 34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3820 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3830 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3836 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3843 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3888 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 43, 56, 73, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 43, 56, 73, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [73, 105, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3893 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 83, 87, 119] →
      Formula.Holds valuation (.atom 87) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 83 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3923 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [41, 56, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3934 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3940 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3946 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 105, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 105 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3951 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 43, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3975 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3981 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3987 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 28, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [49, 56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4000 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4011 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 34, 119] →
      Formula.Holds valuation (.atom 30) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [34, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4031 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4037 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119, 142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4062 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 111, 119, 124, 133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4096 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 61, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [61, 111, 119])))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 61, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4115 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4119 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4125 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4135 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4143 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4144 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4153 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [71, 85, 93, 111, 119, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 71, 85, 93, 111, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4235 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142] →
      Formula.Holds valuation (.or (.and (.atom 117) (.atom 26)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 108 (List.Mem.tail 109 (List.Mem.tail 111 (List.Mem.head [119, 126, 127, 130, 142]))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.head [32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4243 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 56, 61, 75, 108, 111, 117, 119, 127, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [119, 127, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4256 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4275 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 108, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 108 (List.Mem.head [])))) (.atom (List.Mem.head [108, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4279 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4280 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4307 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 14, 26, 32, 34, 41, 43, 56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.head [117, 119, 136, 142]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [136, 142])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4313 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 71, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4337 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4367 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4399 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4420 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 81)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.head [81, 119]))) (.atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4430 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4432 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4443 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4450 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 86, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 86, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4451 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 119, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 56, 81, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4473 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.atom 63) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4490 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143])) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.head [43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4502 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 20, 41, 43, 54, 56, 58, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 20 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 114 (List.Mem.head [139, 142, 143]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4511 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 1)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.head [14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142]))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4523 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4534 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4562 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4572 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4600 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 89, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [89, 119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4610 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4617 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [119, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4619 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.head [89, 92, 111, 119, 125, 131]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4647 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4654 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124, 126] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 61, 99, 111, 119, 124, 126]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4675 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 69) (.atom 86)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.head [119, 133]))))))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4685 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4717 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 15, 41, 43, 45, 46, 56, 61, 69, 71, 86, 99, 104, 111, 119, 124, 126, 133, 137, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 99 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.head [124, 126, 133, 137, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4728 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 108, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 108 (List.Mem.head [142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4733 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4734 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4812 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4821 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4823 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4845 :
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0138
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0166
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0178
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0185
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0187
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0191
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0210
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0220
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0229
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0230
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0243
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0244
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0249
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0250
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0252
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0259
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0285
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0294
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0313
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0318
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0361
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0389
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0390
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0412
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0428
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0431
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0458
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0459
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0479
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0480
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0482
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0484
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0489
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0495
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0505
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0506
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0508
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0509
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0510
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0511
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0514
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0515
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0516
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0517
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0518
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0519
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0522
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0532
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0534
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0535
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0538
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0540
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0545
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0546
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0549
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0550
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0551
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0553
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0554
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0555
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0556
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0557
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0558
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0559
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0560
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0561
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0562
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0563
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0564
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0569
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0571
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0572
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0656
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0658
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0743
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0772
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0790
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0800
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0801
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0811
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0817
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0850
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0882
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0890
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0893
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0918
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0952
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0962
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0963
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0972
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0981
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1008
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1037
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1065
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1066
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1083
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1110
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1114
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1117
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1123
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1127
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1129
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1141
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1149
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1150
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1161
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1180
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1201
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1203
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1213
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1229
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1237
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1238
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1242
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1248
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1252
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1255
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1296
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1300
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1301
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1302
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1311
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1312
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1319
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1321
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1352
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1354
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1356
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1361
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1363
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1364
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1371
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1381
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1382
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1388
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1390
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1395
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1399
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1400
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1408
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1409
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1414
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1415
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1422
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1423
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1428
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1430
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1436
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1458
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1464
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1469
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1474
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1477
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1478
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1502
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1505
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1509
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1514
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1595
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1605
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1617
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1673
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1675
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1685
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1686
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1695
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1708
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1713
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1714
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1726
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1732
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1742
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1747
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1756
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1758
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1760
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1772
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1781
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1800
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1807
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1813
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1829
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1831
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1837
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1840
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1842
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1844
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1847
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1861
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1867
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1887
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1890
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1891
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1892
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1895
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1898
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1903
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1904
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1905
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1909
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1910
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1912
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1922
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1923
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1931
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1938
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1939
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1944
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1945
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1954
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1956
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1960
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1969
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1982
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1985
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1986
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1990
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1991
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2006
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2009
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2017
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2021
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2024
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2033
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2044
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2047
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2060
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2062
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2065
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2067
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2075
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2084
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2092
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2125
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2144
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2186
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2228
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2231
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2244
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2281
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2288
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2307
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2308
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2314
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2315
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2333
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2334
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2340
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2341
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2346
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2350
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2351
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2354
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2357
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2358
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2362
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2369
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2373
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2375
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2377
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2381
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2382
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2387
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2402
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2404
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2433
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2441
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2445
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2458
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2474
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2496
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2558
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2583
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2592
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2677
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2683
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2689
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2703
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2733
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2788
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2790
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2803
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2815
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2839
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2848
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2854
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2892
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2906
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2969
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2975
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2981
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2991
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3005
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3007
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3008
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3016
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3041
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3049
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3059
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3079
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3084
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3096
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3099
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3111
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3142
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3145
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3171
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3177
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3187
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3193
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3196
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3208
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3211
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3237
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3243
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3248
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3253
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3254
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3264
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3266
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3269
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3275
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3279
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3280
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3286
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3321
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3337
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3349
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3362
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3369
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3390
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3406
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3411
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3423
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3433
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3438
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3450
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3476
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3486
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3502
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3504
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3511
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3514
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3524
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3536
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3537
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3544
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3557
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3561
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3569
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3574
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3589
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3590
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3602
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3606
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3623
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3630
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3631
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3635
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3646
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3652
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3658
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3664
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3675
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3692
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3697
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3701
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3707
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3715
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3723
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3755
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3761
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3772
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3778
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3779
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3796
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3814
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3820
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3830
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3836
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3843
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3888
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3893
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3923
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3934
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3940
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3946
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3951
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3975
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3981
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3987
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4000
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4011
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4031
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4037
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4062
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4096
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4115
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4119
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4125
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4135
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4143
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4144
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4153
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4235
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4243
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4256
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4275
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4279
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4280
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4307
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4313
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4337
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4367
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4399
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4420
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4430
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4432
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4443
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4450
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4451
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4473
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4490
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4502
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4511
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4523
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4534
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4562
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4572
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4600
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4610
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4617
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4619
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4647
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4654
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4675
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4685
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4717
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4728
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4733
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4734
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4812
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4821
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4823
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4845
