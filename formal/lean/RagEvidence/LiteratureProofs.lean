import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 389 := by
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
      allFacts valuation [41, 43, 46, 56, 71, 91, 94, 100, 112, 120, 143] →
      Formula.Holds valuation (.and (.and (.and (.atom 120) (.atom 56)) (.atom 100)) (.atom 91)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head [143]))))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [71, 91, 94, 100, 112, 120, 143])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.head [112, 120, 143])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [94, 100, 112, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0022 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0041 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 56, 141, 143] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 141)) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 8 (List.Mem.head [141, 143]))) (.atom (List.Mem.tail 8 (List.Mem.tail 56 (List.Mem.head [143]))))) (.atom (List.Mem.head [56, 141, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 50, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 129, 137, 143]))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 44, 46, 50, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 129, 137, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0075 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 50, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 129, 137, 143]))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.head [71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 129, 137, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0076 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 46, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 137, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0077 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0078 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 91, 94, 100, 112, 120, 143] →
      Formula.Holds valuation (.and (.atom 112) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.head [120, 143])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head [143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.tail 14 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0084 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 50, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 129, 137, 143])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0087 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 46, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.or (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 46, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 137, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0097 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.or (.and (.and (.atom 120) (.atom 46)) (.atom 13)) (.and (.and (.atom 120) (.atom 56)) (.atom 121))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0100 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0104 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.or (.and (.and (.atom 120) (.atom 56)) (.atom 121)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.or (.and (.and (.and (.and (.atom 120) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 121)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0107 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0108 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.and (.and (.and (.atom 120) (.atom 56)) (.atom 19)) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.head [56, 120, 121])))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0112 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 120, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.head []))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.head [120, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0122 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 120, 123] →
      Formula.Holds valuation (.and (.and (.atom 46) (.atom 13)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [83, 120, 123])))) (.atom (List.Mem.head [32, 46, 83, 120, 123]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0127 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 38, 44, 46, 50, 56, 76, 77, 83, 120, 121, 123, 129, 137] →
      Formula.Holds valuation (.or (.and (.and (.atom 46) (.atom 13)) (.atom 123)) (.and (.atom 120) (.atom 95))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [50, 56, 76, 77, 83, 120, 121, 123, 129, 137]))))))) (.atom (List.Mem.head [19, 32, 38, 44, 46, 50, 56, 76, 77, 83, 120, 121, 123, 129, 137]))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.tail 121 (List.Mem.head [129, 137])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0128 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 38, 44, 46, 50, 56, 76, 77, 83, 120, 121, 123, 129, 137] →
      Formula.Holds valuation (.or (.and (.atom 46) (.atom 13)) (.and (.and (.atom 120) (.atom 46)) (.atom 13))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [50, 56, 76, 77, 83, 120, 121, 123, 129, 137]))))))) (.atom (List.Mem.head [19, 32, 38, 44, 46, 50, 56, 76, 77, 83, 120, 121, 123, 129, 137]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0130 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 120, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0143 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head []))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0147 :
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
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0221 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head []))) (.atom (List.Mem.head [119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0230 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0231 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.or (.or (.and (.and (.atom 120) (.atom 46)) (.atom 13)) (.atom 120)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.orRight (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0239 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 130] →
      Formula.Holds valuation (.or (.atom 130) (.and (.atom 19) (.atom 8))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0256 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [56, 120, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0267 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40, 46, 83, 120, 123] →
      Formula.Holds valuation (.and (.atom 32) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [34, 40, 46, 83, 120, 123]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0287 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 56, 90, 120] →
      Formula.Holds valuation (.or (.atom 13) (.and (.and (.and (.atom 90) (.atom 120)) (.atom 46)) (.atom 13))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.head [56, 90, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0292 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 23, 34, 38, 41, 44, 50, 56, 57, 63, 76, 77, 90, 120, 124, 129, 137] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.head [124, 129, 137])))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [57, 63, 76, 77, 90, 120, 124, 129, 137])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0300 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 34, 40, 46, 56, 83, 120, 121, 123] →
      Formula.Holds valuation (.and (.and (.and (.atom 120) (.atom 46)) (.atom 13)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.head [121, 123])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 83, 120, 121, 123])))))))) (.atom (List.Mem.head [19, 32, 34, 40, 46, 56, 83, 120, 121, 123]))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [46, 56, 83, 120, 121, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0384 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0386 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0395 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0470 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [])))) (.atom (List.Mem.head [112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0499 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 120] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0517 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 143] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [143]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0527 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120, 134] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 134)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [134])))) (.atom (List.Mem.head [112, 120, 134]))) (.atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0528 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.and (.atom 120) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [134])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 120, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0538 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 143] →
      Formula.Holds valuation (.atom 143) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0544 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.head [85, 120])))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 120] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0617 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 124] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0620 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0645 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 93, 120] →
      Formula.Holds valuation (.atom 93) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0679 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 27, 28, 43, 44, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 28 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0690 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 90, 120] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [90, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0699 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 44, 74, 120, 126] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [120, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0708 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 74, 120] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [74, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0719 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 120, 126] →
      Formula.Holds valuation (.and (.atom 74) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [120, 126])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 74, 120, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0764 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 74, 93, 120, 126, 132] →
      Formula.Holds valuation (.and (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 74, 93, 120, 126, 132]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 44, 74, 93, 120, 126, 132])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0792 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 112, 120] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0809 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [78, 126, 143] →
      Formula.Holds valuation (.and (.atom 126) (.atom 78)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 78 (List.Mem.head [143]))) (.atom (List.Mem.head [126, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0836 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 23, 40, 41, 42, 43, 54, 56, 63, 81, 87, 108, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0843 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 63) (.atom 54)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [87, 108, 112, 120, 143])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 63, 87, 108, 112, 120, 143]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 87 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.head [143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0845 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 87, 108, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0849 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 120] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0851 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 120] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 120])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0859 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0863 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 32, 41, 43, 54, 56, 63, 81, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 81, 87, 108, 112, 120, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0871 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 120)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 112, 120]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 120] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0883 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 27, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 94, 120, 126, 129, 134, 137] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 27 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 94, 120, 126, 129, 134, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0902 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 94, 120])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0923 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0925 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 19)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0935 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 120 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 120, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0951 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 56) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 112, 120, 125, 134]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [134]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0959 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0960 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0964 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0970 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0974 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0977 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.head [43, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1018 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 23, 25, 32, 38, 39, 40, 41, 42, 43, 44, 50, 67, 76, 77, 81, 94, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 81 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 129, 137, 143])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1022 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1023 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 120] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1024 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 39)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 94, 118, 120, 128, 137, 143])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1033 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.and (.atom 39) (.atom 67)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 94, 118, 120, 128, 137])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 94, 118, 120, 128, 137]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1034 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1041 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 128) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1043 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 120] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1074 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 129, 137, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1076 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.and (.atom 50) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 120, 129, 137])))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1078 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 89, 119, 120] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [89, 119, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1083 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 120] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1085 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 26, 32, 40, 41, 42, 43, 56, 72, 81, 89, 119, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 81 (List.Mem.tail 89 (List.Mem.tail 119 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1086 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 120] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 120])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1093 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 120] →
      Formula.Holds valuation (.and (.atom 75) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [120]))))) (.atom (List.Mem.tail 26 (List.Mem.head [41, 75, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1103 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1104 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.atom 143) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 128 (List.Mem.tail 137 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1110 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 89, 119, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [72, 89, 119, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1112 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143]))))))))) (.atom (List.Mem.head [25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1117 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [128, 137, 143]))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1120 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 35, 41, 43, 51, 52, 59, 63, 66, 68, 76, 77, 117, 120, 129, 131, 137] →
      Formula.Holds valuation (.and (.and (.atom 129) (.atom 68)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.tail 120 (List.Mem.head [131, 137]))))))))))))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.head [76, 77, 117, 120, 129, 131, 137]))))))))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 131, 137])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1121 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 68, 76, 77, 117, 120, 124, 129, 131, 137] →
      Formula.Holds valuation (.or (.atom 120) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [124, 129, 131, 137])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1122 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 35, 41, 43, 51, 52, 59, 63, 66, 68, 76, 77, 117, 120, 129, 131, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 131, 137]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1130 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 118, 120, 124, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 124 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [118, 120, 124, 134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1131 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 35, 41, 43, 51, 52, 59, 63, 66, 68, 76, 77, 117, 120, 129, 131, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 131, 137]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1136 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 117, 120] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 117, 120]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 117, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 117, 120] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 117, 120]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 117, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1144 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 120, 131] →
      Formula.Holds valuation (.atom 51) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [59, 63, 120, 131]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1145 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 63, 120] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 32, 35, 41, 43, 51, 52, 63, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1150 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 120] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [23, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 120] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 22 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 120, 124] →
      Formula.Holds valuation (.and (.atom 57) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [63, 120, 124])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.head [124])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1180 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 30, 34, 41, 57, 63, 66, 73, 120, 124, 134] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.head [41, 57, 63, 66, 73, 120, 124, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1186 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [122, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 122 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1191 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1196 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 56, 120, 124] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [120, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1199 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 118, 120, 124, 134] →
      Formula.Holds valuation (.and (.and (.atom 66) (.atom 120)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.head [73, 118, 120, 124, 134]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.head [124, 134]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 118, 120, 124, 134] →
      Formula.Holds valuation (.and (.and (.and (.atom 120) (.atom 134)) (.atom 118)) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.head [124, 134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 124 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.head [120, 124, 134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [118, 120, 124, 134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1224 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 120, 124] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 120, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1227 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1231 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 35, 41, 57, 59, 63, 66, 73, 118, 120, 124, 134] →
      Formula.Holds valuation (.atom 124) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [134])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1236 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 59, 66, 73, 118, 120, 134] →
      Formula.Holds valuation (.atom 134) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1265 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 14, 41, 43, 44, 46, 47, 56, 61, 64, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 134)) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 112 (List.Mem.head [125, 134]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.tail 125 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [14, 41, 43, 44, 46, 47, 56, 61, 64, 112, 120, 125, 134])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1275 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 87, 94, 100, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1287 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 41, 46, 56, 87, 94, 100, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 46)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.head [56, 87, 94, 100, 112, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1343 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 112, 120, 127] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 112, 120, 127])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1345 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 112, 120, 127] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 112, 120, 127]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 81, 112, 120, 127])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1355 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 112, 120, 127] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 81 (List.Mem.tail 112 (List.Mem.head [127])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1356 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 89, 98, 119, 120, 129, 135, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 98 (List.Mem.head [120, 129, 135, 137]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1365 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 15, 41, 45, 46, 56, 61, 69, 71, 87, 94, 100, 112, 120, 134] →
      Formula.Holds valuation (.and (.atom 69) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 87, 94, 100, 112, 120, 134])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head [134])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1378 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 94, 97, 109, 112, 120, 124] →
      Formula.Holds valuation (.and (.atom 109) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.head [112, 120, 124])))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [124])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1383 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 94, 97, 109, 112, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [124]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1384 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 94, 97, 109, 112, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [124]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1396 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 53, 55, 73, 98, 119, 120] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [73, 98, 119, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1402 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 71, 76, 94, 96, 97, 109, 112, 120, 124, 137] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 120)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 71, 76, 94, 96, 97, 109, 112, 120, 124, 137]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 94 (List.Mem.tail 96 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [124, 137]))))))))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.head [71, 76, 94, 96, 97, 109, 112, 120, 124, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1412 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 55, 56, 73, 76, 96, 98, 119, 120, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 96 (List.Mem.tail 98 (List.Mem.tail 119 (List.Mem.head [137]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1417 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 76, 96, 120, 137] →
      Formula.Holds valuation (.or (.and (.and (.atom 53) (.atom 120)) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 76, 96, 120, 137])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 96 (List.Mem.head [137]))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [76, 96, 120, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 120)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 62, 120, 143])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [143])))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 120, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1428 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 120, 143] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 120, 143])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1430 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 120, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1442 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 87, 120, 134] →
      Formula.Holds valuation (.and (.atom 69) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 87, 120, 134])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.head [134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1472 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 114, 119, 120, 129, 135, 137] →
      Formula.Holds valuation (.and (.atom 129) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [135, 137]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 114, 119, 120, 129, 135, 137])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1490 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 77, 120, 129] →
      Formula.Holds valuation (.and (.atom 77) (.atom 38)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.head [120, 129]))) (.atom (List.Mem.head [77, 120, 129])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1498 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.and (.atom 137) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 120 (List.Mem.tail 129 (List.Mem.head []))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 120, 129, 137]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.and (.and (.and (.atom 77) (.atom 38)) (.atom 76)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [120, 129, 137])))))) (.atom (List.Mem.head [44, 50, 76, 77, 120, 129, 137]))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 120, 129, 137])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1503 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1505 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1515 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.and (.and (.atom 76) (.atom 50)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 120, 129, 137]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 120, 129, 137]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1535 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 53, 55, 56, 68, 73, 75, 76, 77, 98, 114, 119, 120, 129, 135, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 129) (.atom 75)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 98 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [135, 137, 143])))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.head [76, 77, 98, 114, 119, 120, 129, 135, 137, 143])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 98 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.head [129, 135, 137, 143]))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1538 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 68, 75, 77, 119, 120, 129, 135] →
      Formula.Holds valuation (.and (.atom 135) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.tail 129 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [129, 135])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1539 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 68, 75, 77, 114, 120, 129] →
      Formula.Holds valuation (.and (.atom 36) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.head [41, 43, 53, 68, 75, 77, 114, 120, 129])))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.head [43, 53, 68, 75, 77, 114, 120, 129]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1543 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 53, 55, 56, 68, 73, 75, 76, 77, 98, 114, 119, 120, 129, 135, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 129) (.atom 68)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 98 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [135, 137, 143])))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.head [73, 75, 76, 77, 98, 114, 119, 120, 129, 135, 137, 143])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 98 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.head [129, 135, 137, 143]))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1546 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [128, 129, 137, 143]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1551 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 120, 124] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 120, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1552 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.and (.and (.atom 39) (.atom 67)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 94, 118, 120, 128, 137])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 94, 118, 120, 128, 137])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1553 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.and (.and (.and (.atom 32) (.atom 39)) (.atom 120)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 129, 137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1557 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 94, 118, 120, 128, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1558 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1560 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 128) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 32, 120] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [32, 120]))) (.atom (List.Mem.head [6, 32, 120]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 32 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1571 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.head [50, 76, 77, 120, 129, 137])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1579 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 103, 120, 137] →
      Formula.Holds valuation (.atom 103) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [120, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1586 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 103, 120, 137] →
      Formula.Holds valuation (.atom 103) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [120, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1587 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 103, 120, 137] →
      Formula.Holds valuation (.atom 103) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [120, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1592 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 128) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1593 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 128) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1595 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 25)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143])))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1601 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 117, 120, 129, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 137])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1602 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 117, 120] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 117, 120]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 117, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1607 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 117, 120, 129, 137] →
      Formula.Holds valuation (.and (.atom 120) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 137]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.head [43, 59, 63, 66, 68, 76, 77, 117, 120, 129, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1620 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 89, 119, 120] →
      Formula.Holds valuation (.and (.atom 89) (.atom 72)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [119, 120])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [89, 119, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1623 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 32, 41, 43, 71, 72, 89, 120, 124] →
      Formula.Holds valuation (.and (.atom 21) (.atom 23)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [23, 32, 41, 43, 71, 72, 89, 120, 124]))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.head [32, 41, 43, 71, 72, 89, 120, 124])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1624 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 89, 119, 120, 124, 129] →
      Formula.Holds valuation (.atom 32) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [40, 41, 43, 56, 71, 72, 89, 119, 120, 124, 129]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1628 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 89, 119, 120] →
      Formula.Holds valuation (.and (.atom 89) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [119, 120])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 89 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1629 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 89, 120, 129] →
      Formula.Holds valuation (.and (.and (.and (.atom 129) (.atom 32)) (.atom 89)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 89 (List.Mem.tail 120 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [40, 41, 43, 89, 120, 129])))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [120, 129])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 89 (List.Mem.head [129])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1630 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 89, 119, 120, 124, 129] →
      Formula.Holds valuation (.and (.atom 89) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.head [119, 120, 124, 129]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 71, 72, 89, 119, 120, 124, 129])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1644 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 119, 120, 137] →
      Formula.Holds valuation (.and (.atom 120) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [137]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 119, 120, 137]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1654 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 120, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [137]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1658 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 120, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [120, 137])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1661 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 87, 120, 134] →
      Formula.Holds valuation (.atom 134) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.tail 120 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1670 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 92, 115, 118, 119, 120, 129, 137, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [129, 137, 144])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1681 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 92, 115, 120, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.head [144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 115] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1686 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 120, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [120, 137])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1691 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 92, 115, 120, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.head [144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1694 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 92, 115, 120, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.head [144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1699 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 92, 115, 120, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.head [144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1703 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 92, 115, 118, 119, 120, 129, 137, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [129, 137, 144])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1707 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 92, 115, 118, 119, 120, 129, 137, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [129, 137, 144])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1711 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 120, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [120, 137])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1744 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 120, 131] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1756 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 59, 63, 66, 117, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 117 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.head [51, 52, 59, 63, 66, 117, 120])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.head [43, 51, 52, 59, 63, 66, 117, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1763 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 32, 35, 38, 41, 43, 44, 50, 51, 52, 59, 63, 66, 76, 77, 117, 120, 129, 131, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 131, 137])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1767 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 89, 98, 119, 120, 129, 135, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 98 (List.Mem.head [120, 129, 135, 137]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1846 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 120, 131] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1849 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 120, 131, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [131, 143])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1863 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 46)) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 112, 120, 125, 134]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 112, 120, 125, 134]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [134]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1900 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 43, 56, 120] →
      Formula.Holds valuation (.and (.atom 31) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [43, 56, 120])) (.atom (List.Mem.tail 31 (List.Mem.head [56, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1907 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 31] →
      Formula.Holds valuation (.and (.atom 31) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [31])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1926 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 99, 119] →
      Formula.Holds valuation (.atom 37) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [99, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1933 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head [])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119, 120]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 119, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1934 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 119, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119, 120])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 119, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1952 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1953 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.and (.atom 119) (.atom 116)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.head [120])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.head [119, 120]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1959 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.head [120])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [99, 116, 119, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1960 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.head [120])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 56, 99, 116, 119, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1965 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 46, 56, 61, 73, 81, 110, 111, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.tail 110 (List.Mem.tail 111 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.tail 125 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [81, 110, 111, 112, 120, 125, 134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1966 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 99, 102, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.head [120, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1969 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1972 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1977 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 99, 113, 116, 120] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.head [116, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1983 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 105, 120, 125] →
      Formula.Holds valuation (.atom 105) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [120, 125])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1987 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1989 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 119) (.atom 79)) (.atom 120)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 116 (List.Mem.head [120, 143]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [143]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 116, 119, 120, 143])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 116, 119, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1991 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.head [120]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1995 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 99, 102, 113, 116, 119, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 120)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [120, 143])))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [143])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 99, 102, 113, 116, 119, 120, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1996 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 38, 39, 41, 43, 44, 50, 56, 65, 76, 77, 79, 80, 99, 102, 116, 119, 120, 129, 137, 143] →
      Formula.Holds valuation (.and (.atom 119) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.head [120, 129, 137, 143])))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [129, 137, 143]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2001 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 99, 102, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.head [120, 143])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2016 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2018 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 99, 102, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.head [120, 143])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2040 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 106, 110, 111, 112, 120] →
      Formula.Holds valuation (.or (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 106, 110, 111, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2047 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 56, 106, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 56, 106, 120])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [106, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2055 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 110, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 110)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 110, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [120]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2059 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 106, 110, 111, 112, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 106, 110, 111, 112, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 73, 81, 106, 110, 111, 112, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2072 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 73, 81, 94, 106, 107, 110, 111, 112, 120] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 73, 81, 94, 106, 107, 110, 111, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120, 143] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120, 143]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2110 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 143] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2115 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2197 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 143] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2206 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 120, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 120, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2290 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 91, 94, 100, 112, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [71, 91, 94, 100, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2296 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 105, 120, 125] →
      Formula.Holds valuation (.and (.atom 125) (.atom 105)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 105 (List.Mem.tail 120 (List.Mem.head []))))) (.atom (List.Mem.tail 56 (List.Mem.head [120, 125]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2302 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2316 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2376 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2378 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2391 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 43, 56, 64, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 120]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 64, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2403 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120, 143] →
      Formula.Holds valuation (.and (.atom 44) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 94, 120, 143]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2435 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [134])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 120, 134]))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 44, 47, 56, 61, 64, 120, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2441 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.or (.atom 56) (.and (.atom 19) (.atom 44))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.head [61, 64, 120, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2479 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 120, 143] →
      Formula.Holds valuation (.and (.atom 56) (.atom 143)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [61, 120, 143]))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2493 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [120]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2555 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.and (.and (.atom 120) (.atom 56)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 94, 120])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2561 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2567 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 71)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.head [94, 120])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2577 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 94, 107, 112, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [94, 107, 112, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2583 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 27, 32, 38, 39, 41, 43, 44, 56, 76, 77, 94, 107, 112, 118, 120, 128, 137] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 44)) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137])))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 76, 77, 94, 107, 112, 118, 120, 128, 137]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.head [120, 128, 137]))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2589 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 27, 32, 38, 39, 41, 43, 44, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.and (.atom 44) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 94, 118, 120, 128, 137]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.head [120, 128, 137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2591 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [27, 44, 120] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 27 (List.Mem.head [120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2593 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.head [120, 128, 137])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2594 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2602 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 94, 107, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 23) (.atom 120)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [24, 26, 41, 43, 56, 94, 107, 112, 120])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 94 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 94, 107, 112, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2624 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [112, 120]))))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2632 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 119, 120, 137] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 119, 120, 137]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2642 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 112, 120] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2662 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [46, 56, 87, 112, 119, 120, 124]))) (.atom (List.Mem.head [43, 46, 56, 87, 112, 119, 120, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 87, 112, 119, 120, 124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2671 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 112 (List.Mem.tail 119 (List.Mem.head [124]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [87, 112, 119, 120, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2679 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 87, 112, 119, 120, 124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2682 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 34, 41, 43, 44, 46, 47, 56, 61, 71, 94, 112, 120, 143] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 71, 94, 112, 120, 143]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 71, 94, 112, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2694 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2725 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 112, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 34 (List.Mem.tail 43 (List.Mem.head [71, 112, 120])))) (.atom (List.Mem.tail 34 (List.Mem.head [56, 71, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2728 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 44, 46, 47, 56, 71, 94, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2754 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 124] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2769 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 120)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 112, 120]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2775 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 120] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2778 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 18, 32, 41, 43, 44, 56, 59, 63, 66, 74, 112, 117, 119, 120, 126] →
      Formula.Holds valuation (.and (.atom 44) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 59, 63, 66, 74, 112, 117, 119, 120, 126])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [43, 44, 56, 59, 63, 66, 74, 112, 117, 119, 120, 126])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2790 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 71, 112, 120] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [41, 43, 44, 56, 61, 64, 71, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2793 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 32, 38, 39, 41, 43, 46, 53, 56, 61, 62, 76, 77, 80, 94, 118, 120, 124, 128, 137, 138, 143] →
      Formula.Holds valuation (.atom 143) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 80 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 124 (List.Mem.tail 128 (List.Mem.tail 137 (List.Mem.tail 138 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2819 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 119, 120, 137] →
      Formula.Holds valuation (.and (.atom 120) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [137]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 119, 120, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2825 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2830 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.head [120, 128, 137, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2835 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2836 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2847 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 32, 38, 39, 41, 43, 68, 75, 76, 77, 94, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.atom 129) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 128 (List.Mem.head [137, 143])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2854 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 120, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [143]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 120, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2889 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2905 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 16, 32, 37, 41, 43, 51, 56, 59, 63, 99, 102, 116, 119, 120, 131] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 32 (List.Mem.tail 37 (List.Mem.head [43, 51, 56, 59, 63, 99, 102, 116, 119, 120, 131]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2929 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 46, 47, 56, 64, 71, 94, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [64, 71, 94, 112, 120]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 64, 71, 94, 112, 120]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 64, 71, 94, 112, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2936 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 134)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [134])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 120 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 120, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2957 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 87, 112, 119, 120, 124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2970 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 112, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 47 (List.Mem.head [64, 112, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2975 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [61, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2987 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2996 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3000 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3012 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 120, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head []))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 120, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3038 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 120, 124, 143] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 120, 124, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3048 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3064 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 112, 120] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3066 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3073 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 120])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [56, 64, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3076 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 120, 124, 143] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 120, 124, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3086 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3098 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 120]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 105, 112, 120, 125, 134] →
      Formula.Holds valuation (.atom 105) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [112, 120, 125, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3119 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143] →
      Formula.Holds valuation (.or (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3123 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 120, 138, 143] →
      Formula.Holds valuation (.atom 138) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 120 (List.Mem.head [143]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3131 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3136 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3164 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3168 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 112, 120]))))) (.atom (List.Mem.head [46, 56, 85, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3171 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3185 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3192 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3196 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 44)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [126, 128, 134, 137, 143])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3202 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 26, 43, 56, 73, 88, 112, 120, 125, 138] →
      Formula.Holds valuation (.atom 138) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 88 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.tail 125 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3207 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 125] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [125]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3213 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 105, 120, 125] →
      Formula.Holds valuation (.atom 105) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [120, 125])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3219 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3225 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 88, 120, 131] →
      Formula.Holds valuation (.and (.atom 120) (.atom 88)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.tail 88 (List.Mem.head [131]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [120, 131])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3236 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 112, 120, 125] →
      Formula.Holds valuation (.and (.atom 112) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [120, 125])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3253 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 82, 104, 112, 120, 125] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.head [61, 82, 104, 112, 120, 125])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3258 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 120, 124] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 120, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3262 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 120] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3268 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 61, 82, 104, 112, 120, 125] →
      Formula.Holds valuation (.and (.atom 112) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 82 (List.Mem.tail 104 (List.Mem.head [120, 125]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 82, 104, 112, 120, 125]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3276 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 104, 120, 125] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 104, 120, 125]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.head [56, 82, 104, 120, 125]))))) (.atom (List.Mem.tail 33 (List.Mem.head [43, 56, 82, 104, 120, 125]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3284 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 104, 120, 125] →
      Formula.Holds valuation (.and (.atom 56) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 104, 120, 125]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 82 (List.Mem.head [120, 125]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3316 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 105, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 125) (.atom 105)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 105 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [134])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [112, 120, 125, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3333 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 56) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 112, 120, 125, 134]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [134]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3339 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 105, 120, 125] →
      Formula.Holds valuation (.atom 125) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 105 (List.Mem.tail 120 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3340 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 105, 120, 125] →
      Formula.Holds valuation (.and (.atom 43) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 105, 120, 125])))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 105 (List.Mem.tail 120 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3375 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120]))))))))) (.atom (List.Mem.head [14, 19, 34, 41, 43, 44, 56, 61, 64, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3381 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 112, 120]))))) (.atom (List.Mem.head [46, 56, 85, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3391 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3397 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [120]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3404 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 120] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3441 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 41, 43, 56, 57, 59, 63, 66, 73, 106, 117, 120, 124] →
      Formula.Holds valuation (.and (.atom 120) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 117 (List.Mem.head [124])))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [41, 43, 56, 57, 59, 63, 66, 73, 106, 117, 120, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3449 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 43, 56, 73, 106, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 43, 56, 73, 106, 120])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [73, 106, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3454 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 26, 43, 56, 73, 83, 88, 112, 120, 125, 138] →
      Formula.Holds valuation (.atom 88) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 83 (List.Mem.head [112, 120, 125, 138]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3484 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 56, 120] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [41, 56, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3495 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 120] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.head [41, 75, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 87, 94, 100, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3507 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 94, 106, 107, 112, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [24, 26, 41, 43, 56, 94, 106, 107, 112, 120])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3512 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 43, 56, 120] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3536 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [122, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 122 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3542 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 120] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3548 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 28, 49, 56, 73, 124] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [49, 56, 73, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3561 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.atom 134) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 120 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3572 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 34, 120] →
      Formula.Holds valuation (.atom 30) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [34, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3592 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 104, 112, 120, 125, 134] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [46, 56, 61, 104, 112, 120, 125, 134]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3598 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 120, 143] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [120, 143]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3623 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 104, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 104, 112, 120, 125, 134])))) (.atom (List.Mem.head [46, 56, 61, 104, 112, 120, 125, 134])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3656 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 61, 112, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [61, 112, 120])))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 61, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3675 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 100, 112, 120, 125] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head [125])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3679 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 87, 94, 100, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 61, 71, 81, 85, 100, 112, 120, 125, 127, 134] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 71, 81, 85, 100, 112, 120, 125, 127, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3694 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 61, 71, 81, 85, 100, 112, 120, 125, 127, 134] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 71, 81, 85, 100, 112, 120, 125, 127, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3702 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 94, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 94 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [94, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3703 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 71, 85, 94, 112, 120, 124] →
      Formula.Holds valuation (.and (.atom 120) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.head [124])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3710 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 94, 112, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.head [124]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3712 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 94, 112, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.head [124]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3717 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 84, 85, 94, 112, 120, 124] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 84 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.head [124]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [71, 84, 85, 94, 112, 120, 124])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 71, 84, 85, 94, 112, 120, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3776 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 26, 32, 41, 43, 54, 56, 63, 81, 87, 108, 112, 120, 126, 127, 132] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.head [43, 54, 56, 63, 81, 87, 108, 112, 120, 126, 127, 132])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3795 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 109, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 109 (List.Mem.head [])))) (.atom (List.Mem.head [109, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3799 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 109, 118, 120, 128] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 109, 118, 120, 128])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 109 (List.Mem.tail 118 (List.Mem.head [128]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3800 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 109, 118, 120, 128] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 109, 118, 120, 128])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 109 (List.Mem.tail 118 (List.Mem.head [128]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3819 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 41, 43, 56, 75, 94, 109, 118, 120, 128] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 75 (List.Mem.tail 94 (List.Mem.tail 109 (List.Mem.tail 118 (List.Mem.head [128]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [75, 94, 109, 118, 120, 128])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3827 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 14, 26, 32, 34, 41, 43, 56, 61, 71, 76, 77, 85, 112, 118, 120, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 112) (.atom 120)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.head [118, 120, 137, 143]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [137, 143])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [56, 61, 71, 76, 77, 85, 112, 118, 120, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3833 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 71, 85, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head [])))))) (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3857 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 115] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3887 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3940 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 81)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.head [81, 120]))) (.atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3950 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 112 (List.Mem.tail 119 (List.Mem.head [124])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3952 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 112, 120] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 112, 120]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3963 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 110, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 110)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 110, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [120]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3970 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 87, 120] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 87, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3993 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.and (.atom 63) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [87, 108, 112, 120, 143])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 87 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.head [143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4010 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 94, 120] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4011 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 20, 41, 43, 54, 56, 58, 63, 87, 108, 112, 120, 140, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 20 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 63 (List.Mem.tail 87 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.head [140, 143])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4020 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 1)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 87, 108, 112, 120, 143]))))))) (.atom (List.Mem.head [14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143]))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 87, 108, 112, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4032 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 94, 120] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4043 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 87, 112, 120, 131, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 87 (List.Mem.tail 112 (List.Mem.head [131, 143]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 87, 112, 120, 131, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4069 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 112, 120, 131, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.head [131, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 112, 120, 131, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.head [131, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4116 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 89, 90, 93, 112, 120, 126, 132] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 89 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 112 (List.Mem.head [126, 132])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4123 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 112 (List.Mem.head [120, 124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4125 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 89, 90, 93, 112, 120, 126, 132] →
      Formula.Holds valuation (.and (.atom 89) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.head [90, 93, 112, 120, 126, 132]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 89 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 112 (List.Mem.head [126, 132]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4153 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 89, 90, 93, 112, 120, 126, 132] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 72, 74, 89, 90, 93, 112, 120, 126, 132]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4160 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 120, 138, 143] →
      Formula.Holds valuation (.atom 138) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 120 (List.Mem.head [143]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4180 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 87, 120, 134] →
      Formula.Holds valuation (.and (.and (.atom 69) (.atom 87)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 87, 120, 134])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.head [120, 134]))))))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.head [134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4190 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 120, 138, 143] →
      Formula.Holds valuation (.atom 138) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 120 (List.Mem.head [143]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 15, 41, 43, 45, 46, 56, 61, 69, 71, 87, 100, 105, 112, 120, 125, 127, 134, 138, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.tail 100 (List.Mem.tail 105 (List.Mem.tail 112 (List.Mem.head [125, 127, 134, 138, 143])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4239 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 87, 112, 120, 131, 143] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 87, 112, 120, 131, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4323 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [54, 56, 63, 87, 108, 112, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4332 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 87, 108, 112, 120, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4334 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 87, 108, 112, 120, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4356 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 87 (List.Mem.tail 108 (List.Mem.head [120, 143])))))))))))
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0097
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0100
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0104
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0106
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0107
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0108
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0112
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0122
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0127
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0128
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0130
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0143
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0147
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0221
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0230
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0231
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0239
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0256
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0267
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0287
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0292
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0300
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0384
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0386
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0395
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0470
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0499
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0517
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0527
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0528
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0538
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0544
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0617
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0620
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0645
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0679
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0690
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0699
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0708
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0719
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0764
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0792
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0809
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0836
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0843
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0845
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0849
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0851
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0859
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0863
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0871
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0883
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0902
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0923
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0925
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0935
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0951
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0959
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0960
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0964
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0970
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0974
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0977
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1018
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1022
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1023
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1024
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1033
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1034
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1041
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1043
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1074
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1076
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1078
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1083
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1085
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1086
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1093
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1103
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1104
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1110
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1112
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1117
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1120
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1121
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1122
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1130
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1131
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1136
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1144
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1145
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1150
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1152
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1180
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1186
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1191
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1196
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1199
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1224
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1227
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1231
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1236
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1265
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1275
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1287
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1343
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1345
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1355
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1356
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1365
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1378
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1383
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1384
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1396
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1402
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1412
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1417
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1428
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1430
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1442
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1472
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1490
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1498
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1503
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1505
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1515
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1535
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1538
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1539
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1543
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1546
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1551
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1552
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1553
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1557
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1558
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1560
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1571
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1579
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1586
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1587
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1592
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1593
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1595
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1601
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1602
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1607
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1620
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1623
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1624
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1628
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1629
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1630
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1644
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1654
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1658
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1661
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1670
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1681
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1686
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1691
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1694
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1699
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1703
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1707
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1711
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1744
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1756
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1763
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1767
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1846
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1849
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1863
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1900
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1907
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1926
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1933
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1934
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1952
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1953
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1959
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1960
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1965
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1966
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1969
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1972
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1977
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1983
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1987
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1989
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1991
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1995
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1996
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2001
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2016
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2018
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2040
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2047
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2055
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2059
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2072
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2110
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2115
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2197
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2206
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2290
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2296
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2302
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2316
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2376
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2378
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2391
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2403
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2435
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2441
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2479
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2493
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2555
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2561
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2567
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2577
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2583
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2589
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2591
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2593
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2594
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2602
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2624
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2632
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2642
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2662
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2671
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2679
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2682
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2694
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2725
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2728
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2754
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2769
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2775
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2778
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2790
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2793
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2819
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2825
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2830
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2835
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2836
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2847
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2854
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2889
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2905
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2929
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2936
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2957
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2970
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2975
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2987
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2996
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3000
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3012
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3038
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3048
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3064
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3066
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3073
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3076
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3086
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3098
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3106
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3119
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3123
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3131
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3136
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3152
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3164
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3168
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3171
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3185
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3192
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3196
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3202
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3207
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3213
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3219
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3225
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3236
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3253
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3258
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3262
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3268
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3276
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3284
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3316
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3333
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3339
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3340
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3375
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3381
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3391
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3397
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3404
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3441
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3449
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3454
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3484
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3495
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3507
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3512
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3536
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3542
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3548
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3561
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3572
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3592
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3598
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3623
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3656
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3675
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3679
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3694
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3702
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3703
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3710
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3712
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3717
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3776
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3795
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3799
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3800
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3819
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3827
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3833
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3857
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3887
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3940
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3950
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3952
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3963
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3970
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3993
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4010
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4011
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4020
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4032
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4043
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4069
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4079
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4116
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4123
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4125
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4153
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4160
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4180
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4190
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4222
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4239
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4323
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4332
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4334
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4356
