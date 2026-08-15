import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 331 := by
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
      allFacts valuation [41, 43, 46, 56, 72, 94, 97, 103, 115, 123, 146] →
      Formula.Holds valuation (.and (.and (.and (.atom 123) (.atom 56)) (.atom 103)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [146]))))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [72, 94, 97, 103, 115, 123, 146])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.head [115, 123, 146])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [97, 103, 115, 123, 146]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0022 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140, 146] →
      Formula.Holds valuation (.and (.atom 32) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140, 146]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [131, 140, 146])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0041 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 56, 144, 146] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 144)) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 8 (List.Mem.head [144, 146]))) (.atom (List.Mem.tail 8 (List.Mem.tail 56 (List.Mem.head [146]))))) (.atom (List.Mem.head [56, 144, 146])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 46, 56, 72, 94, 97, 103, 115, 123, 146] →
      Formula.Holds valuation (.and (.atom 123) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [146]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 46, 56, 72, 94, 97, 103, 115, 123, 146]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0075 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 46, 56, 72, 77, 78, 94, 97, 103, 115, 121, 123, 131, 140, 146] →
      Formula.Holds valuation (.and (.atom 123) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.tail 121 (List.Mem.head [131, 140, 146]))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [72, 77, 78, 94, 97, 103, 115, 121, 123, 131, 140, 146])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0078 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 77, 78, 123, 132, 140] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.head [132, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140, 146] →
      Formula.Holds valuation (.and (.atom 32) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140, 146]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [131, 140, 146])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 72, 94, 97, 103, 115, 123, 146] →
      Formula.Holds valuation (.and (.atom 115) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.head [123, 146])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [146]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0081 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.tail 14 (List.Mem.head [123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0085 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 46, 56, 72, 77, 78, 94, 97, 103, 115, 121, 123, 131, 140, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.tail 121 (List.Mem.head [131, 140, 146])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0098 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 46, 56, 83, 85, 123, 124] →
      Formula.Holds valuation (.or (.and (.and (.atom 123) (.atom 46)) (.atom 13)) (.and (.and (.atom 123) (.atom 56)) (.atom 124))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 85 (List.Mem.head [124]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.head [56, 83, 85, 123, 124])))))) (.atom (List.Mem.head [19, 32, 46, 56, 83, 85, 123, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0101 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 65, 83, 85, 123, 124] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 83 (List.Mem.tail 85 (List.Mem.head [124])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0105 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 41, 43, 46, 56, 72, 83, 94, 97, 103, 115, 123, 124, 146] →
      Formula.Holds valuation (.or (.and (.and (.atom 123) (.atom 56)) (.atom 124)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [124, 146])))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [72, 83, 94, 97, 103, 115, 123, 124, 146])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head [146])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0107 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 123, 124] →
      Formula.Holds valuation (.or (.and (.and (.and (.and (.atom 123) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 124)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0108 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 123, 124] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [124]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [123, 124]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 123 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0109 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 41, 43, 46, 56, 72, 83, 94, 97, 103, 115, 123, 124, 146] →
      Formula.Holds valuation (.and (.and (.and (.atom 123) (.atom 56)) (.atom 19)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [124, 146])))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [72, 83, 94, 97, 103, 115, 123, 124, 146])))))))) (.atom (List.Mem.tail 13 (List.Mem.head [41, 43, 46, 56, 72, 83, 94, 97, 103, 115, 123, 124, 146])))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head [146]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0113 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 56, 83, 85, 123, 126] →
      Formula.Holds valuation (.and (.atom 126) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 85 (List.Mem.tail 123 (List.Mem.head []))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.head [123, 126]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0123 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 85, 123, 126] →
      Formula.Holds valuation (.and (.and (.atom 46) (.atom 13)) (.atom 126)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [85, 123, 126])))) (.atom (List.Mem.head [32, 46, 85, 123, 126]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 85 (List.Mem.tail 123 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0129 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 70, 83, 123, 124, 141] →
      Formula.Holds valuation (.or (.and (.atom 46) (.atom 13)) (.and (.and (.atom 123) (.atom 46)) (.atom 13))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 70, 83, 123, 124, 141])))) (.atom (List.Mem.head [19, 46, 56, 70, 83, 123, 124, 141]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0131 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 56, 65, 85, 123, 126] →
      Formula.Holds valuation (.atom 126) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 85 (List.Mem.tail 123 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0142 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40, 46, 56, 83, 85, 123] →
      Formula.Holds valuation (.and (.and (.and (.atom 46) (.atom 13)) (.atom 40)) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 83, 85, 123])))))) (.atom (List.Mem.head [32, 34, 40, 46, 56, 83, 85, 123]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [46, 56, 83, 85, 123])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40, 46, 56, 83, 85, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0144 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head []))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0148 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head []))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0149 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40, 85, 126] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 40)) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 85 (List.Mem.head []))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [85, 126])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40, 85, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head []))) (.atom (List.Mem.head [122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0231 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 41, 43, 46, 56, 72, 83, 94, 97, 103, 115, 123, 124, 146] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [124, 146])))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [72, 83, 94, 97, 103, 115, 123, 124, 146])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head [146]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0232 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 70, 83, 123, 124, 141] →
      Formula.Holds valuation (.or (.or (.and (.and (.atom 123) (.atom 46)) (.atom 13)) (.atom 123)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.orLeft (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 70 (List.Mem.tail 83 (List.Mem.head [124, 141])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 70, 83, 123, 124, 141]))))) (.atom (List.Mem.head [19, 46, 56, 70, 83, 123, 124, 141])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0236 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 123]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 123])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0240 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 133] →
      Formula.Holds valuation (.or (.atom 133) (.and (.atom 19) (.atom 8))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0267 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 56, 83, 85, 123, 126] →
      Formula.Holds valuation (.and (.and (.and (.atom 123) (.atom 46)) (.atom 13)) (.atom 126)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 85 (List.Mem.head [126])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [56, 83, 85, 123, 126]))))) (.atom (List.Mem.head [32, 46, 56, 83, 85, 123, 126]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 85 (List.Mem.tail 123 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0269 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 56, 65, 85, 123, 126] →
      Formula.Holds valuation (.and (.atom 32) (.atom 126)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [46, 56, 65, 85, 123, 126]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 85 (List.Mem.tail 123 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0289 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 56, 83, 85, 92, 123] →
      Formula.Holds valuation (.or (.atom 13) (.and (.and (.and (.atom 92) (.atom 123)) (.atom 46)) (.atom 13))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.head [32, 46, 56, 83, 85, 92, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0294 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 56, 83, 85, 92, 123, 126] →
      Formula.Holds valuation (.and (.atom 123) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 85 (List.Mem.tail 92 (List.Mem.head [126]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.head [83, 85, 92, 123, 126]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0362 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 123]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 123])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0386 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 46, 56, 87, 115, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0388 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 46, 56, 87, 115, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0397 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 23, 24, 26, 37, 41, 43, 56, 97, 102, 110, 115, 119, 122, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 97 (List.Mem.tail 102 (List.Mem.tail 110 (List.Mem.tail 115 (List.Mem.tail 119 (List.Mem.tail 122 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0434 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 108, 115, 123, 128, 137] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 108)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 108 (List.Mem.tail 115 (List.Mem.head [128, 137]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 108, 115, 123, 128, 137])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [115, 123, 128, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0472 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 115, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 115 (List.Mem.head [])))) (.atom (List.Mem.head [115, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 123] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0519 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 146] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [146]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0529 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 115, 123, 137] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 137)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 56 (List.Mem.tail 115 (List.Mem.head [137])))) (.atom (List.Mem.head [115, 123, 137]))) (.atom (List.Mem.tail 56 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0530 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 123, 137] →
      Formula.Holds valuation (.and (.atom 123) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [137])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 123, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0540 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 146] →
      Formula.Holds valuation (.atom 146) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0546 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 87, 123] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 87)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.head [87, 123])))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0611 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 123] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0619 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 74, 127] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 74, 127]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0681 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 27, 29, 44, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 29 (List.Mem.tail 44 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0692 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 75, 92, 123] →
      Formula.Holds valuation (.atom 75) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [92, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0701 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 44, 75, 123, 129] →
      Formula.Holds valuation (.atom 75) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [123, 129])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0710 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 75, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [75, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0721 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 75, 123, 129] →
      Formula.Holds valuation (.and (.atom 75) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [123, 129])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 75, 123, 129])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0794 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 56, 79, 82, 115, 123, 129, 146] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [43, 56, 79, 82, 115, 123, 129, 146]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0811 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [79, 129, 146] →
      Formula.Holds valuation (.and (.atom 129) (.atom 79)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 79 (List.Mem.head [146]))) (.atom (List.Mem.head [129, 146])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0838 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 56, 79, 82, 115, 123, 129, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 79 (List.Mem.tail 82 (List.Mem.tail 115 (List.Mem.head [129, 146]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0845 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 89, 111, 115, 123, 146] →
      Formula.Holds valuation (.and (.and (.atom 63) (.atom 54)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [89, 111, 115, 123, 146])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 63, 89, 111, 115, 123, 146]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 115 (List.Mem.head [146])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0853 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 82, 123] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 82, 123])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [82, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0865 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 56, 79, 82, 115, 123, 129, 146] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [79, 82, 115, 123, 129, 146]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0873 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 115, 123] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 123)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 115, 123]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 115 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 115, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0874 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 82, 123] →
      Formula.Holds valuation (.atom 82) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0904 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 72, 97, 123] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [72, 97, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 72, 97, 123])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 72, 97, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0925 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 123]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0927 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 19)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0937 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 123, 137] →
      Formula.Holds valuation (.and (.atom 137) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 123 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 123, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0953 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 115, 123, 128, 137] →
      Formula.Holds valuation (.and (.atom 56) (.atom 128)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 115, 123, 128, 137]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head [137]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0961 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0962 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 123] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0966 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 123, 128] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 123, 128]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0972 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 123, 128] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 123, 128]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0976 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 29, 43, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 29 (List.Mem.tail 43 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0979 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 123, 128] →
      Formula.Holds valuation (.and (.atom 123) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head [128])))) (.atom (List.Mem.head [43, 123, 128])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1020 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 34, 41, 43, 68, 76, 122, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 122 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1024 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 68, 77, 78, 97, 121, 122, 123, 131, 140] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [131, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1025 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 68, 123] →
      Formula.Holds valuation (.atom 68) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1026 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140, 146] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 39)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140, 146]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 77, 78, 97, 121, 123, 131, 140, 146])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [131, 140, 146])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1036 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 68, 77, 78, 97, 121, 122, 123, 131, 140] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [131, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1042 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 68, 77, 78, 97, 121, 122, 123, 131, 140] →
      Formula.Holds valuation (.and (.atom 39) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 68, 77, 78, 97, 121, 122, 123, 131, 140])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [123, 131, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1076 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 77, 78, 97, 121, 123, 131, 132, 140, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [131, 132, 140, 146]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1078 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 77, 78, 123, 132, 140] →
      Formula.Holds valuation (.and (.atom 50) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [77, 78, 123, 132, 140])))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.head [132, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 73, 91, 122, 123] →
      Formula.Holds valuation (.atom 73) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [91, 122, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1087 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 25, 26, 32, 40, 41, 42, 43, 56, 68, 73, 82, 91, 122, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 82 (List.Mem.tail 91 (List.Mem.tail 122 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 82, 123] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 82, 123])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [82, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1095 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 76, 123] →
      Formula.Holds valuation (.and (.atom 76) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [123]))))) (.atom (List.Mem.tail 26 (List.Mem.head [41, 76, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1105 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 123, 128] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 123, 128]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1114 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 34, 41, 43, 68, 76, 122, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [68, 76, 122, 123])))))))) (.atom (List.Mem.head [25, 26, 32, 34, 41, 43, 68, 76, 122, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1119 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 34, 41, 43, 68, 76, 122, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 122 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [43, 68, 76, 122, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1123 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 43, 59, 63, 67, 74, 120, 121, 123, 137] →
      Formula.Holds valuation (.or (.atom 123) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 120 (List.Mem.tail 121 (List.Mem.head [137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1124 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 43, 59, 63, 67, 74, 120, 121, 123, 127, 137] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 120 (List.Mem.tail 121 (List.Mem.head [127, 137])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1133 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 43, 59, 63, 67, 74, 120, 121, 123, 137] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 120 (List.Mem.tail 121 (List.Mem.head [137])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1138 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 67, 120, 123] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 67, 120, 123]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [67, 120, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1139 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 67, 120, 123] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 67, 120, 123]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [67, 120, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1146 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 123, 134] →
      Formula.Holds valuation (.atom 51) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [59, 63, 123, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1147 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 63, 123] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 32, 35, 41, 43, 51, 52, 63, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 123] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [23, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1154 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 123] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 22 (List.Mem.head [123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1160 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 123, 127] →
      Formula.Holds valuation (.and (.atom 57) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [63, 123, 127])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.head [127])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1188 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [125, 136] →
      Formula.Holds valuation (.atom 136) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 125 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1201 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 67, 74, 121, 123, 127, 137] →
      Formula.Holds valuation (.and (.and (.atom 67) (.atom 123)) (.atom 127)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.head [74, 121, 123, 127, 137]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 121 (List.Mem.head [127, 137]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 121 (List.Mem.tail 123 (List.Mem.head [137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1202 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 43, 59, 63, 67, 74, 120, 121, 123, 137] →
      Formula.Holds valuation (.and (.and (.and (.atom 123) (.atom 137)) (.atom 121)) (.atom 74)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 120 (List.Mem.tail 121 (List.Mem.head [137]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 120 (List.Mem.tail 121 (List.Mem.tail 123 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 120 (List.Mem.head [123, 137]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.head [120, 121, 123, 137])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1229 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 123, 128] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 123, 128]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1233 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 35, 41, 57, 59, 63, 67, 74, 121, 123, 127, 137] →
      Formula.Holds valuation (.atom 127) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 121 (List.Mem.tail 123 (List.Mem.head [137])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1238 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 35, 40, 41, 56, 57, 59, 63, 67, 74, 121, 123, 127, 137] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 121 (List.Mem.tail 123 (List.Mem.tail 127 (List.Mem.head []))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1280 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 89, 97, 103, 115, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 89 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1292 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 15, 41, 45, 46, 56, 61, 70, 72, 89, 97, 103, 115, 123, 137] →
      Formula.Holds valuation (.and (.atom 123) (.atom 46)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 89 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [137])))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.head [56, 61, 70, 72, 89, 97, 103, 115, 123, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1348 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 82, 115, 123, 130] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 82, 115, 123, 130])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1350 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 82, 115, 123, 130] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 82, 115, 123, 130]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 82, 115, 123, 130])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1360 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 14, 26, 41, 43, 46, 56, 82, 89, 97, 103, 115, 123, 130] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 82 (List.Mem.tail 89 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [130])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1370 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 15, 41, 45, 46, 56, 61, 70, 72, 89, 97, 103, 115, 123, 137] →
      Formula.Holds valuation (.and (.atom 70) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [72, 89, 97, 103, 115, 123, 137])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 89 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [137])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1383 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 72, 97, 100, 112, 115, 123, 127] →
      Formula.Holds valuation (.and (.atom 112) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 97 (List.Mem.tail 100 (List.Mem.head [115, 123, 127])))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 97 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [127])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1388 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 72, 77, 97, 99, 100, 112, 115, 123, 127, 140] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 99 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [127, 140]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1389 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 62, 72, 77, 97, 99, 100, 112, 115, 123, 127, 140, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 72 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 99 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [127, 140, 146])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1401 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 53, 55, 74, 101, 122, 123] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [74, 101, 122, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1407 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 72, 77, 97, 99, 100, 112, 115, 123, 127, 140] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 123)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 72, 77, 97, 99, 100, 112, 115, 123, 127, 140]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 99 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [127, 140]))))))))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.head [72, 77, 97, 99, 100, 112, 115, 123, 127, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1409 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 72, 77, 97, 99, 100, 112, 115, 123, 127, 140] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 99 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [127, 140])))))))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.head [72, 77, 97, 99, 100, 112, 115, 123, 127, 140]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [53, 56, 72, 77, 97, 99, 100, 112, 115, 123, 127, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1417 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 72, 77, 97, 99, 100, 112, 115, 123, 127, 140] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 99 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [127, 140]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1422 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 77, 99, 123, 140] →
      Formula.Holds valuation (.or (.and (.and (.atom 53) (.atom 123)) (.atom 56)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 77, 99, 123, 140])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 99 (List.Mem.head [140]))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [77, 99, 123, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1431 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 123, 146] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 123)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 62, 123, 146])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [146])))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 123, 146]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1433 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 123, 146] →
      Formula.Holds valuation (.and (.atom 32) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 123, 146])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [146]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1435 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 123, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [146])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 70, 72, 89, 123, 137] →
      Formula.Holds valuation (.and (.atom 70) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [72, 89, 123, 137])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 89 (List.Mem.head [137]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1503 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 78, 123, 132] →
      Formula.Holds valuation (.and (.atom 78) (.atom 38)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.head [123, 132]))) (.atom (List.Mem.head [78, 123, 132])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1511 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 77, 78, 123, 132, 140] →
      Formula.Holds valuation (.and (.atom 140) (.atom 77)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 123 (List.Mem.tail 132 (List.Mem.head []))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [78, 123, 132, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1514 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 77, 78, 123, 132, 140] →
      Formula.Holds valuation (.and (.and (.and (.atom 78) (.atom 38)) (.atom 77)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 77 (List.Mem.head [123, 132, 140])))))) (.atom (List.Mem.head [44, 50, 77, 78, 123, 132, 140]))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [78, 123, 132, 140])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.head [132, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1516 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 77, 78, 123, 132, 140] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.head [132, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1518 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 38, 41, 44, 50, 69, 76, 77, 78, 123, 132, 140] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 69 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.head [132, 140])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1528 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 77, 78, 123, 132, 140] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 50)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [78, 123, 132, 140]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [77, 78, 123, 132, 140]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.head [132, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1548 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 38, 41, 44, 50, 69, 76, 77, 78, 123, 132, 140] →
      Formula.Holds valuation (.and (.and (.atom 132) (.atom 76)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 69 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 123 (List.Mem.head [140])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 69 (List.Mem.head [77, 78, 123, 132, 140]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 69 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.head [132, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1551 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 69, 76, 78, 122, 123, 132, 138] →
      Formula.Holds valuation (.and (.atom 138) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 69 (List.Mem.tail 76 (List.Mem.tail 78 (List.Mem.tail 122 (List.Mem.tail 123 (List.Mem.tail 132 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 69 (List.Mem.tail 76 (List.Mem.tail 78 (List.Mem.tail 122 (List.Mem.head [132, 138])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1552 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 69, 76, 78, 117, 123, 132] →
      Formula.Holds valuation (.and (.atom 36) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.head [41, 43, 53, 69, 76, 78, 117, 123, 132])))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.head [43, 53, 69, 76, 78, 117, 123, 132]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1556 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 53, 55, 56, 69, 74, 76, 78, 101, 122, 123, 132, 138, 140] →
      Formula.Holds valuation (.and (.and (.atom 132) (.atom 69)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 78 (List.Mem.tail 101 (List.Mem.tail 122 (List.Mem.tail 123 (List.Mem.head [138, 140])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.head [74, 76, 78, 101, 122, 123, 132, 138, 140])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 78 (List.Mem.tail 101 (List.Mem.tail 122 (List.Mem.head [132, 138, 140]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1559 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 34, 41, 43, 68, 76, 122, 123] →
      Formula.Holds valuation (.and (.atom 32) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [34, 41, 43, 68, 76, 122, 123]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 122 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1566 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 77, 78, 97, 121, 123, 131, 132, 140, 146] →
      Formula.Holds valuation (.and (.and (.and (.atom 32) (.atom 39)) (.atom 123)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 44, 50, 77, 78, 97, 121, 123, 131, 132, 140, 146]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 44, 50, 77, 78, 97, 121, 123, 131, 132, 140, 146])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [131, 132, 140, 146]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 50, 77, 78, 97, 121, 123, 131, 132, 140, 146])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 32, 38, 39, 41, 43, 72, 73, 77, 78, 91, 97, 121, 122, 123, 127, 131, 140] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 72, 73, 77, 78, 91, 97, 121, 122, 123, 127, 131, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1571 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 68, 77, 78, 97, 121, 122, 123, 131, 140] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [131, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1573 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140, 146] →
      Formula.Holds valuation (.and (.atom 131) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.tail 123 (List.Mem.head [140, 146]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [131, 140, 146])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1576 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 68, 77, 78, 97, 121, 122, 123, 131, 140] →
      Formula.Holds valuation (.and (.atom 39) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 68, 77, 78, 97, 121, 122, 123, 131, 140])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [123, 131, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1583 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 32, 123] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [32, 123]))) (.atom (List.Mem.head [6, 32, 123]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 32 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1592 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 77, 106, 123, 140] →
      Formula.Holds valuation (.atom 106) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.head [123, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1608 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 68, 77, 78, 97, 121, 123, 131, 140, 146] →
      Formula.Holds valuation (.and (.and (.atom 131) (.atom 25)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.tail 123 (List.Mem.head [140, 146]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 68, 77, 78, 97, 121, 123, 131, 140, 146])))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [131, 140, 146])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1614 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 43, 59, 63, 67, 74, 120, 121, 123, 137] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 120 (List.Mem.tail 121 (List.Mem.head [137])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1615 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 67, 120, 123] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 67, 120, 123]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [67, 120, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1620 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 43, 59, 63, 67, 74, 120, 121, 123, 137] →
      Formula.Holds valuation (.and (.atom 123) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 74 (List.Mem.tail 120 (List.Mem.tail 121 (List.Mem.head [137]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.head [43, 59, 63, 67, 74, 120, 121, 123, 137]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1633 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 73, 91, 122, 123] →
      Formula.Holds valuation (.and (.atom 91) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.head [122, 123])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [91, 122, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1636 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 32, 41, 43, 72, 73, 91, 123, 127] →
      Formula.Holds valuation (.and (.atom 21) (.atom 23)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [23, 32, 41, 43, 72, 73, 91, 123, 127]))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.head [32, 41, 43, 72, 73, 91, 123, 127])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1637 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 72, 73, 91, 122, 123, 127, 132] →
      Formula.Holds valuation (.atom 32) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [40, 41, 43, 56, 72, 73, 91, 122, 123, 127, 132]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1641 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 73, 91, 122, 123] →
      Formula.Holds valuation (.and (.atom 91) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.head [122, 123])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 91 (List.Mem.tail 122 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1642 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 91, 123, 132] →
      Formula.Holds valuation (.and (.and (.and (.atom 132) (.atom 32)) (.atom 91)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 91 (List.Mem.tail 123 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [40, 41, 43, 91, 123, 132])))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [123, 132])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 91 (List.Mem.head [132])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1643 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 72, 73, 91, 122, 123, 127, 132] →
      Formula.Holds valuation (.and (.atom 91) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.head [122, 123, 127, 132]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 72, 73, 91, 122, 123, 127, 132])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1657 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 77, 78, 122, 123, 140] →
      Formula.Holds valuation (.and (.atom 123) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 122 (List.Mem.head [140]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [77, 78, 122, 123, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 17, 26, 41, 43, 71, 77, 78, 118, 121, 122, 123, 140] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 17 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 71 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 118 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1671 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 17, 26, 41, 43, 71, 77, 78, 118, 121, 122, 123, 140] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 17 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 71 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 118 (List.Mem.tail 121 (List.Mem.head [123, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1683 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 71, 78, 95, 118, 121, 122, 123, 147] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 71 (List.Mem.tail 78 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [147]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1694 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 71, 78, 95, 118, 121, 122, 123, 147] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 71 (List.Mem.tail 78 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [147]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1697 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 71, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 71 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1704 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 78, 95, 118, 123, 147] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 78 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [147]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1707 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 71, 78, 95, 118, 121, 122, 123, 147] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 71 (List.Mem.tail 78 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [147]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1712 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 71, 78, 95, 118, 121, 122, 123, 147] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 71 (List.Mem.tail 78 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [147]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1716 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 71, 78, 95, 118, 121, 122, 123, 147] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 71 (List.Mem.tail 78 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [147]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1720 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 71, 78, 95, 118, 121, 122, 123, 147] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 71 (List.Mem.tail 78 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 121 (List.Mem.tail 122 (List.Mem.head [147]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1724 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 71, 78, 95, 118, 121, 122, 123, 147] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 71 (List.Mem.tail 78 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 121 (List.Mem.head [123, 147])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1757 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 123, 134] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1772 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 59, 63, 67, 120, 123] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 120 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.head [51, 52, 59, 63, 67, 120, 123])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.head [43, 51, 52, 59, 63, 67, 120, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1779 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 32, 35, 41, 43, 51, 52, 59, 63, 123, 134, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [134, 146]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1862 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 123, 134] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1865 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 31, 32, 41, 43, 51, 56, 59, 63, 123, 134, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 31 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [134, 146])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1879 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 115, 123, 128, 137] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 46)) (.atom 128)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 115, 123, 128, 137]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 115, 123, 128, 137]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head [137]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1916 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 43, 56, 123] →
      Formula.Holds valuation (.and (.atom 31) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [43, 56, 123])) (.atom (List.Mem.tail 31 (List.Mem.head [56, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1923 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 31] →
      Formula.Holds valuation (.and (.atom 31) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [31])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1942 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 102, 122] →
      Formula.Holds valuation (.atom 37) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [102, 122]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1949 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 122, 123] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 122 (List.Mem.head [])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [122, 123]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 122, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1950 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 122, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [122, 123])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 122, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1968 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 66, 80, 102, 116, 119, 122, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 66 (List.Mem.tail 80 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.tail 122 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1969 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 16, 37, 41, 43, 56, 102, 116, 119, 122, 123] →
      Formula.Holds valuation (.and (.atom 122) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [123])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.head [122, 123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1975 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 102, 119, 122, 123] →
      Formula.Holds valuation (.and (.atom 122) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 119 (List.Mem.head [123])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [102, 119, 122, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1976 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 102, 119, 122, 123] →
      Formula.Holds valuation (.and (.atom 122) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 119 (List.Mem.head [123])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 56, 102, 119, 122, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1982 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 16, 37, 41, 43, 56, 102, 116, 119, 122, 123] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1985 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 66, 80, 81, 119, 122, 123, 146] →
      Formula.Holds valuation (.atom 80) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 66 (List.Mem.head [81, 119, 122, 123, 146]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1988 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 66, 80, 81, 119, 122, 123, 146] →
      Formula.Holds valuation (.atom 80) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 66 (List.Mem.head [81, 119, 122, 123, 146]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1993 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 102, 116, 119, 123] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.head [119, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2003 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 66, 80, 81, 119, 122, 123, 146] →
      Formula.Holds valuation (.atom 80) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 66 (List.Mem.head [81, 119, 122, 123, 146]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2005 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 66, 80, 81, 119, 122, 123, 146] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 122) (.atom 80)) (.atom 123)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 66 (List.Mem.tail 80 (List.Mem.tail 81 (List.Mem.tail 119 (List.Mem.head [123, 146]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 66 (List.Mem.head [81, 119, 122, 123, 146]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 66 (List.Mem.tail 80 (List.Mem.tail 81 (List.Mem.tail 119 (List.Mem.tail 122 (List.Mem.head [146]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 66, 80, 81, 119, 122, 123, 146])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.head [43, 56, 66, 80, 81, 119, 122, 123, 146])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2007 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 102, 119, 122, 123] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 119 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2011 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 16, 37, 41, 43, 56, 102, 116, 119, 122, 123] →
      Formula.Holds valuation (.and (.and (.atom 122) (.atom 123)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [123])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.tail 122 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 56, 102, 116, 119, 122, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2012 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 16, 37, 41, 43, 56, 102, 116, 119, 122, 123] →
      Formula.Holds valuation (.and (.atom 122) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [123])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.tail 122 (List.Mem.head []))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2017 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 16, 37, 41, 43, 56, 102, 116, 119, 122, 123] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2032 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 66, 80, 81, 119, 122, 123, 146] →
      Formula.Holds valuation (.atom 80) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 66 (List.Mem.head [81, 119, 122, 123, 146]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2034 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 16, 37, 41, 43, 56, 102, 116, 119, 122, 123] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2056 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 82, 97, 109, 110, 115, 123] →
      Formula.Holds valuation (.or (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.head [24, 26, 41, 43, 56, 82, 97, 109, 110, 115, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2063 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 56, 109, 123] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 56, 109, 123])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [109, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2071 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 74, 82, 113, 123] →
      Formula.Holds valuation (.and (.atom 23) (.atom 113)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 74, 82, 113, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 74 (List.Mem.tail 82 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2075 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 82, 97, 109, 110, 115, 123] →
      Formula.Holds valuation (.and (.atom 23) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [24, 26, 41, 43, 56, 82, 97, 109, 110, 115, 123])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 56, 82, 97, 109, 110, 115, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 82, 97, 109, 110, 115, 123] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [24, 26, 41, 43, 56, 82, 97, 109, 110, 115, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2126 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 146] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 146])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2131 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2227 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 146] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 146])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2236 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 123, 137] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 123, 137]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2320 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 72, 94, 97, 103, 115, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [72, 94, 97, 103, 115, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2326 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 108, 123, 128] →
      Formula.Holds valuation (.and (.atom 128) (.atom 108)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 108 (List.Mem.tail 123 (List.Mem.head []))))) (.atom (List.Mem.tail 56 (List.Mem.head [123, 128]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2332 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123])))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 123])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2346 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2412 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 123]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2429 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 43, 56, 64, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 123]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 64, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2441 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2464 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 72, 97, 123, 146] →
      Formula.Holds valuation (.and (.atom 44) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 72, 97, 123, 146]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 72, 97, 123, 146])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2473 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 123, 137] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [137])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 123, 137]))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 44, 47, 56, 61, 64, 123, 137]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2479 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.or (.atom 56) (.and (.atom 19) (.atom 44))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2517 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 123, 146] →
      Formula.Holds valuation (.and (.atom 56) (.atom 146)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [61, 123, 146]))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 123 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2531 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [123]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2597 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 61, 72, 97, 115, 123] →
      Formula.Holds valuation (.and (.and (.and (.atom 123) (.atom 56)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 72 (List.Mem.tail 97 (List.Mem.tail 115 (List.Mem.head []))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 72, 97, 115, 123]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 72, 97, 115, 123])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 72, 97, 115, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2603 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 61, 72, 97, 115, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 72 (List.Mem.tail 97 (List.Mem.tail 115 (List.Mem.head []))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 72, 97, 115, 123])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 72, 97, 123] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 72)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [72, 97, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.head [97, 123])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 72, 97, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2619 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 27, 32, 38, 39, 41, 43, 44, 56, 77, 78, 97, 110, 115, 121, 123, 131, 140] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [77, 78, 97, 110, 115, 121, 123, 131, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2635 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140] →
      Formula.Holds valuation (.atom 121) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.head [123, 131, 140])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2636 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [131, 140, 146]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2644 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 97, 110, 115, 123] →
      Formula.Holds valuation (.and (.and (.atom 23) (.atom 123)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [24, 26, 41, 43, 56, 97, 110, 115, 123])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 97 (List.Mem.tail 110 (List.Mem.tail 115 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 97, 110, 115, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2666 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 115, 123] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 115 (List.Mem.head [])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [115, 123]))))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 115, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2674 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 34, 41, 43, 56, 72, 77, 78, 115, 122, 123, 140] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.head [43, 56, 72, 77, 78, 115, 122, 123, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 72, 115, 123] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 72, 115, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2704 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 89, 115, 122, 123, 127] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [46, 56, 87, 89, 115, 122, 123, 127]))) (.atom (List.Mem.head [43, 46, 56, 87, 89, 115, 122, 123, 127])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2709 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 89, 115, 122, 123, 127] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 87, 89, 115, 122, 123, 127]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2713 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 89, 115, 122, 123, 127] →
      Formula.Holds valuation (.and (.atom 123) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 89 (List.Mem.tail 115 (List.Mem.tail 122 (List.Mem.head [127]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [89, 115, 122, 123, 127]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2719 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 41, 43, 46, 56, 87, 89, 115, 122, 123, 127, 128] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 12)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [87, 89, 115, 122, 123, 127, 128])))))) (.atom (List.Mem.head [41, 43, 46, 56, 87, 89, 115, 122, 123, 127, 128]))) (.atom (List.Mem.tail 12 (List.Mem.head [43, 46, 56, 87, 89, 115, 122, 123, 127, 128]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2721 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 89, 115, 122, 123, 127] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 87, 89, 115, 122, 123, 127]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2736 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 72, 97, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [72, 97, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2767 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 72, 115, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 34 (List.Mem.tail 43 (List.Mem.head [72, 115, 123])))) (.atom (List.Mem.tail 34 (List.Mem.head [56, 72, 115, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2770 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 34, 41, 43, 44, 46, 47, 56, 72, 97, 115, 123, 146] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 72, 97, 115, 123, 146]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2796 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 74, 127] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 74, 127]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2811 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 115, 123] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 123)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 115, 123]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 115 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 115, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2817 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 123] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2861 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 77, 78, 122, 123, 140] →
      Formula.Holds valuation (.and (.atom 123) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 122 (List.Mem.head [140]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 77, 78, 122, 123, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2867 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 46, 56, 87, 115, 117, 123] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.head [123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 77, 78, 97, 121, 123, 131, 140, 146] →
      Formula.Holds valuation (.and (.atom 123) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.head [131, 140, 146])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.head [123, 131, 140, 146]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2877 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 46, 56, 87, 115, 117, 123] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.head [123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2878 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2889 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 32, 38, 39, 41, 43, 69, 76, 77, 78, 97, 121, 123, 131, 132, 140, 146] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 69 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 97 (List.Mem.tail 121 (List.Mem.tail 123 (List.Mem.tail 131 (List.Mem.head [140, 146])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2896 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 123, 146] →
      Formula.Holds valuation (.and (.atom 123) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [146]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 123, 146]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2931 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 87, 115, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [87, 115, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 16, 32, 37, 41, 43, 51, 56, 59, 63, 102, 105, 119, 122, 123, 134] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 32 (List.Mem.tail 37 (List.Mem.head [43, 51, 56, 59, 63, 102, 105, 119, 122, 123, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2971 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 46, 47, 56, 64, 72, 97, 115, 123] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [64, 72, 97, 115, 123]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 64, 72, 97, 115, 123]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 64, 72, 97, 115, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2978 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 123, 137] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 137)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [137])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 123 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 123, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2999 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 46, 56, 89, 102, 115, 119, 122, 123, 127] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 89, 102, 115, 119, 122, 123, 127])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3012 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 115, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 47 (List.Mem.head [64, 115, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3017 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [61, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3029 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 87, 115, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [87, 115, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3038 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123])))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 56, 61, 64, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3042 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 123])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3054 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 123, 137] →
      Formula.Holds valuation (.and (.atom 137) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 123 (List.Mem.head []))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 123, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 81, 123, 127, 146] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [81, 123, 127, 146]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 72, 115, 123] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 72, 115, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3115 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 123])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [56, 64, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3118 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 81, 123, 127, 146] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [81, 123, 127, 146]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3128 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3140 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 81, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 81, 123]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 81, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3148 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 108, 115, 123, 128, 137] →
      Formula.Holds valuation (.atom 108) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [115, 123, 128, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3165 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 123, 141, 146] →
      Formula.Holds valuation (.atom 141) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 123 (List.Mem.head [146]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3178 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41, 43, 56, 146] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [43, 56, 146])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3193 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3194 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 29, 41, 43, 56, 123, 146] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 29 (List.Mem.tail 41 (List.Mem.head [56, 123, 146]))))) (.atom (List.Mem.tail 1 (List.Mem.tail 29 (List.Mem.head [43, 56, 123, 146])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3209 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41, 43, 56, 146] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [43, 56, 146])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3216 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 87, 115, 123] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [87, 115, 123]))))) (.atom (List.Mem.head [46, 56, 87, 115, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3240 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 72, 87, 94, 97, 103, 115, 123, 146] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 46, 56, 72, 87, 94, 97, 103, 115, 123, 146])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3255 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 128] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [128]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3261 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 108, 123, 128] →
      Formula.Holds valuation (.atom 108) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [123, 128])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3267 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 123] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3273 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 85, 90, 123, 134] →
      Formula.Holds valuation (.and (.atom 123) (.atom 90)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 85 (List.Mem.tail 90 (List.Mem.head [134]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 85 (List.Mem.head [123, 134])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3284 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 115, 123, 128] →
      Formula.Holds valuation (.and (.atom 115) (.atom 128)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [123, 128])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3304 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 84, 107, 115, 123, 128] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.head [61, 84, 107, 115, 123, 128])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3313 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 123] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3319 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 61, 84, 107, 115, 123, 128] →
      Formula.Holds valuation (.and (.atom 115) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 84 (List.Mem.tail 107 (List.Mem.head [123, 128]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 84, 107, 115, 123, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3327 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 33, 41, 43, 46, 56, 61, 84, 107, 115, 123, 128] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 84, 107, 115, 123, 128]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.head [46, 56, 61, 84, 107, 115, 123, 128])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 33 (List.Mem.head [43, 46, 56, 61, 84, 107, 115, 123, 128])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3335 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 84, 107, 123, 128] →
      Formula.Holds valuation (.and (.atom 56) (.atom 107)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [84, 107, 123, 128]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 84 (List.Mem.head [123, 128]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3367 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 108, 115, 123, 128, 137] →
      Formula.Holds valuation (.and (.atom 128) (.atom 108)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 108 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head [137])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [115, 123, 128, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3384 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 115, 123, 128, 137] →
      Formula.Holds valuation (.and (.atom 56) (.atom 128)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 115, 123, 128, 137]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head [137]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3390 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 108, 123, 128] →
      Formula.Holds valuation (.atom 128) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 108 (List.Mem.tail 123 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3391 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 108, 123, 128] →
      Formula.Holds valuation (.and (.atom 43) (.atom 128)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 108, 123, 128])))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 108 (List.Mem.tail 123 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 123]))))))))) (.atom (List.Mem.head [14, 19, 34, 41, 43, 44, 56, 61, 64, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 87, 115, 123] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [87, 115, 123]))))) (.atom (List.Mem.head [46, 56, 87, 115, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3457 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 72, 97, 123] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 97 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [72, 97, 123]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 72, 97, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3463 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [123]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3470 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 86, 123] →
      Formula.Holds valuation (.atom 86) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3516 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 43, 56, 74, 109, 123] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 43, 56, 74, 109, 123])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [74, 109, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3551 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 56, 123] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [41, 56, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3562 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 76, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.head [41, 76, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3568 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 89, 97, 103, 115, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 89 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3574 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 97, 109, 110, 115, 123] →
      Formula.Holds valuation (.and (.atom 23) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [24, 26, 41, 43, 56, 97, 109, 110, 115, 123])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 110 (List.Mem.tail 115 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3579 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 43, 56, 123] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3603 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [125, 136] →
      Formula.Holds valuation (.atom 136) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 125 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 123] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3615 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 28, 49, 56, 74, 127] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [49, 56, 74, 127]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3630 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 123, 137] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 123 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3647 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 34, 123] →
      Formula.Holds valuation (.atom 30) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [34, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 48, 56, 61, 107, 115, 123, 125, 128, 137] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [46, 48, 56, 61, 107, 115, 123, 125, 128, 137]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3673 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 123, 146] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [123, 146]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3731 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 61, 115, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [61, 115, 123])))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 61, 115, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3750 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 103, 115, 123, 128] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head [128])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3754 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 89, 97, 103, 115, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 89 (List.Mem.tail 97 (List.Mem.tail 103 (List.Mem.tail 115 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3777 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 97, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 97 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [97, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3778 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 72, 87, 97, 115, 123, 127] →
      Formula.Holds valuation (.and (.atom 123) (.atom 127)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 87 (List.Mem.tail 97 (List.Mem.tail 115 (List.Mem.head [127])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 87 (List.Mem.tail 97 (List.Mem.tail 115 (List.Mem.tail 123 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3785 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 72, 87, 97, 115, 123, 127] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 87 (List.Mem.tail 97 (List.Mem.tail 115 (List.Mem.head [127]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3787 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 72, 87, 97, 115, 123, 127] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 87 (List.Mem.tail 97 (List.Mem.tail 115 (List.Mem.head [127]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3792 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 72, 87, 97, 115, 123, 127] →
      Formula.Holds valuation (.and (.and (.atom 123) (.atom 56)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 87 (List.Mem.tail 97 (List.Mem.tail 115 (List.Mem.head [127])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [72, 87, 97, 115, 123, 127])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 72, 87, 97, 115, 123, 127]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3819 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 86, 87, 97, 115, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 56, 86, 87, 97, 115, 123])))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 44, 46, 56, 86, 87, 97, 115, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3851 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 72, 87, 89, 115, 122, 123, 127] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 46, 56, 61, 72, 87, 89, 115, 122, 123, 127])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 112, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 112 (List.Mem.head [])))) (.atom (List.Mem.head [112, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3876 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 76, 112, 121, 123, 131] →
      Formula.Holds valuation (.and (.atom 32) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 76, 112, 121, 123, 131])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 76 (List.Mem.tail 112 (List.Mem.tail 121 (List.Mem.head [131]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3877 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 76, 112, 121, 123, 131] →
      Formula.Holds valuation (.and (.atom 32) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 76, 112, 121, 123, 131])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 76 (List.Mem.tail 112 (List.Mem.tail 121 (List.Mem.head [131]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3904 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 14, 26, 32, 34, 41, 43, 56, 61, 72, 77, 78, 87, 115, 121, 123, 140, 146] →
      Formula.Holds valuation (.and (.and (.atom 115) (.atom 123)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 72 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 87 (List.Mem.head [121, 123, 140, 146]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 72 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.tail 121 (List.Mem.head [140, 146])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [56, 61, 72, 77, 78, 87, 115, 121, 123, 140, 146])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3910 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 72, 87, 115, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 87)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 87 (List.Mem.tail 115 (List.Mem.head [])))))) (.atom (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [115, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3934 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 71, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 71 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3964 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 87, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 87)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4017 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 82, 123] →
      Formula.Holds valuation (.and (.atom 56) (.atom 82)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.head [82, 123]))) (.atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4027 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 56, 79, 82, 115, 123, 129, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 79 (List.Mem.tail 82 (List.Mem.tail 115 (List.Mem.head [129, 146]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4029 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 115, 123] →
      Formula.Holds valuation (.and (.atom 32) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 115, 123]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 115 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4040 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 74, 82, 113, 123] →
      Formula.Holds valuation (.and (.atom 23) (.atom 113)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 74, 82, 113, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 74 (List.Mem.tail 82 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4047 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 82, 89, 123] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 82, 89, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4070 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 89, 111, 115, 123, 146] →
      Formula.Holds valuation (.and (.atom 63) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [89, 111, 115, 123, 146])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 115 (List.Mem.head [146])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 41, 43, 54, 56, 63, 89, 111, 115, 123, 143, 146] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 115 (List.Mem.head [143, 146])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4097 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 89, 111, 115, 123, 146] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 1)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 89, 111, 115, 123, 146]))))))) (.atom (List.Mem.head [14, 41, 43, 54, 56, 63, 89, 111, 115, 123, 146]))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 89, 111, 115, 123, 146])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4120 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 89, 115, 123, 134, 146] →
      Formula.Holds valuation (.and (.atom 123) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 89 (List.Mem.tail 115 (List.Mem.head [134, 146]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 89, 115, 123, 134, 146]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4146 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 46, 56, 58, 61, 89, 115, 123, 134] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 89 (List.Mem.tail 115 (List.Mem.head [134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4156 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 46, 56, 58, 61, 89, 115, 123, 134] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 89 (List.Mem.tail 115 (List.Mem.head [134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4193 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 73, 75, 91, 92, 96, 115, 123, 129, 135] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 92 (List.Mem.tail 96 (List.Mem.tail 115 (List.Mem.head [129, 135])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4202 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 73, 75, 91, 92, 96, 115, 123, 129, 135] →
      Formula.Holds valuation (.and (.atom 91) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.head [92, 96, 115, 123, 129, 135]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 92 (List.Mem.tail 96 (List.Mem.tail 115 (List.Mem.head [129, 135]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4230 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 73, 75, 91, 92, 96, 115, 123, 129, 135] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 73, 75, 91, 92, 96, 115, 123, 129, 135]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4237 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 123, 141, 146] →
      Formula.Holds valuation (.atom 141) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 123 (List.Mem.head [146]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4257 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 70, 72, 89, 123, 137] →
      Formula.Holds valuation (.and (.and (.atom 70) (.atom 89)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [72, 89, 123, 137])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.head [123, 137]))))))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 89 (List.Mem.head [137]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4268 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 123, 141, 146] →
      Formula.Holds valuation (.atom 141) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 123 (List.Mem.head [146]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4318 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 89, 115, 123, 134, 146] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 89, 115, 123, 134, 146])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4435 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 89, 111, 115, 123, 146] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.head [123, 146])))))))))))
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0078
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0079
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0081
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0085
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0098
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0101
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0105
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0107
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0108
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0109
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0113
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0123
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0129
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0131
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0142
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0144
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0149
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0222
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0231
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0232
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0236
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0240
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0267
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0269
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0289
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0294
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0362
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0386
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0388
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0397
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0434
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0472
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0519
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0529
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0530
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0540
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0546
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0611
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0619
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0681
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0692
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0701
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0710
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0721
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0794
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0811
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0838
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0845
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0853
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0865
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0873
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0874
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0904
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0925
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0927
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0937
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0953
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0961
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0962
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0966
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0972
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0976
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0979
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1020
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1024
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1025
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1026
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1036
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1042
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1076
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1078
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1087
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1095
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1105
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1114
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1119
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1123
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1124
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1133
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1138
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1139
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1146
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1147
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1152
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1154
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1160
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1188
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1201
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1202
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1229
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1233
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1238
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1280
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1292
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1348
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1350
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1360
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1370
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1383
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1388
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1389
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1401
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1407
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1409
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1417
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1422
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1431
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1433
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1435
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1503
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1511
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1514
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1516
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1518
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1528
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1548
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1551
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1552
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1556
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1559
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1566
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1571
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1573
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1576
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1583
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1592
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1608
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1614
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1615
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1620
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1633
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1636
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1637
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1641
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1642
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1643
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1657
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1671
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1683
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1694
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1697
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1704
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1707
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1712
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1716
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1720
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1724
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1757
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1772
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1779
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1862
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1865
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1879
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1916
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1923
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1942
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1949
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1950
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1968
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1969
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1975
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1976
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1982
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1985
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1988
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1993
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2003
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2005
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2007
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2011
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2012
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2017
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2032
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2034
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2056
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2063
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2071
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2075
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2126
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2131
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2227
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2236
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2320
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2326
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2332
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2346
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2412
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2429
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2441
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2464
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2473
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2479
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2517
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2531
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2597
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2603
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2619
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2635
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2636
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2644
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2666
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2674
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2704
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2709
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2713
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2719
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2721
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2736
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2767
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2770
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2796
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2811
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2817
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2861
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2867
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2877
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2878
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2889
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2896
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2931
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2971
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2978
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2999
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3012
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3017
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3029
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3038
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3042
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3054
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3106
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3115
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3118
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3128
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3140
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3165
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3178
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3193
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3194
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3205
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3209
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3216
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3240
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3255
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3261
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3267
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3273
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3284
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3304
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3313
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3319
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3327
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3335
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3367
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3384
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3390
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3391
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3457
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3463
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3470
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3516
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3551
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3562
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3568
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3574
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3579
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3603
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3615
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3630
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3647
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3673
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3731
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3750
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3754
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3777
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3778
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3785
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3787
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3792
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3819
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3851
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3876
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3877
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3904
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3910
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3934
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3964
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4017
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4027
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4029
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4040
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4047
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4070
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4097
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4120
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4146
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4156
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4193
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4202
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4230
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4237
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4257
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4268
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4318
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4435
