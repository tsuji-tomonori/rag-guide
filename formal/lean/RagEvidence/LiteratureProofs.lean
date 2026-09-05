import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 497 := by
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

theorem literature_SENT_0105 :
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

theorem literature_SENT_0115 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 118, 119, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head []))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0121 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 46, 56, 83, 89, 111, 118, 119, 122] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [122]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0137 :
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
      allFacts valuation [12, 13, 19, 32, 46, 56, 83, 89, 111, 118, 119, 122] →
      Formula.Holds valuation (.and (.atom 119) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [122])))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head []))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0161 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 74 (List.Mem.tail 83 (List.Mem.tail 92 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.head [122])))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122]))))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0165 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.or (.atom 119) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.head [122])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0176 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [46, 83, 94, 119, 122])))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40, 46, 83, 94, 119, 122]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0177 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.head [122])))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [83, 94, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [32, 34, 40, 46, 83, 94, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0180 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 89, 111, 118, 119, 142] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [13, 19, 46, 56, 60, 89, 111, 118, 119, 142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0184 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 63, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 13) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 63, 74, 83, 92, 94, 100, 119, 122]))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 83 (List.Mem.tail 92 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 119 (List.Mem.head []))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 83 (List.Mem.tail 92 (List.Mem.head [100, 119, 122]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0186 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0190 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 46, 83, 119] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [83, 119])))) (.atom (List.Mem.head [40, 46, 83, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 63, 100] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [63, 100])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0204 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.head [122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0209 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 63] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [63])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0210 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40, 46, 83, 94, 119, 122])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0216 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 34, 40] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [40])))
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

theorem literature_SENT_0221 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.head [122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0224 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.head [122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0228 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [83, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 83 (List.Mem.head []))) (.atom (List.Mem.head [122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0229 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 119) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.head [122])))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0235 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 63, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.and (.and (.atom 18) (.atom 40)) (.atom 34)) (.atom 100)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.head [32, 34, 40, 46, 63, 74, 83, 92, 94, 100, 119, 122])))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [46, 63, 74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [40, 46, 63, 74, 83, 92, 94, 100, 119, 122]))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 83 (List.Mem.tail 92 (List.Mem.tail 94 (List.Mem.head [119, 122])))))))))))))))
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

theorem literature_SENT_0248 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0249 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0251 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 120, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.head [120, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [60, 118, 119, 120, 142]))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0256 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0258 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0291 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.and (.and (.and (.atom 118) (.atom 119)) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.head [119, 120]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 83, 118, 119, 120]))))) (.atom (List.Mem.head [19, 46, 56, 83, 118, 119, 120]))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0297 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.head [119, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0300 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.atom 118) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.head [119, 120]))))))) (.atom (List.Mem.head [19, 46, 56, 83, 118, 119, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0319 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [119, 120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0326 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0327 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0338 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 142] →
      Formula.Holds valuation (.atom 60) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [118, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0340 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 83, 118, 119, 120])))) (.atom (List.Mem.head [19, 46, 56, 83, 118, 119, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [122, 142]))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 60, 83, 89, 94, 111, 118, 119, 122, 142])))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.head [19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0379 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 19, 32, 34, 40, 46, 56, 74, 83, 92, 100, 119, 120, 122] →
      Formula.Holds valuation (.atom 13) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [18, 19, 32, 34, 40, 46, 56, 74, 83, 92, 100, 119, 120, 122]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0408 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 41, 46, 53, 56, 62, 76, 83, 94, 95, 119, 120, 122, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 95 (List.Mem.head [120, 122, 136, 142]))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.head [95, 119, 120, 122, 136, 142]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0421 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 18, 32, 41, 53, 56, 62, 70, 74, 76, 92, 95, 100, 114, 119, 136, 142] →
      Formula.Holds valuation (.and (.atom 100) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 92 (List.Mem.tail 95 (List.Mem.head [114, 119, 136, 142]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [53, 56, 62, 70, 74, 76, 92, 95, 100, 114, 119, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0422 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 89, 95, 111, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.head [119, 120, 136, 142]))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 136, 142])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0450 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 142] →
      Formula.Holds valuation (.atom 60) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [118, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0453 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 74, 92, 100] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 74 (List.Mem.tail 92 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0454 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 120, 122, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 118) (.atom 119)) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.head [119, 120, 122, 142])))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 122, 142])))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [142])))))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.head [111, 118, 119, 120, 122, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0455 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 89, 95, 111, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.atom 56) (.atom 60)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [60, 62, 76, 89, 95, 111, 118, 119, 120, 136, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [62, 76, 89, 95, 111, 118, 119, 120, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0457 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 62, 76, 83, 89, 95, 111, 118, 119, 120, 122, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 122, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0462 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 63, 74, 92, 100] →
      Formula.Holds valuation (.and (.atom 18) (.atom 100)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [63, 74, 92, 100]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 92 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0470 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 46, 56, 60, 83, 89, 111, 118, 119, 120, 122, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [120, 122, 142]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.head [60, 83, 89, 111, 118, 119, 120, 122, 142])))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.head [56, 60, 83, 89, 111, 118, 119, 120, 122, 142]))))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 32, 46, 56, 60, 83, 89, 111, 118, 119, 120, 122, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0563 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0565 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0574 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0649 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))) (.atom (List.Mem.head [111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0681 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0699 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0709 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 133)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [133])))) (.atom (List.Mem.head [111, 119, 133]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0710 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0720 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0726 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.head [85, 119])))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0759 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 43, 119] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0791 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0799 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0802 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0827 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 92, 119] →
      Formula.Holds valuation (.atom 92) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0861 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 28, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 26 (List.Mem.tail 28 (List.Mem.tail 43 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0871 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 89, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [89, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0881 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0890 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 74, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [74, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0901 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.and (.atom 74) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 74, 119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0917 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 119 (List.Mem.tail 125 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0946 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 74, 92, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 74, 92, 119, 125, 131]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 44, 74, 92, 119, 125, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0974 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0975 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 32, 35, 38, 39, 41, 43, 59, 66, 73, 76, 77, 93, 117, 119, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 133, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [78, 125, 142] →
      Formula.Holds valuation (.and (.atom 125) (.atom 78)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 78 (List.Mem.head [142]))) (.atom (List.Mem.head [125, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1019 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 23, 40, 41, 42, 43, 54, 56, 63, 81, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1023 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1026 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 63) (.atom 54)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1032 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1036 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1038 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1048 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1052 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 32, 41, 43, 54, 56, 63, 81, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 81, 86, 107, 111, 119, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1060 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1061 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1072 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1091 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1112 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1114 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 19)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1124 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1140 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1148 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1149 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1153 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1159 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1163 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1166 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.head [43, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1207 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 23, 25, 32, 38, 39, 40, 41, 42, 43, 44, 50, 67, 76, 77, 81, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 81 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1211 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1212 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1213 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 39)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.atom 39) (.atom 67)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1223 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1230 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1232 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1263 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1265 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 50) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136])))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1267 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1272 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1274 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 26, 32, 40, 41, 42, 43, 56, 72, 81, 88, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 81 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1275 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1282 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.and (.atom 75) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [119]))))) (.atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1292 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1299 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [72, 88, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1301 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142]))))))))) (.atom (List.Mem.head [25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1306 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 136, 142]))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1310 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 23, 26, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 73, 116, 117, 119, 123, 130, 133] →
      Formula.Holds valuation (.or (.atom 119) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [123, 130, 133])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1311 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1319 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1320 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1325 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1326 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1333 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 51) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [59, 63, 119, 130]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1334 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 63, 119] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 32, 35, 41, 43, 51, 52, 63, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1341 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [23, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1343 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 22 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1349 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.and (.atom 57) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [63, 119, 123])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.head [123])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1372 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 30, 34, 41, 57, 63, 66, 73, 119, 123, 133] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.head [41, 57, 63, 66, 73, 119, 123, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1378 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1383 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1388 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 56, 119, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1391 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.atom 66) (.atom 119)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.head [73, 117, 119, 123, 133]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1392 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 133)) (.atom 117)) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.head [119, 123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1416 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1419 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1423 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 35, 41, 57, 59, 63, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1428 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 59, 66, 73, 117, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1484 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 35, 41, 43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head []))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.head [43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1508 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.head [124, 133]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1518 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1530 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 41, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 46)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.head [56, 86, 93, 99, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1586 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1588 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1598 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 81 (List.Mem.tail 111 (List.Mem.head [126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1599 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1608 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 15, 41, 45, 46, 56, 61, 69, 71, 86, 93, 99, 111, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 93, 99, 111, 119, 133])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [133])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1626 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 108) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.head [111, 119, 123])))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1631 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1632 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1644 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 53, 55, 73, 97, 118, 119] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [73, 97, 118, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1650 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 93 (List.Mem.tail 95 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123, 136]))))))))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.head [71, 76, 93, 95, 96, 108, 111, 119, 123, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1660 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 55, 56, 73, 76, 95, 97, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.tail 97 (List.Mem.tail 118 (List.Mem.head [136]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1665 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 76, 95, 119, 136] →
      Formula.Holds valuation (.or (.and (.and (.atom 53) (.atom 119)) (.atom 56)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 76, 95, 119, 136])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [76, 95, 119, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1674 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 62, 119, 142])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1676 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1678 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.atom 53) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 62, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1694 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1703 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1724 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1731 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1737 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1753 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 77, 119, 128] →
      Formula.Holds valuation (.and (.atom 77) (.atom 38)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.head [119, 128]))) (.atom (List.Mem.head [77, 119, 128])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1755 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1761 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 136) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head []))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1764 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.and (.atom 77) (.atom 38)) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.head [44, 50, 76, 77, 119, 128, 136]))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1766 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1768 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1771 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 36, 41, 43, 53, 68, 75, 76, 77, 113, 118, 119, 128, 136] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.head [53, 68, 75, 76, 77, 113, 118, 119, 128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1785 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 136)) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1793 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 76) (.atom 50)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1813 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 75)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.head [77, 97, 113, 118, 119, 128, 134, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1816 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 68, 75, 77, 118, 119, 128, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [128, 134])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1817 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 68, 75, 77, 113, 119, 128] →
      Formula.Holds valuation (.and (.atom 36) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.head [41, 43, 53, 68, 75, 77, 113, 119, 128])))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.head [43, 53, 68, 75, 77, 113, 119, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1818 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 68, 75, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 75) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))) (.atom (List.Mem.tail 5 (List.Mem.head [68, 75, 77, 119, 128, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1821 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 68)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.head [73, 75, 77, 97, 113, 118, 119, 128, 134, 136]))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1826 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1831 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1832 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.and (.atom 39) (.atom 67)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1833 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 32) (.atom 39)) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1837 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1838 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1840 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1850 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 32, 119] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [32, 119]))) (.atom (List.Mem.head [6, 32, 119]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 32 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1851 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.head [50, 76, 77, 119, 128, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1859 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1866 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1867 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1873 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1875 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 127) (.atom 25)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1883 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1885 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1889 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1898 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.head [43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1911 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 72)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1914 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 32, 41, 43, 71, 72, 88, 119, 123] →
      Formula.Holds valuation (.and (.atom 21) (.atom 23)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [23, 32, 41, 43, 71, 72, 88, 119, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.head [32, 41, 43, 71, 72, 88, 119, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1915 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.atom 32) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1919 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1920 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 88, 119, 128] →
      Formula.Holds valuation (.and (.and (.and (.atom 128) (.atom 32)) (.atom 88)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.tail 119 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [40, 41, 43, 88, 119, 128])))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119, 128])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.head [128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1921 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.and (.atom 88) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.head [118, 119, 123, 128]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 71, 72, 88, 118, 119, 123, 128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1924 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 41, 43, 56, 71, 72, 88, 118, 119, 123] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [88, 118, 119, 123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1937 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1940 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1948 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1952 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1955 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1964 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1975 :
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

theorem literature_SENT_1991 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1993 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1996 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.and (.atom 91) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.head [114, 119, 143])))) (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1998 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2006 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2011 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2015 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2019 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2023 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2058 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2070 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.head [51, 52, 59, 63, 66, 116, 119])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.head [43, 51, 52, 59, 63, 66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2077 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 32, 35, 38, 41, 43, 44, 50, 51, 52, 59, 63, 66, 76, 77, 116, 119, 128, 130, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 130, 136])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2081 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2160 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2163 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2176 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 46)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2213 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 43, 56, 119] →
      Formula.Holds valuation (.and (.atom 31) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [43, 56, 119])) (.atom (List.Mem.tail 31 (List.Mem.head [56, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2220 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 31] →
      Formula.Holds valuation (.and (.atom 31) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [31])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2241 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 37) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [98, 118]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2242 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2248 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 118 (List.Mem.head [])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2249 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2269 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2270 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 115)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [118, 119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2276 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [98, 115, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2277 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 56, 98, 115, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2282 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 46, 56, 61, 73, 81, 109, 110, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.tail 109 (List.Mem.tail 110 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [81, 109, 110, 111, 119, 124, 133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2286 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2288 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2289 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2292 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2295 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2296 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 65)) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [79, 80, 115, 118, 119, 142])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [65, 79, 80, 115, 118, 119, 142]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2300 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 112, 115, 119] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [115, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2307 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2311 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2313 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 119)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 115, 118, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2315 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2319 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 118) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2320 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 38, 39, 41, 43, 44, 50, 56, 65, 76, 77, 79, 80, 98, 101, 115, 118, 119, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 128, 136, 142])))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2325 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2340 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2342 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2364 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.or (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2371 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 56, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 56, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [105, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2379 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2383 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 73, 81, 105, 109, 110, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2385 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 56, 73, 81, 110, 119] →
      Formula.Holds valuation (.atom 24) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.head [26, 41, 56, 73, 81, 110, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2398 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2414 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119, 142] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2436 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2441 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2498 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2523 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2532 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2616 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [71, 90, 93, 99, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2622 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))) (.atom (List.Mem.tail 56 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2628 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2642 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2672 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 119, 133, 142])))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2727 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2729 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2742 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2754 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2780 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119, 142] →
      Formula.Holds valuation (.and (.atom 44) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119, 142]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2789 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133]))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 44, 47, 56, 61, 64, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2795 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.or (.atom 56) (.and (.atom 19) (.atom 44))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.head [61, 64, 119, 133]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2833 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 119, 142] →
      Formula.Holds valuation (.and (.atom 56) (.atom 142)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [61, 119, 142]))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2847 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2909 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2915 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2921 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 71)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.head [93, 119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2931 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2945 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2948 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2956 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 23) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2984 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3002 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3022 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [46, 56, 86, 111, 118, 119, 123]))) (.atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3027 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3031 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [86, 111, 118, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3039 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3042 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 34, 41, 43, 44, 46, 47, 56, 61, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 71, 93, 111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 71, 93, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3054 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3085 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 34 (List.Mem.tail 43 (List.Mem.head [71, 111, 119])))) (.atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 44, 46, 47, 56, 71, 93, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3115 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3121 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3131 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3140 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 18, 32, 41, 43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125] →
      Formula.Holds valuation (.and (.atom 44) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 71, 111, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [41, 43, 44, 56, 61, 64, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3155 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 32, 38, 39, 41, 43, 46, 53, 56, 61, 62, 76, 77, 80, 93, 117, 119, 123, 127, 136, 137, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 80 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.tail 137 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3178 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3179 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 44) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 128, 136, 142]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3185 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3191 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3196 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3201 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3202 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3212 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3214 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3217 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 38, 41, 44, 50, 70, 76, 77, 114, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 114) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 70 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 128, 136])))))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.head [50, 70, 76, 77, 114, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3225 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 43) (.atom 14)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3229 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 32, 38, 39, 41, 43, 68, 75, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 128) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.head [136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3230 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 38, 41, 44, 50, 68, 75, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.head [44, 50, 68, 75, 76, 77, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3236 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3271 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3287 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 101, 115, 118, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 98, 101, 115, 118, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3299 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 105, 106, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3312 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 46, 47, 56, 64, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [64, 71, 93, 111, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 64, 71, 93, 111, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 64, 71, 93, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3319 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3340 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3356 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 47 (List.Mem.head [64, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3361 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [61, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3374 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3384 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 56, 61, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3391 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3404 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head []))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3430 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3440 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3456 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3458 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3465 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [56, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3468 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3478 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3490 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3491 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 43)) (.atom 80)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 64 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 37 (List.Mem.head [43, 56, 64, 80, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3498 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [111, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3511 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.or (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3515 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3523 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3528 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3543 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3544 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3556 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3560 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3563 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3577 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3584 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3588 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 44)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [125, 127, 133, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3599 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 124] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3605 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3611 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3614 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 12, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.or (.atom 119) (.and (.atom 119) (.atom 12))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.tail 87 (List.Mem.head [130])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3617 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 119) (.atom 87)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.tail 87 (List.Mem.head [130]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3620 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 87) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.head [43, 51, 59, 63, 83, 87, 119, 130])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3628 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3645 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.head [61, 82, 103, 111, 119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3650 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3654 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3660 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 82 (List.Mem.tail 103 (List.Mem.head [119, 124]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 82, 103, 111, 119, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3668 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.head [56, 82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.head [43, 56, 82, 103, 119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3676 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.atom 56) (.atom 103)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 82 (List.Mem.head [119, 124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3708 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3714 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 104) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 46, 56, 61, 63, 104, 111, 119, 124, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3725 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3732 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 104, 119, 124] →
      Formula.Holds valuation (.atom 124) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3733 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 43) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 104, 119, 124])))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3750 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 63, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3769 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.head [14, 19, 34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3775 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3785 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3791 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3798 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3843 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 43, 56, 73, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 43, 56, 73, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [73, 105, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3848 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 83, 87, 119] →
      Formula.Holds valuation (.atom 87) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 83 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3878 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [41, 56, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3889 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3895 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3901 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 105, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 105 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3906 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 43, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3930 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3936 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3942 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 28, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [49, 56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3955 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3966 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 34, 119] →
      Formula.Holds valuation (.atom 30) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [34, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3986 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119, 142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4017 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 111, 119, 124, 133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4050 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 61, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [61, 111, 119])))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 61, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4069 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4073 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4089 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4097 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4098 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4105 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4107 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4112 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [71, 85, 93, 111, 119, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 71, 85, 93, 111, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4184 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 4, 13, 14, 18, 26, 32, 41, 43, 46, 54, 56, 61, 63, 81, 86, 93, 99, 107, 111, 119, 124, 126] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.head [119, 124, 126]))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [124, 126])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4185 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 4, 13, 14, 18, 26, 32, 41, 43, 46, 54, 56, 61, 63, 81, 86, 93, 99, 107, 111, 119, 124, 126] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.head [119, 124, 126])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4197 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 38, 41, 43, 44, 50, 56, 58, 61, 73, 76, 77, 81, 109, 111, 117, 119, 126, 128, 130, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 111) (.atom 44)) (.atom 73)) (.atom 26)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 81 (List.Mem.tail 109 (List.Mem.head [117, 119, 126, 128, 130, 136, 142])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 58, 61, 73, 76, 77, 81, 109, 111, 117, 119, 126, 128, 130, 136, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [76, 77, 81, 109, 111, 117, 119, 126, 128, 130, 136, 142])))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.head [38, 41, 43, 44, 50, 56, 58, 61, 73, 76, 77, 81, 109, 111, 117, 119, 126, 128, 130, 136, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4199 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142] →
      Formula.Holds valuation (.and (.atom 117) (.atom 26)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 108 (List.Mem.tail 109 (List.Mem.tail 111 (List.Mem.head [119, 126, 127, 130, 142]))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.head [32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4217 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 56, 61, 75, 108, 111, 117, 119, 127, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [119, 127, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4225 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 56, 61, 75, 108, 111, 117, 119, 127, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [119, 127, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4238 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4240 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 32, 41, 43, 56, 111, 119, 128] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 111, 119, 128])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4242 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 32, 41, 43, 56, 111, 119, 128] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.head [43, 56, 111, 119, 128]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4249 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 41, 43, 56, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4250 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [41, 43, 56, 72, 74, 88, 89, 92, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4258 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 111, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [111, 119]))) (.atom (List.Mem.head [43, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4262 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 41, 43, 56, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 43, 56, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4291 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 108, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 108 (List.Mem.head [])))) (.atom (List.Mem.head [108, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4295 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4296 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4323 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 14, 26, 32, 34, 41, 43, 56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.head [117, 119, 136, 142]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [136, 142])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4329 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 71, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4353 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4383 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4415 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4436 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 81)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.head [81, 119]))) (.atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4446 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4448 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4459 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4466 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 86, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 86, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4467 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 119, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 56, 81, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4489 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.atom 63) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4506 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143])) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.head [43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4517 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 38, 41, 43, 44, 46, 50, 56, 76, 77, 93, 119, 128, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 50, 56, 76, 77, 93, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4518 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 20, 41, 43, 54, 56, 58, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 20 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 114 (List.Mem.head [139, 142, 143]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4527 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 1)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.head [14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142]))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4539 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 38, 41, 43, 44, 46, 50, 56, 76, 77, 93, 119, 128, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 50, 56, 76, 77, 93, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4552 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4580 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4590 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4620 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 89, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [89, 119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4630 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4637 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [119, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4639 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.head [89, 92, 111, 119, 125, 131]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4674 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4687 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124, 126] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 61, 99, 111, 119, 124, 126]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4695 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 69) (.atom 86)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.head [119, 133]))))))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4713 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4745 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 15, 41, 43, 45, 46, 56, 61, 69, 71, 86, 99, 104, 111, 119, 124, 126, 133, 137, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 99 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.head [124, 126, 133, 137, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4755 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 108, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 108 (List.Mem.head [142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4760 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4761 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4772 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 29, 32, 38, 39, 41, 43, 44, 46, 50, 56, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 29 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4774 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4775 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4778 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136])))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4780 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [117, 119, 127, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4785 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 118, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [118, 119])))) (.atom (List.Mem.head [41, 43, 118, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4786 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4789 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 85, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4790 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.head [119, 142])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [142])))))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4791 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4793 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4794 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 19 (List.Mem.head [119]))) (.atom (List.Mem.head [56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4795 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 47) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 64, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4796 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119, 142] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4797 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4798 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4799 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 46, 56, 58, 111, 119] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.head [119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4800 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 126] →
      Formula.Holds valuation (.and (.and (.and (.atom 111) (.atom 119)) (.atom 56)) (.atom 126)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 56 (List.Mem.head [119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [126]))))) (.atom (List.Mem.head [111, 119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4801 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4802 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4803 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 69, 71, 86, 119, 133, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133, 142]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.head [86, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4804 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 56, 140, 142] →
      Formula.Holds valuation (.and (.atom 140) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 8 (List.Mem.tail 56 (List.Mem.head [142])))) (.atom (List.Mem.head [56, 140, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4809 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4810 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4811 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4812 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4883 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4892 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4894 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4917 :
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0105
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0111
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0115
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0121
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0161
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0165
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0176
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0177
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0180
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0184
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0186
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0190
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0204
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0209
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0210
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0216
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0220
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0221
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0224
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0228
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0229
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0235
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0243
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0244
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0248
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0249
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0251
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0256
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0258
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0291
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0297
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0300
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0319
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0326
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0327
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0338
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0340
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0369
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0379
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0408
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0421
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0422
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0450
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0453
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0454
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0455
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0457
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0462
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0470
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0563
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0565
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0574
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0649
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0681
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0699
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0709
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0710
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0720
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0726
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0759
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0791
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0799
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0802
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0827
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0861
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0871
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0881
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0890
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0901
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0917
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0946
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0974
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0975
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1019
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1023
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1026
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1032
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1036
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1038
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1048
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1052
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1060
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1061
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1072
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1091
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1112
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1114
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1124
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1140
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1149
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1153
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1159
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1163
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1166
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1207
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1211
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1212
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1213
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1222
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1223
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1230
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1232
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1263
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1265
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1267
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1272
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1274
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1275
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1282
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1292
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1299
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1301
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1306
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1310
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1311
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1319
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1320
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1325
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1326
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1333
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1334
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1341
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1343
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1349
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1372
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1378
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1383
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1388
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1391
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1392
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1416
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1419
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1423
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1428
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1484
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1508
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1518
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1530
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1586
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1588
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1598
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1599
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1608
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1626
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1631
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1632
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1644
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1650
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1660
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1665
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1674
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1676
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1678
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1694
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1703
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1724
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1731
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1737
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1753
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1755
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1761
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1764
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1766
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1768
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1771
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1785
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1793
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1813
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1816
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1817
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1818
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1821
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1826
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1831
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1832
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1833
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1837
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1838
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1840
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1850
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1851
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1859
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1866
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1867
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1873
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1875
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1883
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1885
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1889
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1898
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1911
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1914
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1915
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1919
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1920
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1921
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1924
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1937
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1940
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1948
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1952
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1955
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1964
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1975
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1978
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1991
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1993
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1996
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1998
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2006
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2011
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2015
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2019
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2023
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2058
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2070
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2077
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2081
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2160
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2163
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2176
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2213
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2220
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2241
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2242
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2248
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2249
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2269
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2270
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2276
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2277
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2282
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2286
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2288
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2289
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2292
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2295
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2296
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2300
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2307
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2311
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2313
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2315
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2319
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2320
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2325
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2340
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2342
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2364
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2371
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2379
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2383
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2385
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2398
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2414
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2436
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2441
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2498
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2523
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2532
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2616
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2622
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2628
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2642
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2672
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2727
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2729
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2742
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2754
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2780
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2789
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2795
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2833
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2847
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2909
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2915
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2921
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2931
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2945
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2948
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2956
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2984
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3002
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3022
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3027
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3031
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3039
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3042
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3054
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3085
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3115
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3121
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3131
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3140
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3152
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3155
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3178
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3179
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3185
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3191
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3196
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3201
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3202
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3212
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3214
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3217
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3225
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3229
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3230
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3236
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3271
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3287
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3299
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3312
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3319
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3340
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3356
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3361
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3374
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3384
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3391
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3404
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3430
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3440
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3456
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3458
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3465
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3468
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3478
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3490
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3491
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3498
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3511
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3515
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3523
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3528
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3543
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3544
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3556
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3560
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3563
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3577
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3584
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3588
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3599
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3605
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3611
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3614
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3617
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3620
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3628
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3645
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3650
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3654
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3660
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3668
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3676
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3708
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3714
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3725
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3732
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3733
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3750
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3769
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3775
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3785
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3791
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3798
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3843
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3848
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3878
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3889
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3895
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3901
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3906
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3930
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3936
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3942
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3955
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3966
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3986
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4017
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4050
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4069
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4073
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4079
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4089
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4097
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4098
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4105
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4107
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4112
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4184
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4185
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4197
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4199
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4217
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4225
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4238
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4240
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4242
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4249
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4250
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4258
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4262
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4291
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4295
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4296
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4323
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4329
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4353
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4383
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4415
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4436
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4446
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4448
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4459
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4466
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4467
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4489
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4506
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4517
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4518
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4527
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4539
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4552
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4580
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4590
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4620
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4630
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4637
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4639
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4674
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4687
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4695
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4713
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4745
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4755
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4760
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4761
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4772
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4774
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4775
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4778
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4780
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4785
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4786
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4789
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4790
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4791
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4793
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4794
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4795
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4796
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4797
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4798
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4799
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4800
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4801
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4802
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4803
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4804
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4809
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4810
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4811
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4812
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4883
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4892
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4894
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4917
