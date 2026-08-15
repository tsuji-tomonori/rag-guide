import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 446 := by
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

theorem literature_SENT_0106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 46, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 56, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 137, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0107 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.or (.and (.and (.atom 120) (.atom 46)) (.atom 13)) (.and (.and (.atom 120) (.atom 56)) (.atom 121))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0110 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0114 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.or (.and (.and (.atom 120) (.atom 56)) (.atom 121)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0116 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.or (.and (.and (.and (.and (.atom 120) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 121)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0117 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0118 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.and (.and (.and (.atom 120) (.atom 56)) (.atom 19)) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.head [56, 120, 121])))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0122 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 120, 123] →
      Formula.Holds valuation (.and (.atom 123) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.head []))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.head [120, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0132 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 120, 123] →
      Formula.Holds valuation (.and (.and (.atom 46) (.atom 13)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [83, 120, 123])))) (.atom (List.Mem.head [32, 46, 83, 120, 123]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 38, 44, 46, 50, 56, 76, 77, 83, 120, 121, 123, 129, 137] →
      Formula.Holds valuation (.or (.and (.and (.atom 46) (.atom 13)) (.atom 123)) (.and (.atom 120) (.atom 95))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [50, 56, 76, 77, 83, 120, 121, 123, 129, 137]))))))) (.atom (List.Mem.head [19, 32, 38, 44, 46, 50, 56, 76, 77, 83, 120, 121, 123, 129, 137]))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.tail 121 (List.Mem.head [129, 137])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0138 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 38, 44, 46, 50, 56, 76, 77, 83, 120, 121, 123, 129, 137] →
      Formula.Holds valuation (.or (.and (.atom 46) (.atom 13)) (.and (.and (.atom 120) (.atom 46)) (.atom 13))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [50, 56, 76, 77, 83, 120, 121, 123, 129, 137]))))))) (.atom (List.Mem.head [19, 32, 38, 44, 46, 50, 56, 76, 77, 83, 120, 121, 123, 129, 137]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0140 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 120, 123] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0153 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head []))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0157 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head []))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [40])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0234 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head []))) (.atom (List.Mem.head [119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0243 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [120, 121]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0244 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.or (.or (.and (.and (.atom 120) (.atom 46)) (.atom 13)) (.atom 120)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.orRight (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [121])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0252 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 130] →
      Formula.Holds valuation (.or (.atom 130) (.and (.atom 19) (.atom 8))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0269 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 120, 121] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [56, 120, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0280 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 34, 40, 46, 83, 120, 123] →
      Formula.Holds valuation (.and (.atom 32) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [34, 40, 46, 83, 120, 123]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 120 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0300 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 56, 90, 120] →
      Formula.Holds valuation (.or (.atom 13) (.and (.and (.and (.atom 90) (.atom 120)) (.atom 46)) (.atom 13))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.head [56, 90, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0305 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 23, 34, 38, 41, 44, 50, 56, 57, 63, 76, 77, 90, 120, 124, 129, 137] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.head [124, 129, 137])))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [57, 63, 76, 77, 90, 120, 124, 129, 137])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0314 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 34, 40, 46, 56, 83, 120, 121, 123] →
      Formula.Holds valuation (.and (.and (.and (.atom 120) (.atom 46)) (.atom 13)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.head [121, 123])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [56, 83, 120, 121, 123])))))))) (.atom (List.Mem.head [19, 32, 34, 40, 46, 56, 83, 120, 121, 123]))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.head [46, 56, 83, 120, 121, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0334 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 120)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [128, 129, 137, 143])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0335 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.and (.and (.and (.atom 129) (.atom 32)) (.atom 120)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.tail 128 (List.Mem.head [137, 143]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [128, 129, 137, 143])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0337 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 38, 41, 43, 44, 50, 56, 72, 76, 77, 89, 119, 120, 129, 137, 143] →
      Formula.Holds valuation (.and (.atom 119) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.head [120, 129, 137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 72, 76, 77, 89, 119, 120, 129, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0339 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 8, 14, 19, 41, 43, 44, 46, 54, 56, 63, 71, 87, 91, 94, 100, 108, 112, 120, 141, 143] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 8 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 87, 91, 94, 100, 108, 112, 120, 141, 143])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0344 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 91, 94, 100, 112, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 91, 94, 100, 112, 120, 143]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 91, 94, 100, 112, 120, 143])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 91, 94, 100, 112, 120, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0350 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 5, 14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 87, 89, 91, 94, 100, 108, 112, 117, 119, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 5) (.atom 120)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.head [14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 87, 89, 91, 94, 100, 108, 112, 117, 119, 120, 143]))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 87 (List.Mem.tail 89 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [143])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [59, 63, 66, 71, 72, 87, 89, 91, 94, 100, 108, 112, 117, 119, 120, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0360 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137, 143]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0361 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137, 143]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0363 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.or (.and (.and (.atom 120) (.atom 44)) (.atom 118)) (.and (.atom 43) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137, 143]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 76, 77, 91, 94, 100, 112, 118, 120, 128, 137, 143])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head [120, 128, 137, 143]))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0364 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.or (.and (.atom 120) (.atom 44)) (.and (.and (.atom 120) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0365 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137, 143]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0366 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137, 143]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.or (.atom 120) (.and (.and (.and (.and (.atom 31) (.atom 120)) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0370 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 23, 24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 91, 94, 100, 107, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.or (.and (.atom 23) (.atom 120)) (.and (.and (.and (.atom 120) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 91, 94, 100, 107, 112, 118, 120, 128, 137, 143])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0371 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 143)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 128 (List.Mem.tail 137 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0372 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 91, 94, 100, 112, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 91, 94, 100, 112, 120, 143]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 91, 94, 100, 112, 120, 143])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 91, 94, 100, 112, 120, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0373 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 91, 94, 100, 112, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 91, 94, 100, 112, 120, 143]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 91, 94, 100, 112, 120, 143])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 91, 94, 100, 112, 120, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0374 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 143)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 128 (List.Mem.tail 137 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 87, 91, 94, 100, 108, 112, 118, 120, 128, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0377 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 26, 32, 38, 39, 41, 43, 46, 54, 56, 63, 71, 72, 76, 77, 87, 89, 91, 94, 100, 108, 112, 118, 119, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 143)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 72, 76, 77, 87, 89, 91, 94, 100, 108, 112, 118, 119, 120, 128, 137, 143])))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 89 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.tail 128 (List.Mem.tail 137 (List.Mem.head []))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 71, 72, 76, 77, 87, 89, 91, 94, 100, 108, 112, 118, 119, 120, 128, 137, 143])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 71, 72, 76, 77, 87, 89, 91, 94, 100, 108, 112, 118, 119, 120, 128, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0387 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 77, 120, 129] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 77 (List.Mem.head [129]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0389 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 99, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 99 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0390 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 115] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 115])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0393 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 119, 120, 137] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 43)) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [137]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 119, 120, 137])))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 119, 120, 137])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0395 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 120)) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [118, 120, 128, 137, 143])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0400 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 120] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [119, 120])))) (.atom (List.Mem.head [41, 43, 119, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0401 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 120, 143] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 120, 143])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0404 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 85, 94, 112, 120] →
      Formula.Holds valuation (.and (.atom 112) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.head [120])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0405 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 91, 94, 100, 112, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 112) (.atom 120)) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.head [120, 143])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head [143])))))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [91, 94, 100, 112, 120, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0406 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 94, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 94)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 94 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [120])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0408 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0409 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 56, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 19 (List.Mem.head [120]))) (.atom (List.Mem.head [56, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0410 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 112, 120] →
      Formula.Holds valuation (.atom 47) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 64, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0411 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 120, 143] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [120, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0412 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 94, 107, 112, 120] →
      Formula.Holds valuation (.and (.atom 112) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 94 (List.Mem.tail 107 (List.Mem.head [120])))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 94 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0413 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 87 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.head [143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0414 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 46, 56, 58, 112, 120] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.head [120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0415 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120, 127] →
      Formula.Holds valuation (.and (.and (.and (.atom 112) (.atom 120)) (.atom 56)) (.atom 127)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 56 (List.Mem.head [120, 127]))) (.atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [127]))))) (.atom (List.Mem.head [112, 120, 127]))) (.atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0416 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 100, 112, 120, 125] →
      Formula.Holds valuation (.and (.atom 112) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 100 (List.Mem.head [120, 125])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head [125]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0419 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 69, 71, 87, 120, 134, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.head [134, 143]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.head [87, 120, 134, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0420 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 56, 141, 143] →
      Formula.Holds valuation (.and (.atom 141) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 8 (List.Mem.tail 56 (List.Mem.head [143])))) (.atom (List.Mem.head [56, 141, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0425 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [122, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 122 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 120] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0427 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 120] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0428 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 105, 120, 125] →
      Formula.Holds valuation (.atom 105) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [120, 125])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0512 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0514 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0523 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0599 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [])))) (.atom (List.Mem.head [112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0628 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 120] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0646 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 143] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [143]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0656 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 112, 120, 134] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 134)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [134])))) (.atom (List.Mem.head [112, 120, 134]))) (.atom (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0657 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.and (.atom 120) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [134])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 120, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 143] →
      Formula.Holds valuation (.atom 143) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0673 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.head [85, 120])))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0738 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 120] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0746 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 124] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0749 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0774 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 93, 120] →
      Formula.Holds valuation (.atom 93) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0808 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 27, 28, 43, 44, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 28 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0819 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 90, 120] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [90, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0828 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 44, 74, 120, 126] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [120, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0837 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 74, 120] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [74, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0848 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 120, 126] →
      Formula.Holds valuation (.and (.atom 74) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [120, 126])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 74, 120, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0893 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 74, 93, 120, 126, 132] →
      Formula.Holds valuation (.and (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 74, 93, 120, 126, 132]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 44, 74, 93, 120, 126, 132])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0921 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 112, 120] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0938 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [78, 126, 143] →
      Formula.Holds valuation (.and (.atom 126) (.atom 78)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 78 (List.Mem.head [143]))) (.atom (List.Mem.head [126, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0965 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 23, 40, 41, 42, 43, 54, 56, 63, 81, 87, 108, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0972 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 63) (.atom 54)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [87, 108, 112, 120, 143])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 63, 87, 108, 112, 120, 143]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 87 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.head [143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0974 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 87, 108, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0978 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 120] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0980 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 120] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 120])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0988 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 32, 41, 43, 54, 56, 63, 81, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 81, 87, 108, 112, 120, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1000 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 120)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 112, 120]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1001 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 120] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1012 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 27, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 94, 120, 126, 129, 134, 137] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 27 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 94, 120, 126, 129, 134, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1031 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 94, 120])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1052 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1054 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 19)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1064 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 120 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 120, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 56) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 112, 120, 125, 134]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [134]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1089 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1093 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1099 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1103 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.head [43, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1147 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 23, 25, 32, 38, 39, 40, 41, 42, 43, 44, 50, 67, 76, 77, 81, 94, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 81 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 129, 137, 143])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 120] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1153 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 39)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 94, 118, 120, 128, 137, 143])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1162 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.and (.atom 39) (.atom 67)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 94, 118, 120, 128, 137])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 94, 118, 120, 128, 137]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1163 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1170 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 128) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1172 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 120] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1203 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 129, 137, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.and (.atom 50) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 120, 129, 137])))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1207 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 89, 119, 120] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [89, 119, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1212 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 120] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1214 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 26, 32, 40, 41, 42, 43, 56, 72, 81, 89, 119, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 81 (List.Mem.tail 89 (List.Mem.tail 119 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1215 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 120] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 120])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 120] →
      Formula.Holds valuation (.and (.atom 75) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [120]))))) (.atom (List.Mem.tail 26 (List.Mem.head [41, 75, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1232 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1233 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.atom 143) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 128 (List.Mem.tail 137 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1239 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 89, 119, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [72, 89, 119, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1241 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143]))))))))) (.atom (List.Mem.head [25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1246 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [128, 137, 143]))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 56, 67, 72, 76, 77, 89, 94, 118, 119, 120, 128, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1249 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 35, 41, 43, 51, 52, 59, 63, 66, 68, 76, 77, 117, 120, 129, 131, 137] →
      Formula.Holds valuation (.and (.and (.atom 129) (.atom 68)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.tail 120 (List.Mem.head [131, 137]))))))))))))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.head [76, 77, 117, 120, 129, 131, 137]))))))))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 131, 137])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1250 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 68, 76, 77, 117, 120, 124, 129, 131, 137] →
      Formula.Holds valuation (.or (.atom 120) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [124, 129, 131, 137])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1251 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 35, 41, 43, 51, 52, 59, 63, 66, 68, 76, 77, 117, 120, 129, 131, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 131, 137]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1259 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 118, 120, 124, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 124 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [118, 120, 124, 134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1260 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 35, 41, 43, 51, 52, 59, 63, 66, 68, 76, 77, 117, 120, 129, 131, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 131, 137]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1265 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 117, 120] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 117, 120]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 117, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1266 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 117, 120] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 117, 120]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 117, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1273 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 120, 131] →
      Formula.Holds valuation (.atom 51) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [59, 63, 120, 131]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1274 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 63, 120] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 32, 35, 41, 43, 51, 52, 63, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1279 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 120] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [23, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1281 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 120] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 22 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1287 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 120, 124] →
      Formula.Holds valuation (.and (.atom 57) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [63, 120, 124])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.head [124])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1309 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 30, 34, 41, 57, 63, 66, 73, 120, 124, 134] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.head [41, 57, 63, 66, 73, 120, 124, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1315 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [122, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 122 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1320 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1325 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 56, 120, 124] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [120, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1328 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 118, 120, 124, 134] →
      Formula.Holds valuation (.and (.and (.atom 66) (.atom 120)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.head [73, 118, 120, 124, 134]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.head [124, 134]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1329 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 118, 120, 124, 134] →
      Formula.Holds valuation (.and (.and (.and (.atom 120) (.atom 134)) (.atom 118)) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.head [124, 134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 124 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.head [120, 124, 134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [118, 120, 124, 134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1353 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 120, 124] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 120, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1356 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1360 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 35, 41, 57, 59, 63, 66, 73, 118, 120, 124, 134] →
      Formula.Holds valuation (.atom 124) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [134])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1365 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 59, 66, 73, 118, 120, 134] →
      Formula.Holds valuation (.atom 134) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1421 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 35, 41, 43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 112, 118, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 125 (List.Mem.head []))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.head [43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 112, 118, 120, 125, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1446 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 14, 41, 43, 44, 46, 47, 56, 61, 64, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 134)) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 112 (List.Mem.head [125, 134]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.tail 125 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [14, 41, 43, 44, 46, 47, 56, 61, 64, 112, 120, 125, 134])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1456 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 87, 94, 100, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1468 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 41, 46, 56, 87, 94, 100, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 46)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.head [56, 87, 94, 100, 112, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1524 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 112, 120, 127] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 112, 120, 127])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1526 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 112, 120, 127] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 112, 120, 127]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 81, 112, 120, 127])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1536 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 112, 120, 127] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 81 (List.Mem.tail 112 (List.Mem.head [127])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1537 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 89, 98, 119, 120, 129, 135, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 98 (List.Mem.head [120, 129, 135, 137]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1546 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 15, 41, 45, 46, 56, 61, 69, 71, 87, 94, 100, 112, 120, 134] →
      Formula.Holds valuation (.and (.atom 69) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 87, 94, 100, 112, 120, 134])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head [134])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1559 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 94, 97, 109, 112, 120, 124] →
      Formula.Holds valuation (.and (.atom 109) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.head [112, 120, 124])))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [124])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1564 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 94, 97, 109, 112, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [124]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1565 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 94, 97, 109, 112, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [124]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1577 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 53, 55, 73, 98, 119, 120] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [73, 98, 119, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1583 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 71, 76, 94, 96, 97, 109, 112, 120, 124, 137] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 120)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 71, 76, 94, 96, 97, 109, 112, 120, 124, 137]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 94 (List.Mem.tail 96 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [124, 137]))))))))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.head [71, 76, 94, 96, 97, 109, 112, 120, 124, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1593 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 55, 56, 73, 76, 96, 98, 119, 120, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 96 (List.Mem.tail 98 (List.Mem.tail 119 (List.Mem.head [137]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1598 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 76, 96, 120, 137] →
      Formula.Holds valuation (.or (.and (.and (.atom 53) (.atom 120)) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 76, 96, 120, 137])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 96 (List.Mem.head [137]))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [76, 96, 120, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1607 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 120)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 62, 120, 143])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [143])))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 120, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 120, 143] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 120, 143])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1611 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 120, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1623 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 87, 120, 134] →
      Formula.Holds valuation (.and (.atom 69) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 87, 120, 134])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.head [134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1653 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 114, 119, 120, 129, 135, 137] →
      Formula.Holds valuation (.and (.atom 129) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [135, 137]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 114, 119, 120, 129, 135, 137])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1671 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 77, 120, 129] →
      Formula.Holds valuation (.and (.atom 77) (.atom 38)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.head [120, 129]))) (.atom (List.Mem.head [77, 120, 129])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1679 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.and (.atom 137) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 120 (List.Mem.tail 129 (List.Mem.head []))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 120, 129, 137]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1682 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.and (.and (.and (.atom 77) (.atom 38)) (.atom 76)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [120, 129, 137])))))) (.atom (List.Mem.head [44, 50, 76, 77, 120, 129, 137]))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 120, 129, 137])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1686 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1689 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 36, 41, 43, 53, 68, 75, 76, 77, 114, 119, 120, 129, 137] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.head [53, 68, 75, 76, 77, 114, 119, 120, 129, 137])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1705 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.and (.and (.atom 76) (.atom 50)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 120, 129, 137]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 120, 129, 137]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [129, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1725 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 53, 55, 56, 68, 73, 75, 76, 77, 98, 114, 119, 120, 129, 135, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 129) (.atom 75)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 98 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [135, 137, 143])))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.head [76, 77, 98, 114, 119, 120, 129, 135, 137, 143])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 98 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.head [129, 135, 137, 143]))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1728 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 68, 75, 77, 119, 120, 129, 135] →
      Formula.Holds valuation (.and (.atom 135) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.tail 129 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [129, 135])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1729 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 68, 75, 77, 114, 120, 129] →
      Formula.Holds valuation (.and (.atom 36) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.head [41, 43, 53, 68, 75, 77, 114, 120, 129])))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.head [43, 53, 68, 75, 77, 114, 120, 129]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1733 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 53, 55, 56, 68, 73, 75, 76, 77, 98, 114, 119, 120, 129, 135, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 129) (.atom 68)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 98 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [135, 137, 143])))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.head [73, 75, 76, 77, 98, 114, 119, 120, 129, 135, 137, 143])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 98 (List.Mem.tail 114 (List.Mem.tail 119 (List.Mem.head [129, 135, 137, 143]))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1736 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 89, 94, 118, 119, 120, 128, 129, 137, 143])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [128, 129, 137, 143]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1741 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 120, 124] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 120, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1742 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.and (.and (.atom 39) (.atom 67)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 94, 118, 120, 128, 137])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 94, 118, 120, 128, 137])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1743 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.and (.and (.and (.atom 32) (.atom 39)) (.atom 120)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 129, 137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 50, 76, 77, 94, 118, 120, 128, 129, 137, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1747 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 94, 118, 120, 128, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1748 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1750 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 128) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1760 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 32, 120] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [32, 120]))) (.atom (List.Mem.head [6, 32, 120]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 32 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1761 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 120, 129, 137] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.head [50, 76, 77, 120, 129, 137])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1769 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 103, 120, 137] →
      Formula.Holds valuation (.atom 103) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [120, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1776 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 103, 120, 137] →
      Formula.Holds valuation (.atom 103) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [120, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1777 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 103, 120, 137] →
      Formula.Holds valuation (.atom 103) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [120, 137]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1782 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 128) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1783 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 128) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1785 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 25)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.head [137, 143]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 94, 118, 120, 128, 137, 143])))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1791 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 117, 120, 129, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 137])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1792 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 117, 120] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 117, 120]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 117, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1797 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 117, 120, 129, 137] →
      Formula.Holds valuation (.and (.atom 120) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 137]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.head [43, 59, 63, 66, 68, 76, 77, 117, 120, 129, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1810 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 89, 119, 120] →
      Formula.Holds valuation (.and (.atom 89) (.atom 72)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [119, 120])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [89, 119, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1813 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 32, 41, 43, 71, 72, 89, 120, 124] →
      Formula.Holds valuation (.and (.atom 21) (.atom 23)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [23, 32, 41, 43, 71, 72, 89, 120, 124]))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.head [32, 41, 43, 71, 72, 89, 120, 124])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1814 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 89, 119, 120, 124, 129] →
      Formula.Holds valuation (.atom 32) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [40, 41, 43, 56, 71, 72, 89, 119, 120, 124, 129]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1818 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 89, 119, 120] →
      Formula.Holds valuation (.and (.atom 89) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [119, 120])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 89 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1819 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 89, 120, 129] →
      Formula.Holds valuation (.and (.and (.and (.atom 129) (.atom 32)) (.atom 89)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 89 (List.Mem.tail 120 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [40, 41, 43, 89, 120, 129])))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [120, 129])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 89 (List.Mem.head [129])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1820 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 89, 119, 120, 124, 129] →
      Formula.Holds valuation (.and (.atom 89) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.head [119, 120, 124, 129]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 71, 72, 89, 119, 120, 124, 129])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1834 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 119, 120, 137] →
      Formula.Holds valuation (.and (.atom 120) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [137]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 119, 120, 137]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1844 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 120, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [137]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1848 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 120, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [120, 137])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1851 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 87, 120, 134] →
      Formula.Holds valuation (.atom 134) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.tail 120 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1860 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 92, 115, 118, 119, 120, 129, 137, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [129, 137, 144])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1871 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 92, 115, 120, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.head [144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1874 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 92, 115, 120, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.head [144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1887 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 115] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1889 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 120, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [120, 137])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1894 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 92, 115, 120, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.head [144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1897 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 92, 115, 120, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.head [144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1902 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 92, 115, 120, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.head [144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1906 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 92, 115, 118, 119, 120, 129, 137, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [129, 137, 144])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1910 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 92, 115, 118, 119, 120, 129, 137, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 92 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [129, 137, 144])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1914 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 120, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [120, 137])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 120, 131] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1959 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 59, 63, 66, 117, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 117 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.head [51, 52, 59, 63, 66, 117, 120])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.head [43, 51, 52, 59, 63, 66, 117, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1966 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 32, 35, 38, 41, 43, 44, 50, 51, 52, 59, 63, 66, 76, 77, 117, 120, 129, 131, 137] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 117 (List.Mem.head [129, 131, 137])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1970 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 89, 98, 119, 120, 129, 135, 137] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 89 (List.Mem.tail 98 (List.Mem.head [120, 129, 135, 137]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2008 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 44, 50, 67, 76, 77, 94, 118, 119, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [128, 129, 137, 143])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2050 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 120, 131] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2053 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 120, 131, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [131, 143])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2067 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 46)) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 112, 120, 125, 134]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 112, 120, 125, 134]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [134]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2104 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 43, 56, 120] →
      Formula.Holds valuation (.and (.atom 31) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [43, 56, 120])) (.atom (List.Mem.tail 31 (List.Mem.head [56, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2111 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 31] →
      Formula.Holds valuation (.and (.atom 31) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [31])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2130 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 99, 119] →
      Formula.Holds valuation (.atom 37) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [99, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head [])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119, 120]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 119, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2138 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 119, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119, 120])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 119, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2156 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2157 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.and (.atom 119) (.atom 116)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.head [120])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.head [119, 120]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2163 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.head [120])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [99, 116, 119, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2164 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.head [120])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 56, 99, 116, 119, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2169 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 46, 56, 61, 73, 81, 110, 111, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.tail 110 (List.Mem.tail 111 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.tail 125 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [81, 110, 111, 112, 120, 125, 134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2170 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 99, 102, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.head [120, 143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2173 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2176 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2181 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 99, 113, 116, 120] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.head [116, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2187 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 105, 120, 125] →
      Formula.Holds valuation (.atom 105) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [120, 125])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2191 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2193 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 119) (.atom 79)) (.atom 120)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 116 (List.Mem.head [120, 143]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [143]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 116, 119, 120, 143])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 116, 119, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2195 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 99, 116, 119, 120] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 99 (List.Mem.tail 116 (List.Mem.head [120]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2199 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 99, 102, 113, 116, 119, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 120)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [120, 143])))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [143])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 99, 102, 113, 116, 119, 120, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 38, 39, 41, 43, 44, 50, 56, 65, 76, 77, 79, 80, 99, 102, 116, 119, 120, 129, 137, 143] →
      Formula.Holds valuation (.and (.atom 119) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.head [120, 129, 137, 143])))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.tail 119 (List.Mem.head [129, 137, 143]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 99, 102, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.head [120, 143])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2220 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 116, 119, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 99, 102, 116, 119, 120, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 99 (List.Mem.tail 102 (List.Mem.tail 116 (List.Mem.head [120, 143])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2244 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 106, 110, 111, 112, 120] →
      Formula.Holds valuation (.or (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 106, 110, 111, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2251 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 56, 106, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 56, 106, 120])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [106, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2259 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 110, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 110)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 110, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [120]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2263 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 106, 110, 111, 112, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 106, 110, 111, 112, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 73, 81, 106, 110, 111, 112, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2276 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 73, 81, 94, 106, 107, 110, 111, 112, 120] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 73, 81, 94, 106, 107, 110, 111, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2292 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120, 143] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120, 143]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 120, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2314 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 143] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2319 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2401 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 143] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 143])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2410 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 120, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 120, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2495 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 91, 94, 100, 112, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [71, 91, 94, 100, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 105, 120, 125] →
      Formula.Holds valuation (.and (.atom 125) (.atom 105)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 105 (List.Mem.tail 120 (List.Mem.head []))))) (.atom (List.Mem.tail 56 (List.Mem.head [120, 125]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2507 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2521 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2551 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 94, 120, 134, 143] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 94, 120, 134, 143])))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 94, 120, 134, 143])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 94, 120, 134, 143]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2607 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2622 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 43, 56, 64, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 120]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 64, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2634 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2658 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120, 143] →
      Formula.Holds valuation (.and (.atom 44) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 94, 120, 143]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [134])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 120, 134]))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 44, 47, 56, 61, 64, 120, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2673 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.or (.atom 56) (.and (.atom 19) (.atom 44))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.head [61, 64, 120, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2711 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 120, 143] →
      Formula.Holds valuation (.and (.atom 56) (.atom 143)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [61, 120, 143]))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 120 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2725 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [120]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2788 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.and (.and (.atom 120) (.atom 56)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 94, 120])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2794 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2800 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 71)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.head [94, 120])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2810 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 94, 107, 112, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [94, 107, 112, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2816 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 27, 32, 38, 39, 41, 43, 44, 56, 76, 77, 94, 107, 112, 118, 120, 128, 137] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 44)) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [128, 137])))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 76, 77, 94, 107, 112, 118, 120, 128, 137]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.head [120, 128, 137]))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2822 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 27, 32, 38, 39, 41, 43, 44, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.and (.atom 44) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 94, 118, 120, 128, 137]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 27 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.head [120, 128, 137]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2824 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [27, 44, 120] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 27 (List.Mem.head [120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2826 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.head [120, 128, 137])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2827 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2835 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 94, 107, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 23) (.atom 120)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [24, 26, 41, 43, 56, 94, 107, 112, 120])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 94 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 94, 107, 112, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2860 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [112, 120]))))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2868 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 119, 120, 137] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 119, 120, 137]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2878 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 112, 120] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2898 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [46, 56, 87, 112, 119, 120, 124]))) (.atom (List.Mem.head [43, 46, 56, 87, 112, 119, 120, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2903 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 87, 112, 119, 120, 124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2907 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 112 (List.Mem.tail 119 (List.Mem.head [124]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [87, 112, 119, 120, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2915 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 87, 112, 119, 120, 124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2918 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 34, 41, 43, 44, 46, 47, 56, 61, 71, 94, 112, 120, 143] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 71, 94, 112, 120, 143]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 71, 94, 112, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2930 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2961 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 112, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 34 (List.Mem.tail 43 (List.Mem.head [71, 112, 120])))) (.atom (List.Mem.tail 34 (List.Mem.head [56, 71, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2964 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 44, 46, 47, 56, 71, 94, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2990 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 124] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3005 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 120)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 112, 120]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3011 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 120] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3014 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 18, 32, 41, 43, 44, 56, 59, 63, 66, 74, 112, 117, 119, 120, 126] →
      Formula.Holds valuation (.and (.atom 44) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 59, 63, 66, 74, 112, 117, 119, 120, 126])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [43, 44, 56, 59, 63, 66, 74, 112, 117, 119, 120, 126])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3026 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 71, 112, 120] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [41, 43, 44, 56, 61, 64, 71, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3029 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 32, 38, 39, 41, 43, 46, 53, 56, 61, 62, 76, 77, 80, 94, 118, 120, 124, 128, 137, 138, 143] →
      Formula.Holds valuation (.atom 143) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 80 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 124 (List.Mem.tail 128 (List.Mem.tail 137 (List.Mem.tail 138 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3055 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 119, 120, 137] →
      Formula.Holds valuation (.and (.atom 120) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [137]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 119, 120, 137])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3061 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3066 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 94, 118, 120, 128, 137, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [128, 137, 143])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.head [120, 128, 137, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3071 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3072 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3078 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3083 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 38, 41, 44, 50, 70, 76, 77, 115, 120, 129, 137] →
      Formula.Holds valuation (.and (.atom 115) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 70 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [120, 129, 137])))))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.head [50, 70, 76, 77, 115, 120, 129, 137]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3093 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 32, 38, 39, 41, 43, 68, 75, 76, 77, 94, 118, 120, 128, 129, 137, 143] →
      Formula.Holds valuation (.atom 129) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.tail 120 (List.Mem.tail 128 (List.Mem.head [137, 143])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3100 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 120, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [143]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 120, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3135 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 16, 32, 37, 41, 43, 51, 56, 59, 63, 99, 102, 116, 119, 120, 131] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 32 (List.Mem.tail 37 (List.Mem.head [43, 51, 56, 59, 63, 99, 102, 116, 119, 120, 131]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3175 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 46, 47, 56, 64, 71, 94, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [64, 71, 94, 112, 120]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 64, 71, 94, 112, 120]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 64, 71, 94, 112, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3182 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 134)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [134])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 120 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 120, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3203 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 87, 112, 119, 120, 124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3216 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 112, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 47 (List.Mem.head [64, 112, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3221 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [61, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3233 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3242 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3247 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 120])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3259 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 120, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 120 (List.Mem.head []))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 120, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3285 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 120, 124, 143] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 120, 124, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3295 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3311 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 112, 120] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3313 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3320 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 120])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [56, 64, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3323 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 120, 124, 143] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 120, 124, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3333 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 120] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3345 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 120]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3353 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 105, 112, 120, 125, 134] →
      Formula.Holds valuation (.atom 105) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [112, 120, 125, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3366 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143] →
      Formula.Holds valuation (.or (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3370 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 120, 138, 143] →
      Formula.Holds valuation (.atom 138) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 120 (List.Mem.head [143]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3378 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 112, 120, 125, 134, 138, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3383 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3398 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3399 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3411 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3415 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 112, 120]))))) (.atom (List.Mem.head [46, 56, 85, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3418 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3432 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3439 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3440 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 94, 118, 120, 128, 134, 137, 143] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 94, 118, 120, 128, 134, 137, 143]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 94, 118, 120, 128, 134, 137, 143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3444 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 44)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 94 (List.Mem.tail 118 (List.Mem.head [126, 128, 134, 137, 143])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 94, 118, 120, 126, 128, 134, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3450 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 26, 43, 56, 73, 88, 112, 120, 125, 138] →
      Formula.Holds valuation (.atom 138) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 88 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.tail 125 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3455 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 125] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [125]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3461 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 105, 120, 125] →
      Formula.Holds valuation (.atom 105) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [120, 125])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3467 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 120] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3473 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 88, 120, 131] →
      Formula.Holds valuation (.and (.atom 120) (.atom 88)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.tail 88 (List.Mem.head [131]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [120, 131])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3484 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 112, 120, 125] →
      Formula.Holds valuation (.and (.atom 112) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [120, 125])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 82, 104, 112, 120, 125] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.head [61, 82, 104, 112, 120, 125])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3506 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 120, 124] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 120, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3510 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 120] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3516 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 61, 82, 104, 112, 120, 125] →
      Formula.Holds valuation (.and (.atom 112) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 82 (List.Mem.tail 104 (List.Mem.head [120, 125]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 82, 104, 112, 120, 125]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3524 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 104, 120, 125] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 104, 120, 125]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.head [56, 82, 104, 120, 125]))))) (.atom (List.Mem.tail 33 (List.Mem.head [43, 56, 82, 104, 120, 125]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3532 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 104, 120, 125] →
      Formula.Holds valuation (.and (.atom 56) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 104, 120, 125]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 82 (List.Mem.head [120, 125]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3564 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 105, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 125) (.atom 105)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 105 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [134])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [112, 120, 125, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3581 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 56) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 112, 120, 125, 134]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head [134]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3587 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 105, 120, 125] →
      Formula.Holds valuation (.atom 125) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 105 (List.Mem.tail 120 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3588 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 105, 120, 125] →
      Formula.Holds valuation (.and (.atom 43) (.atom 125)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 105, 120, 125])))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 105 (List.Mem.tail 120 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3623 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 120]))))))))) (.atom (List.Mem.head [14, 19, 34, 41, 43, 44, 56, 61, 64, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3629 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 112, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 112, 120]))))) (.atom (List.Mem.head [46, 56, 85, 112, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3639 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 94, 120] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 94 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 94, 120]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3645 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [120]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3652 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 120] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3689 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 41, 43, 56, 57, 59, 63, 66, 73, 106, 117, 120, 124] →
      Formula.Holds valuation (.and (.atom 120) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 117 (List.Mem.head [124])))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [41, 43, 56, 57, 59, 63, 66, 73, 106, 117, 120, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3697 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 43, 56, 73, 106, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 43, 56, 73, 106, 120])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [73, 106, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3702 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 26, 43, 56, 73, 83, 88, 112, 120, 125, 138] →
      Formula.Holds valuation (.atom 88) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 83 (List.Mem.head [112, 120, 125, 138]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3732 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 56, 120] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [41, 56, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3743 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 120] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.head [41, 75, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3749 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 87, 94, 100, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3755 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 94, 106, 107, 112, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [24, 26, 41, 43, 56, 94, 106, 107, 112, 120])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 107 (List.Mem.tail 112 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3760 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 43, 56, 120] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3784 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [122, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 122 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3790 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 120] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3796 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 28, 49, 56, 73, 124] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [49, 56, 73, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3809 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 120, 134] →
      Formula.Holds valuation (.atom 134) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 120 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3820 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 34, 120] →
      Formula.Holds valuation (.atom 30) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [34, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3840 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 104, 112, 120, 125, 134] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [46, 56, 61, 104, 112, 120, 125, 134]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3846 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 120, 143] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [120, 143]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3871 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 104, 112, 120, 125, 134] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 104, 112, 120, 125, 134])))) (.atom (List.Mem.head [46, 56, 61, 104, 112, 120, 125, 134])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3905 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 61, 112, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [61, 112, 120])))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 61, 112, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3924 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 100, 112, 120, 125] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head [125])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3928 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 87, 94, 100, 112, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 94 (List.Mem.tail 100 (List.Mem.tail 112 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3933 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 61, 71, 81, 85, 100, 112, 120, 125, 127, 134] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 71, 81, 85, 100, 112, 120, 125, 127, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3943 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 61, 71, 81, 85, 100, 112, 120, 125, 127, 134] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 71, 81, 85, 100, 112, 120, 125, 127, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3951 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 94, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 94 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [94, 120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3952 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 71, 85, 94, 112, 120, 124] →
      Formula.Holds valuation (.and (.atom 120) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.head [124])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.tail 120 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3959 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 94, 112, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.head [124]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3961 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 94, 112, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.head [124]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3966 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 84, 85, 94, 112, 120, 124] →
      Formula.Holds valuation (.and (.and (.atom 120) (.atom 56)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 84 (List.Mem.tail 85 (List.Mem.tail 94 (List.Mem.tail 112 (List.Mem.head [124]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [71, 84, 85, 94, 112, 120, 124])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 71, 84, 85, 94, 112, 120, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4043 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 32, 41, 43, 56, 58, 61, 73, 75, 81, 109, 110, 112, 118, 120, 127, 128, 131, 143] →
      Formula.Holds valuation (.or (.and (.atom 118) (.atom 26)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 109 (List.Mem.tail 110 (List.Mem.tail 112 (List.Mem.head [120, 127, 128, 131, 143]))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.head [32, 41, 43, 56, 58, 61, 73, 75, 81, 109, 110, 112, 118, 120, 127, 128, 131, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 56, 61, 75, 109, 112, 118, 120, 128, 143] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 75 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [120, 128, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4064 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 115] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 115])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4083 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 109, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 109 (List.Mem.head [])))) (.atom (List.Mem.head [109, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4087 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 109, 118, 120, 128] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 109, 118, 120, 128])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 109 (List.Mem.tail 118 (List.Mem.head [128]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 109, 118, 120, 128] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 109, 118, 120, 128])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 109 (List.Mem.tail 118 (List.Mem.head [128]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4107 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 41, 43, 56, 75, 94, 109, 118, 120, 128] →
      Formula.Holds valuation (.and (.atom 120) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 75 (List.Mem.tail 94 (List.Mem.tail 109 (List.Mem.tail 118 (List.Mem.head [128]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [75, 94, 109, 118, 120, 128])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4115 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 14, 26, 32, 34, 41, 43, 56, 61, 71, 76, 77, 85, 112, 118, 120, 137, 143] →
      Formula.Holds valuation (.and (.and (.atom 112) (.atom 120)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.head [118, 120, 137, 143]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.tail 118 (List.Mem.head [137, 143])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [56, 61, 71, 76, 77, 85, 112, 118, 120, 137, 143])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4121 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 71, 85, 112, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 112 (List.Mem.head [])))))) (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [112, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4145 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 115] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4175 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4228 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 120] →
      Formula.Holds valuation (.and (.atom 56) (.atom 81)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.head [81, 120]))) (.atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4238 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 112 (List.Mem.tail 119 (List.Mem.head [124])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4240 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 112, 120] →
      Formula.Holds valuation (.and (.atom 32) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 112, 120]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 112 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4251 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 110, 120] →
      Formula.Holds valuation (.and (.atom 23) (.atom 110)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 110, 120]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [120]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4258 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 87, 120] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 87, 120]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4281 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.and (.atom 63) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [87, 108, 112, 120, 143])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 87 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.head [143])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4297 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 41, 43, 54, 56, 63, 77, 87, 92, 108, 112, 115, 120, 140, 143, 144] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [14, 18, 41, 43, 54, 56, 63, 77, 87, 92, 108, 112, 115, 120, 140, 143, 144])) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.head [43, 54, 56, 63, 77, 87, 92, 108, 112, 115, 120, 140, 143, 144]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4308 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 94, 120] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4309 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 20, 41, 43, 54, 56, 58, 63, 77, 87, 92, 108, 112, 115, 120, 140, 143, 144] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 20 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 87 (List.Mem.tail 92 (List.Mem.tail 108 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [140, 143, 144]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4318 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 1)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 87, 108, 112, 120, 143]))))))) (.atom (List.Mem.head [14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143]))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 87, 108, 112, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4330 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 94, 120] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 94, 120])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4341 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 87, 112, 120, 131, 143] →
      Formula.Holds valuation (.and (.atom 120) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 87 (List.Mem.tail 112 (List.Mem.head [131, 143]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 87, 112, 120, 131, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 112, 120, 131, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.head [131, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4379 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 112, 120, 131, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 112 (List.Mem.head [131, 143]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4416 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 89, 90, 93, 112, 120, 126, 132] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 89 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 112 (List.Mem.head [126, 132])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4423 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 87, 112, 119, 120, 124] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 87 (List.Mem.tail 112 (List.Mem.head [120, 124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4425 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 89, 90, 93, 112, 120, 126, 132] →
      Formula.Holds valuation (.and (.atom 89) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.head [90, 93, 112, 120, 126, 132]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 89 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 112 (List.Mem.head [126, 132]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4453 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 89, 90, 93, 112, 120, 126, 132] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 72, 74, 89, 90, 93, 112, 120, 126, 132]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4460 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 120, 138, 143] →
      Formula.Holds valuation (.atom 138) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 120 (List.Mem.head [143]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4480 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 87, 120, 134] →
      Formula.Holds valuation (.and (.and (.atom 69) (.atom 87)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 87, 120, 134])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.head [120, 134]))))))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.head [134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4490 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 120, 138, 143] →
      Formula.Holds valuation (.atom 138) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 120 (List.Mem.head [143]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4522 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 15, 41, 43, 45, 46, 56, 61, 69, 71, 87, 100, 105, 112, 120, 125, 127, 134, 138, 143] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 87 (List.Mem.tail 100 (List.Mem.tail 105 (List.Mem.tail 112 (List.Mem.head [125, 127, 134, 138, 143])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4544 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 87, 112, 120, 131, 143] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 87, 112, 120, 131, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4631 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [54, 56, 63, 87, 108, 112, 120, 143])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4640 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 87, 108, 112, 120, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4642 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 87, 108, 112, 120, 143] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 87, 108, 112, 120, 143]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4664 :
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0106
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0107
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0110
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0114
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0116
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0117
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0118
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0122
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0132
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0138
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0140
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0153
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0157
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0234
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0243
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0244
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0252
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0269
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0280
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0300
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0305
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0314
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0334
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0335
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0337
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0339
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0344
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0350
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0360
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0361
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0363
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0364
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0365
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0366
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0369
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0370
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0371
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0372
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0373
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0374
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0377
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0387
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0389
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0390
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0393
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0395
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0400
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0401
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0404
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0405
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0406
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0408
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0409
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0410
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0411
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0412
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0413
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0414
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0415
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0416
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0419
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0420
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0425
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0427
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0428
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0512
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0514
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0523
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0599
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0628
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0646
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0656
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0657
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0673
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0738
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0746
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0749
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0774
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0808
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0819
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0828
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0837
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0848
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0893
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0921
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0938
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0965
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0972
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0974
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0978
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0980
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0988
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1000
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1001
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1012
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1031
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1052
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1054
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1064
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1089
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1093
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1099
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1103
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1106
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1147
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1152
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1153
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1162
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1163
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1170
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1172
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1203
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1205
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1207
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1212
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1214
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1215
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1222
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1232
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1233
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1239
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1241
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1246
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1249
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1250
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1251
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1259
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1260
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1265
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1266
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1273
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1274
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1279
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1281
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1287
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1309
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1315
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1320
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1325
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1328
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1329
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1353
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1356
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1360
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1365
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1421
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1446
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1456
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1468
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1524
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1526
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1536
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1537
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1546
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1559
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1564
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1565
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1577
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1583
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1593
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1598
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1607
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1611
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1623
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1653
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1671
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1679
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1682
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1686
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1689
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1705
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1725
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1728
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1729
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1733
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1736
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1741
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1742
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1743
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1747
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1748
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1750
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1760
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1761
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1769
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1776
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1777
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1782
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1783
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1785
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1791
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1792
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1797
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1810
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1813
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1814
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1818
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1819
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1820
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1834
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1844
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1848
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1851
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1860
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1871
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1874
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1887
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1889
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1894
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1897
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1902
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1906
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1910
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1914
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1959
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1966
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1970
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2008
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2050
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2053
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2067
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2104
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2111
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2130
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2138
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2156
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2157
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2163
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2164
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2169
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2170
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2173
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2176
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2181
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2187
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2191
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2193
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2195
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2199
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2205
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2220
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2222
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2244
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2251
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2259
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2263
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2276
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2292
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2314
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2319
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2401
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2410
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2495
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2507
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2521
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2551
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2607
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2622
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2634
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2658
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2673
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2711
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2725
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2788
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2794
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2800
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2810
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2816
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2822
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2824
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2826
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2827
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2835
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2860
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2868
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2878
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2898
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2903
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2907
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2915
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2918
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2930
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2961
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2964
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2990
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3005
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3011
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3014
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3026
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3029
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3055
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3061
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3066
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3071
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3072
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3078
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3083
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3093
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3100
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3135
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3175
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3182
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3203
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3216
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3221
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3233
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3242
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3247
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3259
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3285
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3295
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3311
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3313
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3320
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3323
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3333
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3345
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3353
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3366
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3370
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3378
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3383
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3398
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3399
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3411
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3415
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3418
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3432
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3439
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3440
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3444
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3450
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3455
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3461
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3467
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3473
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3484
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3506
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3510
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3516
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3524
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3532
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3564
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3581
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3587
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3588
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3623
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3629
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3639
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3645
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3652
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3689
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3697
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3702
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3732
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3743
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3749
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3755
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3760
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3784
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3790
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3796
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3809
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3820
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3840
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3846
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3871
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3905
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3924
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3928
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3933
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3943
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3951
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3952
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3959
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3961
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3966
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4043
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4051
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4064
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4083
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4087
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4107
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4115
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4121
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4145
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4175
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4228
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4238
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4240
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4251
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4258
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4281
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4297
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4308
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4309
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4318
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4330
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4341
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4369
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4379
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4416
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4423
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4425
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4453
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4460
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4480
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4490
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4522
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4544
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4631
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4640
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4642
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4664
