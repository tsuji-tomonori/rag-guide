import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 534 := by
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

theorem literature_SENT_0124 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 43, 111] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [111])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0125 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.atom 119) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [120, 122])))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.head [94, 118, 119, 120, 122]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.or (.and (.and (.atom 119) (.atom 56)) (.atom 120)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [122])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0145 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.and (.atom 119) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [122])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 119 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0175 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [83, 119, 122])))) (.atom (List.Mem.head [32, 46, 83, 119, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0177 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.or (.atom 122) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 119 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0201 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 89, 111, 118, 119] →
      Formula.Holds valuation (.atom 13) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.head [19, 46, 56, 89, 111, 118, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0208 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 89, 111, 118, 119] →
      Formula.Holds valuation (.or (.atom 119) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 89 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.and (.atom 46) (.atom 13)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 77, 83, 94, 118, 119, 120, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122])))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [46, 56, 77, 83, 94, 118, 119, 120, 122]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0225 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 77, 83, 94, 118, 119, 120, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0233 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [120, 122]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0254 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.or (.atom 119) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [120, 122])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0273 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.or (.and (.and (.atom 119) (.atom 56)) (.atom 120)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [120, 122])))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.head [77, 83, 94, 118, 119, 120, 122])))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [122])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0285 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [120, 122]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0287 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [120, 122])))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.head [77, 83, 94, 118, 119, 120, 122])))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 77, 83, 94, 118, 119, 120, 122]))))))))) (.atom (List.Mem.tail 11 (List.Mem.head [19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122])))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [122]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 37, 40, 46, 56, 77, 83, 94, 98, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.and (.atom 118) (.atom 119)) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 98 (List.Mem.head [119, 120, 122]))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 98 (List.Mem.tail 118 (List.Mem.head [120, 122]))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.head [94, 98, 118, 119, 120, 122])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0296 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.or (.and (.and (.and (.atom 46) (.atom 13)) (.atom 122)) (.atom 40)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 77, 83, 94, 118, 119, 120, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122])))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head []))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [46, 56, 77, 83, 94, 118, 119, 120, 122])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0300 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [120, 122])))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.head [77, 83, 94, 118, 119, 120, 122])))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [122]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0304 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [120, 122])))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head []))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.head [118, 119, 120, 122])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0315 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 94) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0323 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 77, 83, 94, 118, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [122])))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [77, 83, 94, 118, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [32, 34, 40, 46, 77, 83, 94, 118, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0324 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.or (.and (.and (.atom 46) (.atom 13)) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 77, 83, 94, 118, 119, 120, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122])))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head []))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0333 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.and (.atom 13) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.head [19, 32, 34, 40, 46, 56, 77, 83, 94, 118, 119, 120, 122]))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head []))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.head [118, 119, 120, 122])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0339 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0352 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 11, 13, 32, 34, 40, 41, 43, 46, 59, 63, 66, 74, 83, 92, 94, 100, 116, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 66) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [74, 83, 92, 94, 100, 116, 119, 122]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [59, 63, 66, 74, 83, 92, 94, 100, 116, 119, 122]))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.head [32, 34, 40, 41, 43, 46, 59, 63, 66, 74, 83, 92, 94, 100, 116, 119, 122])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0359 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0366 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 11, 13, 23, 32, 34, 38, 40, 41, 43, 44, 46, 50, 57, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 123, 128, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 116 (List.Mem.head [122, 123, 128, 136])))))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [123, 128, 136]))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 46, 83, 119] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [83, 119])))) (.atom (List.Mem.head [40, 46, 83, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0380 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 11, 13, 18, 32, 34, 40, 41, 43, 46, 59, 63, 66, 74, 83, 92, 94, 100, 116, 119, 122] →
      Formula.Holds valuation (.or (.and (.atom 13) (.atom 100)) (.and (.and (.atom 46) (.atom 13)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 41, 43, 46, 59, 63, 66, 74, 83, 92, 94, 100, 116, 119, 122])))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 74 (List.Mem.tail 83 (List.Mem.tail 92 (List.Mem.tail 94 (List.Mem.head [116, 119, 122])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0442 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 63] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [63])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0452 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 11, 13, 23, 32, 34, 38, 40, 41, 43, 44, 46, 50, 57, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 123, 128, 136] →
      Formula.Holds valuation (.or (.and (.and (.and (.atom 119) (.atom 46)) (.atom 13)) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 116 (List.Mem.head [122, 123, 128, 136])))))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [50, 57, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 123, 128, 136])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.head [23, 32, 34, 38, 40, 41, 43, 44, 46, 50, 57, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 123, 128, 136]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [123, 128, 136])))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0456 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0483 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 11, 13, 23, 32, 34, 38, 40, 41, 43, 44, 46, 50, 57, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 123, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 44)) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 116 (List.Mem.head [122, 123, 128, 136])))))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 50, 57, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 123, 128, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [94, 116, 119, 122, 123, 128, 136]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0491 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 11, 13, 32, 34, 38, 40, 41, 43, 44, 46, 50, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 128, 136] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 46)) (.atom 13)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 116 (List.Mem.head [122, 128, 136])))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [50, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 128, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.head [32, 34, 38, 40, 41, 43, 44, 46, 50, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 128, 136]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.head [41, 43, 44, 46, 50, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 128, 136])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0495 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 83) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.head [94, 119, 122]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0498 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0504 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0512 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.and (.and (.atom 46) (.atom 13)) (.atom 122)) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [83, 94, 119, 122]))))))) (.atom (List.Mem.tail 11 (List.Mem.head [32, 34, 40, 46, 83, 94, 119, 122])))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.head [94, 119, 122])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0519 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0522 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0536 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0545 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0548 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0549 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [74, 83, 92, 94, 100, 119, 122])))))))) (.atom (List.Mem.tail 11 (List.Mem.head [18, 32, 34, 40, 46, 74, 83, 92, 94, 100, 119, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0555 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0557 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 11, 13, 23, 32, 34, 38, 40, 41, 43, 44, 46, 50, 57, 59, 63, 66, 76, 77, 83, 94, 116, 119, 122, 123, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 116 (List.Mem.head [122, 123, 128, 136])))))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [123, 128, 136])))))))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.head [116, 119, 122, 123, 128, 136])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0566 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [60, 62, 76, 83, 95, 118, 119, 120, 136, 142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0568 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 83, 118, 119, 120, 142] →
      Formula.Holds valuation (.or (.atom 13) (.and (.and (.and (.atom 46) (.atom 13)) (.atom 122)) (.atom 94))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 12 (List.Mem.head [19, 46, 56, 60, 83, 118, 119, 120, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0574 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 19)) (.atom 13)) (.atom 120)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142]))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [136, 142])))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.head [46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0594 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 38, 41, 44, 46, 50, 53, 56, 60, 76, 77, 83, 95, 118, 119, 120, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 128, 136, 142]))))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [32, 38, 41, 44, 46, 50, 53, 56, 60, 76, 77, 83, 95, 118, 119, 120, 128, 136, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0595 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 119)) (.atom 56)) (.atom 19)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.head [119, 120, 136, 142]))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 136, 142]))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [60, 62, 76, 83, 95, 118, 119, 120, 136, 142])))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [32, 41, 46, 53, 56, 60, 62, 76, 83, 95, 118, 119, 120, 136, 142]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0597 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0599 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 38, 41, 44, 46, 50, 53, 56, 60, 76, 77, 83, 95, 118, 119, 120, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 44)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 95 (List.Mem.tail 118 (List.Mem.head [120, 128, 136, 142]))))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.head [60, 76, 77, 83, 95, 118, 119, 120, 128, 136, 142]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.head [46, 50, 53, 56, 60, 76, 77, 83, 95, 118, 119, 120, 128, 136, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.head [19, 32, 38, 41, 44, 46, 50, 53, 56, 60, 76, 77, 83, 95, 118, 119, 120, 128, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0601 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 120, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.head [120, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [60, 118, 119, 120, 142]))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0615 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 32, 38, 41, 44, 46, 50, 53, 56, 60, 62, 76, 77, 83, 118, 119, 120, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 142)) (.atom 44)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120, 128, 136, 142]))))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.head [60, 62, 76, 77, 83, 118, 119, 120, 128, 136, 142]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.tail 128 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.head [46, 50, 53, 56, 60, 62, 76, 77, 83, 118, 119, 120, 128, 136, 142]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [128, 136, 142])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0622 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 94) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0623 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0673 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 17, 23, 32, 34, 38, 41, 43, 44, 50, 53, 56, 57, 59, 63, 66, 70, 76, 77, 95, 114, 116, 119, 123, 128, 136] →
      Formula.Holds valuation (.and (.atom 44) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 17 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 53, 56, 57, 59, 63, 66, 70, 76, 77, 95, 114, 116, 119, 123, 128, 136])))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 17 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.head [43, 44, 50, 53, 56, 57, 59, 63, 66, 70, 76, 77, 95, 114, 116, 119, 123, 128, 136])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0693 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [119]))) (.atom (List.Mem.head [118, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0706 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.head [34, 41, 57, 63, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0753 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.or (.and (.and (.atom 119) (.atom 56)) (.atom 120)) (.and (.and (.atom 119) (.atom 56)) (.atom 120))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0776 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 83, 118, 119, 120]))))) (.atom (List.Mem.head [19, 46, 56, 83, 118, 119, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0777 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0780 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.atom 119) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 13 (List.Mem.head [46, 56, 83, 118, 119, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0782 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 83, 118, 119, 120])))) (.atom (List.Mem.head [19, 46, 56, 83, 118, 119, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0788 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [119, 120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0789 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0801 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0864 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 38, 41, 44, 46, 50, 53, 56, 62, 76, 77, 83, 95, 118, 119, 120, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.head [62, 76, 77, 83, 95, 118, 119, 120, 128, 136, 142]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.head [46, 50, 53, 56, 62, 76, 77, 83, 95, 118, 119, 120, 128, 136, 142])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [95, 118, 119, 120, 128, 136, 142]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 60, 83, 89, 94, 111, 118, 119, 122, 142]))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.head [19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0877 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 46) (.atom 13)) (.atom 122)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 60, 83, 89, 94, 111, 118, 119, 122, 142]))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.head [19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142]))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [142]))))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.head [111, 118, 119, 122, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0879 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 46)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 60 (List.Mem.tail 83 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [122, 142]))))))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 60, 83, 89, 94, 111, 118, 119, 122, 142])))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.head [19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0901 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 12, 13, 19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 60, 83, 89, 94, 111, 118, 119, 122, 142]))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 12 (List.Mem.head [19, 32, 34, 40, 46, 56, 60, 83, 89, 94, 111, 118, 119, 122, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0954 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 77, 83, 94, 118, 119, 122] →
      Formula.Holds valuation (.atom 83) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 77 (List.Mem.head [94, 118, 119, 122])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0959 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 94) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0974 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1018 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 83, 89, 111, 118, 119, 120, 142] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [46, 56, 60, 83, 89, 111, 118, 119, 120, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1019 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 43, 111] →
      Formula.Holds valuation (.atom 13) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 111]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1061 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 118, 119, 142] →
      Formula.Holds valuation (.atom 60) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [118, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1065 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 18, 19, 46, 56, 60, 63, 89, 100, 111, 118, 119, 120, 142] →
      Formula.Holds valuation (.or (.atom 18) (.and (.atom 19) (.atom 117))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [19, 46, 56, 60, 63, 89, 100, 111, 118, 119, 120, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1070 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 19, 46, 56, 60, 83, 89, 111, 118, 119, 120, 142] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.head [46, 56, 60, 83, 89, 111, 118, 119, 120, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 94 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1081 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 32, 34, 40, 46, 83, 94, 119, 122] →
      Formula.Holds valuation (.atom 94) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [119, 122])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1126 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1127 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 128) (.atom 32)) (.atom 119)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.head [136, 142]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1129 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 38, 41, 43, 44, 50, 56, 72, 76, 77, 88, 118, 119, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.head [119, 128, 136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 72, 76, 77, 88, 118, 119, 128, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1131 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 8, 14, 19, 41, 43, 44, 46, 54, 56, 63, 71, 86, 90, 93, 99, 107, 111, 119, 140, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 8 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 86, 90, 93, 99, 107, 111, 119, 140, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1136 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1142 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 5, 14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 5) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.head [14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142]))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 118 (List.Mem.head [142])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1153 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1155 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.and (.atom 119) (.atom 44)) (.atom 117)) (.and (.atom 43) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [119, 127, 136, 142]))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1156 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.atom 119) (.atom 44)) (.and (.and (.atom 119) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1157 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1161 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.atom 119) (.and (.and (.and (.and (.atom 31) (.atom 119)) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1162 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 23, 24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 106, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.atom 23) (.atom 119)) (.and (.and (.and (.atom 119) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 106, 111, 117, 119, 127, 136, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1163 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 142)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1164 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1165 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1166 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 142)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1169 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 26, 32, 38, 39, 41, 43, 46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 142)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head []))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1179 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 38, 41, 43, 44, 50, 59, 63, 66, 76, 77, 116, 118, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.tail 118 (List.Mem.head [128, 136])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1181 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1182 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1185 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136])))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1187 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [117, 119, 127, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1192 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 118, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [118, 119])))) (.atom (List.Mem.head [41, 43, 118, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1193 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1196 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 85, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1197 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.head [119, 142])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [142])))))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1198 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1201 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 19 (List.Mem.head [119]))) (.atom (List.Mem.head [56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1202 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 47) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 64, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1203 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119, 142] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1204 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1206 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 46, 56, 58, 111, 119] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.head [119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1207 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 126] →
      Formula.Holds valuation (.and (.and (.and (.atom 111) (.atom 119)) (.atom 56)) (.atom 126)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 56 (List.Mem.head [119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [126]))))) (.atom (List.Mem.head [111, 119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1208 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1209 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1210 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 69, 71, 86, 119, 133, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133, 142]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.head [86, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1211 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 56, 140, 142] →
      Formula.Holds valuation (.and (.atom 140) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 8 (List.Mem.tail 56 (List.Mem.head [142])))) (.atom (List.Mem.head [56, 140, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1216 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1217 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1218 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1219 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1303 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1305 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1314 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1390 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))) (.atom (List.Mem.head [111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1419 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1437 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 133)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [133])))) (.atom (List.Mem.head [111, 119, 133]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1448 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1458 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1464 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.head [85, 119])))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1497 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 43, 119] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1529 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1537 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1540 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1565 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 92, 119] →
      Formula.Holds valuation (.atom 92) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1599 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 28, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 26 (List.Mem.tail 28 (List.Mem.tail 43 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1610 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 89, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [89, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1619 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1628 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 74, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [74, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1639 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.and (.atom 74) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 74, 119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1655 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 119 (List.Mem.tail 125 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 74, 92, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 74, 92, 119, 125, 131]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 44, 74, 92, 119, 125, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1712 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1713 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 32, 35, 38, 39, 41, 43, 59, 66, 73, 76, 77, 93, 117, 119, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 133, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1730 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [78, 125, 142] →
      Formula.Holds valuation (.and (.atom 125) (.atom 78)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 78 (List.Mem.head [142]))) (.atom (List.Mem.head [125, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1757 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 23, 40, 41, 42, 43, 54, 56, 63, 81, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1761 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1764 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 63) (.atom 54)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1770 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1774 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1776 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1784 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1788 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 32, 41, 43, 54, 56, 63, 81, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 81, 86, 107, 111, 119, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1796 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1797 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1808 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1827 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1848 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1850 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 19)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1860 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1876 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1884 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1885 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1889 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1895 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1899 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1902 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.head [43, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1943 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 23, 25, 32, 38, 39, 40, 41, 42, 43, 44, 50, 67, 76, 77, 81, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 81 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1948 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1949 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 39)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1958 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.atom 39) (.atom 67)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1959 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1966 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1968 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1999 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2001 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 50) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136])))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2003 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2008 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2010 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 26, 32, 40, 41, 42, 43, 56, 72, 81, 88, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 81 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2011 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2018 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.and (.atom 75) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [119]))))) (.atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2028 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2029 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2035 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [72, 88, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2037 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142]))))))))) (.atom (List.Mem.head [25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2042 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 136, 142]))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2046 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 23, 26, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 73, 116, 117, 119, 123, 130, 133] →
      Formula.Holds valuation (.or (.atom 119) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [123, 130, 133])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2047 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2055 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2056 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2061 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2062 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2069 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 51) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [59, 63, 119, 130]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2070 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 63, 119] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 32, 35, 41, 43, 51, 52, 63, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2075 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [23, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2077 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 22 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2083 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.and (.atom 57) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [63, 119, 123])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.head [123])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2105 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 30, 34, 41, 57, 63, 66, 73, 119, 123, 133] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.head [41, 57, 63, 66, 73, 119, 123, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2111 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2116 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2121 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 56, 119, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2124 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.atom 66) (.atom 119)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.head [73, 117, 119, 123, 133]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2125 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 133)) (.atom 117)) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.head [119, 123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2149 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2156 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 35, 41, 57, 59, 63, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2161 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 59, 66, 73, 117, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2217 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 35, 41, 43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head []))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.head [43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2242 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.head [124, 133]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2252 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2264 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 41, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 46)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.head [56, 86, 93, 99, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2320 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2322 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2332 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 81 (List.Mem.tail 111 (List.Mem.head [126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2333 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2342 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 15, 41, 45, 46, 56, 61, 69, 71, 86, 93, 99, 111, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 93, 99, 111, 119, 133])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [133])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2355 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 108) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.head [111, 119, 123])))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2360 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2361 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2373 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 53, 55, 73, 97, 118, 119] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [73, 97, 118, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2379 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 93 (List.Mem.tail 95 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123, 136]))))))))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.head [71, 76, 93, 95, 96, 108, 111, 119, 123, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2389 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 55, 56, 73, 76, 95, 97, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.tail 97 (List.Mem.tail 118 (List.Mem.head [136]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2394 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 76, 95, 119, 136] →
      Formula.Holds valuation (.or (.and (.and (.atom 53) (.atom 119)) (.atom 56)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 76, 95, 119, 136])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [76, 95, 119, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2403 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 62, 119, 142])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2405 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2407 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2419 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2428 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2454 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2460 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2476 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 77, 119, 128] →
      Formula.Holds valuation (.and (.atom 77) (.atom 38)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.head [119, 128]))) (.atom (List.Mem.head [77, 119, 128])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2478 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2484 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 136) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head []))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2487 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.and (.atom 77) (.atom 38)) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.head [44, 50, 76, 77, 119, 128, 136]))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2489 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2491 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2494 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 36, 41, 43, 53, 68, 75, 76, 77, 113, 118, 119, 128, 136] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.head [53, 68, 75, 76, 77, 113, 118, 119, 128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2508 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 136)) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2514 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 76) (.atom 50)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2534 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 75)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.head [77, 97, 113, 118, 119, 128, 134, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2537 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 68, 75, 77, 118, 119, 128, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [128, 134])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2538 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 68, 75, 77, 113, 119, 128] →
      Formula.Holds valuation (.and (.atom 36) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.head [41, 43, 53, 68, 75, 77, 113, 119, 128])))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.head [43, 53, 68, 75, 77, 113, 119, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2539 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 68, 75, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 75) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))) (.atom (List.Mem.tail 5 (List.Mem.head [68, 75, 77, 119, 128, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2542 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 68)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.head [73, 75, 77, 97, 113, 118, 119, 128, 134, 136]))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2545 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2550 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2551 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.and (.atom 39) (.atom 67)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2552 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 32) (.atom 39)) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2556 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2557 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2559 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2569 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 32, 119] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [32, 119]))) (.atom (List.Mem.head [6, 32, 119]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 32 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.head [50, 76, 77, 119, 128, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2578 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2585 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2586 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2591 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2592 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2594 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 127) (.atom 25)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2601 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2603 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2607 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2616 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.head [43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2629 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 72)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2632 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 32, 41, 43, 71, 72, 88, 119, 123] →
      Formula.Holds valuation (.and (.atom 21) (.atom 23)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [23, 32, 41, 43, 71, 72, 88, 119, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.head [32, 41, 43, 71, 72, 88, 119, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2633 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.atom 32) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2637 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2638 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 88, 119, 128] →
      Formula.Holds valuation (.and (.and (.and (.atom 128) (.atom 32)) (.atom 88)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.tail 119 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [40, 41, 43, 88, 119, 128])))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119, 128])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.head [128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2639 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.and (.atom 88) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.head [118, 119, 123, 128]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 71, 72, 88, 118, 119, 123, 128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2653 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2656 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2664 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2668 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2671 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2680 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2691 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2694 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2707 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2709 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2712 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.and (.atom 91) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.head [114, 119, 143])))) (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2714 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2722 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2727 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2731 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2735 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2739 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2772 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2784 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.head [51, 52, 59, 63, 66, 116, 119])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.head [43, 51, 52, 59, 63, 66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2791 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 32, 35, 38, 41, 43, 44, 50, 51, 52, 59, 63, 66, 76, 77, 116, 119, 128, 130, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 130, 136])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2795 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2833 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 44, 50, 67, 76, 77, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2875 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2878 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2891 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 46)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2928 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 43, 56, 119] →
      Formula.Holds valuation (.and (.atom 31) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [43, 56, 119])) (.atom (List.Mem.tail 31 (List.Mem.head [56, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2935 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 31] →
      Formula.Holds valuation (.and (.atom 31) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [31])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2954 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 37) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [98, 118]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2955 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2961 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 118 (List.Mem.head [])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2962 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2980 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2981 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 115)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [118, 119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2987 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [98, 115, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2988 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 56, 98, 115, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2993 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 46, 56, 61, 73, 81, 109, 110, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.tail 109 (List.Mem.tail 110 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [81, 109, 110, 111, 119, 124, 133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2997 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2998 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3001 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3004 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3005 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 65)) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [79, 80, 115, 118, 119, 142])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [65, 79, 80, 115, 118, 119, 142]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3009 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 112, 115, 119] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [115, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3016 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3020 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3022 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 119)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 115, 118, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3024 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3028 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 118) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3029 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 38, 39, 41, 43, 44, 50, 56, 65, 76, 77, 79, 80, 98, 101, 115, 118, 119, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 128, 136, 142])))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3034 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3049 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3073 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.or (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 56, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 56, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [105, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3092 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 73, 81, 105, 109, 110, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3094 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 56, 73, 81, 110, 119] →
      Formula.Holds valuation (.atom 24) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.head [26, 41, 56, 73, 81, 110, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3105 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3121 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119, 142] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3143 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3148 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3230 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3239 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3324 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [71, 90, 93, 99, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3330 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))) (.atom (List.Mem.tail 56 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3336 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3350 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3380 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 119, 133, 142])))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3435 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3437 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3450 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3462 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3486 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119, 142] →
      Formula.Holds valuation (.and (.atom 44) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119, 142]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3495 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133]))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 44, 47, 56, 61, 64, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.or (.atom 56) (.and (.atom 19) (.atom 44))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.head [61, 64, 119, 133]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3539 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 119, 142] →
      Formula.Holds valuation (.and (.atom 56) (.atom 142)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [61, 119, 142]))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3553 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3616 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3622 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3628 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 71)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.head [93, 119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3638 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3652 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3654 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3655 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3663 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 23) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3688 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3696 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3706 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3726 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [46, 56, 86, 111, 118, 119, 123]))) (.atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3731 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3735 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [86, 111, 118, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3743 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3746 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 34, 41, 43, 44, 46, 47, 56, 61, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 71, 93, 111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 71, 93, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3758 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3789 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 34 (List.Mem.tail 43 (List.Mem.head [71, 111, 119])))) (.atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3792 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 44, 46, 47, 56, 71, 93, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3818 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3824 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3834 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3840 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3843 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 18, 32, 41, 43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125] →
      Formula.Holds valuation (.and (.atom 44) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3855 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 71, 111, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [41, 43, 44, 56, 61, 64, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3858 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 32, 38, 39, 41, 43, 46, 53, 56, 61, 62, 76, 77, 80, 93, 117, 119, 123, 127, 136, 137, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 80 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.tail 137 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3884 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3890 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3895 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3900 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3901 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3911 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3913 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3916 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 38, 41, 44, 50, 70, 76, 77, 114, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 114) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 70 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 128, 136])))))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.head [50, 70, 76, 77, 114, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3922 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 43) (.atom 14)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3926 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 32, 38, 39, 41, 43, 68, 75, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 128) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.head [136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3927 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 38, 41, 44, 50, 68, 75, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.head [44, 50, 68, 75, 76, 77, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3933 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3968 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3984 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 101, 115, 118, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 98, 101, 115, 118, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3996 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 105, 106, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4009 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 46, 47, 56, 64, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [64, 71, 93, 111, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 64, 71, 93, 111, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 64, 71, 93, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4016 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4037 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4053 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 47 (List.Mem.head [64, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4058 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [61, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4070 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 56, 61, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4085 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4097 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head []))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4123 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4133 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4149 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [56, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4161 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4171 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4183 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4184 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 43)) (.atom 80)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 64 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 37 (List.Mem.head [43, 56, 64, 80, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4191 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [111, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4204 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.or (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4208 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4216 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4221 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4236 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4237 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4249 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4253 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4256 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4270 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4277 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4278 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4282 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 44)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [125, 127, 133, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 124] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4299 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4305 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4311 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 119) (.atom 87)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.tail 87 (List.Mem.head [130]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4314 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 87) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.head [43, 51, 59, 63, 83, 87, 119, 130])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4322 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4339 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.head [61, 82, 103, 111, 119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4344 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4348 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4354 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 82 (List.Mem.tail 103 (List.Mem.head [119, 124]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 82, 103, 111, 119, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4362 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.head [56, 82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.head [43, 56, 82, 103, 119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4370 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.atom 56) (.atom 103)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 82 (List.Mem.head [119, 124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4402 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4408 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 104) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 46, 56, 61, 63, 104, 111, 119, 124, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4419 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4425 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 104, 119, 124] →
      Formula.Holds valuation (.atom 124) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 43) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 104, 119, 124])))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4443 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 63, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4461 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.head [14, 19, 34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4467 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4477 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4483 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4490 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4535 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 43, 56, 73, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 43, 56, 73, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [73, 105, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4540 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 83, 87, 119] →
      Formula.Holds valuation (.atom 87) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 83 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [41, 56, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4581 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4587 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4593 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 105, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 105 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4598 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 43, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4622 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4628 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4634 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 28, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [49, 56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4647 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4658 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 34, 119] →
      Formula.Holds valuation (.atom 30) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [34, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4678 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119, 142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4709 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 111, 119, 124, 133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4743 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 61, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [61, 111, 119])))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 61, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4762 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4766 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4772 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4782 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4790 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4791 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4798 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4800 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4805 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [71, 85, 93, 111, 119, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 71, 85, 93, 111, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4882 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142] →
      Formula.Holds valuation (.or (.and (.atom 117) (.atom 26)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 108 (List.Mem.tail 109 (List.Mem.tail 111 (List.Mem.head [119, 126, 127, 130, 142]))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.head [32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4890 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 56, 61, 75, 108, 111, 117, 119, 127, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [119, 127, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4903 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4922 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 108, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 108 (List.Mem.head [])))) (.atom (List.Mem.head [108, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4926 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4927 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4954 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 14, 26, 32, 34, 41, 43, 56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.head [117, 119, 136, 142]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [136, 142])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4960 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 71, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4984 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5014 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5046 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5067 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 81)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.head [81, 119]))) (.atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5077 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5090 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5097 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 86, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 86, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5098 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 119, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 56, 81, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5120 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.atom 63) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143])) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.head [43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5148 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5149 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 20, 41, 43, 54, 56, 58, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 20 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 114 (List.Mem.head [139, 142, 143]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 1)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.head [14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142]))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5170 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5181 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5209 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5219 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5247 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 89, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [89, 119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5257 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5264 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [119, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5266 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.head [89, 92, 111, 119, 125, 131]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5294 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5301 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5314 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124, 126] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 61, 99, 111, 119, 124, 126]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5322 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 69) (.atom 86)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.head [119, 133]))))))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5332 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5364 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 15, 41, 43, 45, 46, 56, 61, 69, 71, 86, 99, 104, 111, 119, 124, 126, 133, 137, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 99 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.head [124, 126, 133, 137, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5375 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 108, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 108 (List.Mem.head [142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5380 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5381 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5459 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5468 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5470 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_5492 :
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0124
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0125
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0145
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0175
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0177
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0201
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0208
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0222
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0225
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0233
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0254
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0273
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0285
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0287
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0296
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0300
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0304
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0315
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0323
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0324
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0333
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0339
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0352
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0359
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0366
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0369
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0380
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0442
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0452
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0456
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0483
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0491
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0495
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0498
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0504
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0512
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0519
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0522
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0536
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0545
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0548
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0549
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0555
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0557
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0566
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0568
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0574
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0594
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0595
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0597
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0599
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0601
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0615
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0622
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0623
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0673
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0693
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0706
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0753
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0776
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0777
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0780
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0782
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0788
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0789
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0801
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0864
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0877
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0879
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0901
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0954
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0959
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0974
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1018
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1019
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1061
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1065
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1070
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1081
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1126
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1127
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1129
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1131
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1136
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1142
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1152
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1153
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1155
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1156
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1157
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1161
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1162
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1163
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1164
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1165
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1166
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1169
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1179
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1181
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1182
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1185
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1187
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1192
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1193
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1196
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1197
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1198
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1201
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1202
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1203
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1204
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1205
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1206
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1207
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1208
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1209
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1210
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1211
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1216
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1217
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1218
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1219
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1303
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1305
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1314
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1390
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1419
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1437
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1448
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1458
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1464
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1497
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1529
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1537
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1540
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1565
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1599
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1610
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1619
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1628
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1639
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1655
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1712
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1713
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1730
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1757
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1761
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1764
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1770
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1774
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1776
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1784
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1788
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1796
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1797
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1808
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1827
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1848
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1850
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1860
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1876
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1884
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1885
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1889
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1895
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1899
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1902
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1943
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1948
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1949
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1958
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1959
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1966
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1968
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1999
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2001
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2003
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2008
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2010
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2011
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2018
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2028
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2029
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2035
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2037
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2042
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2046
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2047
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2055
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2056
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2061
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2062
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2069
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2070
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2075
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2077
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2083
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2105
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2111
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2116
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2121
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2124
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2125
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2149
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2152
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2156
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2161
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2217
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2242
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2252
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2264
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2320
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2322
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2332
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2333
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2342
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2355
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2360
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2361
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2373
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2379
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2389
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2394
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2403
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2405
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2407
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2419
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2428
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2454
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2460
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2476
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2478
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2484
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2487
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2489
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2491
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2494
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2508
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2514
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2534
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2537
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2538
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2539
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2542
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2545
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2550
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2551
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2552
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2556
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2557
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2559
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2569
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2578
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2585
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2586
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2591
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2592
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2594
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2601
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2603
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2607
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2616
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2629
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2632
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2633
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2637
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2638
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2639
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2653
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2656
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2664
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2668
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2671
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2680
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2691
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2694
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2707
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2709
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2712
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2714
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2722
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2727
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2731
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2735
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2739
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2772
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2784
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2791
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2795
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2833
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2875
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2878
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2891
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2928
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2935
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2954
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2955
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2961
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2962
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2980
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2981
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2987
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2988
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2993
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2997
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2998
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3001
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3004
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3005
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3009
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3016
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3020
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3022
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3024
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3028
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3029
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3034
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3049
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3051
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3073
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3092
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3094
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3105
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3121
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3143
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3205
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3230
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3239
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3324
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3330
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3336
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3350
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3380
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3435
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3437
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3450
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3462
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3486
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3495
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3539
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3553
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3616
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3622
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3628
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3638
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3652
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3654
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3655
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3663
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3688
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3696
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3706
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3726
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3731
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3735
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3743
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3746
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3758
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3789
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3792
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3818
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3824
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3834
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3840
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3843
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3855
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3858
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3884
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3890
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3895
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3900
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3901
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3911
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3913
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3916
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3922
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3926
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3927
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3933
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3968
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3984
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3996
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4009
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4016
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4037
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4053
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4058
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4070
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4085
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4097
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4123
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4133
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4149
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4161
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4171
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4183
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4184
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4191
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4204
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4208
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4216
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4221
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4236
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4237
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4249
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4253
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4256
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4270
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4277
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4278
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4282
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4299
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4305
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4311
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4314
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4322
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4339
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4344
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4348
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4354
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4362
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4370
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4402
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4408
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4419
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4425
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4443
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4461
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4467
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4477
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4483
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4490
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4535
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4540
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4581
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4587
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4593
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4598
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4622
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4628
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4634
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4647
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4658
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4678
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4709
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4743
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4762
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4766
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4772
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4782
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4790
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4791
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4798
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4800
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4805
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4882
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4890
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4903
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4922
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4926
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4927
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4954
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4960
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4984
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5014
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5046
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5067
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5077
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5079
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5090
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5097
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5098
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5120
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5149
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5170
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5181
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5209
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5219
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5247
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5257
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5264
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5266
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5294
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5301
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5314
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5322
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5332
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5364
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5375
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5380
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5381
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5459
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5468
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5470
#print axioms RagEvidence.LiteratureProofs.literature_SENT_5492
