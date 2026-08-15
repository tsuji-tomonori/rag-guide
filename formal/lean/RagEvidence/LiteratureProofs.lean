import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 469 := by
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
      allFacts valuation [40, 42, 45, 55, 69, 88, 91, 97, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 55)) (.atom 97)) (.atom 88)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [140]))))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [69, 88, 91, 97, 109, 117, 140])))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.head [109, 117, 140])))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.head [91, 97, 109, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0022 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0041 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 55, 138, 140] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 138)) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 8 (List.Mem.head [138, 140]))) (.atom (List.Mem.tail 8 (List.Mem.tail 55 (List.Mem.head [140]))))) (.atom (List.Mem.head [55, 138, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 31, 37, 38, 40, 42, 43, 45, 49, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140]))))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 43, 45, 49, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 126, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0075 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 31, 37, 38, 40, 42, 43, 45, 49, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140]))))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.head [69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 126, 134, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0076 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 45, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [45, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0077 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0078 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 69, 88, 91, 97, 109, 117, 140] →
      Formula.Holds valuation (.and (.atom 109) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.head [117, 140])))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [])))) (.atom (List.Mem.tail 13 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0084 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 31, 37, 38, 40, 42, 43, 45, 49, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0087 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 45, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.or (.atom 18) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 45, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 45, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 45, 55, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 134, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0107 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.or (.and (.and (.atom 117) (.atom 45)) (.atom 12)) (.and (.and (.atom 117) (.atom 55)) (.atom 118))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.head [117, 118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0110 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0114 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.or (.and (.and (.atom 117) (.atom 55)) (.atom 118)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.head [117, 118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0116 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.or (.and (.and (.and (.and (.atom 117) (.atom 55)) (.atom 45)) (.atom 12)) (.atom 118)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0117 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.head [117, 118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0118 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 55)) (.atom 18)) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.head [117, 118]))))) (.atom (List.Mem.tail 12 (List.Mem.head [55, 117, 118])))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0122 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 45, 81, 117, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 81)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 45 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.head []))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 45 (List.Mem.head [117, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0133 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 45, 81, 117, 120] →
      Formula.Holds valuation (.and (.and (.atom 45) (.atom 12)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.head [81, 117, 120])))) (.atom (List.Mem.head [31, 45, 81, 117, 120]))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 45 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0138 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 55, 74, 75, 81, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.or (.and (.and (.atom 45) (.atom 12)) (.atom 120)) (.and (.atom 117) (.atom 92))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [49, 55, 74, 75, 81, 117, 118, 120, 126, 134]))))))) (.atom (List.Mem.head [18, 31, 37, 43, 45, 49, 55, 74, 75, 81, 117, 118, 120, 126, 134]))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [126, 134])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0139 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 55, 74, 75, 81, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.or (.and (.atom 45) (.atom 12)) (.and (.and (.atom 117) (.atom 45)) (.atom 12))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [49, 55, 74, 75, 81, 117, 118, 120, 126, 134]))))))) (.atom (List.Mem.head [18, 31, 37, 43, 45, 49, 55, 74, 75, 81, 117, 118, 120, 126, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0141 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 45, 81, 117, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 45 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0154 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 33, 39] →
      Formula.Holds valuation (.and (.atom 39) (.atom 33)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.head []))))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.head [39])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 33, 39] →
      Formula.Holds valuation (.and (.atom 39) (.atom 33)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.head []))))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.head [39])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0159 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 33, 39] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0235 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 116] →
      Formula.Holds valuation (.and (.atom 116) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.head []))) (.atom (List.Mem.head [116])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0244 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 50, 55, 74, 75, 81, 87, 116, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 116 (List.Mem.head [118, 120, 126, 134])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.head [74, 75, 81, 87, 116, 117, 118, 120, 126, 134]))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [120, 126, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0246 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 50, 55, 74, 75, 81, 87, 116, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 116 (List.Mem.head [118, 120, 126, 134])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.head [31, 37, 43, 45, 49, 50, 55, 74, 75, 81, 87, 116, 117, 118, 120, 126, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0253 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 127] →
      Formula.Holds valuation (.or (.atom 127) (.and (.atom 18) (.atom 8))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 12 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0270 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.head [55, 117, 118])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0281 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 33, 39, 45, 81, 117, 120] →
      Formula.Holds valuation (.and (.atom 31) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.head [33, 39, 45, 81, 117, 120]))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 39 (List.Mem.tail 45 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0301 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 55, 87, 117] →
      Formula.Holds valuation (.or (.atom 12) (.and (.and (.and (.atom 87) (.atom 117)) (.atom 45)) (.atom 12))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.head [55, 87, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0306 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 50, 55, 74, 75, 81, 87, 116, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 116 (List.Mem.head [118, 120, 126, 134])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.head [74, 75, 81, 87, 116, 117, 118, 120, 126, 134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0315 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 33, 39, 45, 50, 55, 81, 116, 117, 118, 120] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 45)) (.atom 12)) (.atom 39)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 39 (List.Mem.tail 45 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 81 (List.Mem.tail 116 (List.Mem.head [118, 120])))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 39 (List.Mem.head [50, 55, 81, 116, 117, 118, 120])))))))) (.atom (List.Mem.head [18, 31, 33, 39, 45, 50, 55, 81, 116, 117, 118, 120]))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.head [45, 50, 55, 81, 116, 117, 118, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0334 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 25, 31, 37, 38, 40, 42, 43, 49, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 117)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.head [37, 38, 40, 42, 43, 49, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 65 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 126, 134, 140])))))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [49, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0335 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 25, 31, 37, 38, 40, 42, 43, 49, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.and (.and (.atom 126) (.atom 31)) (.atom 117)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 65 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.head [134, 140]))))))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.head [37, 38, 40, 42, 43, 49, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 65 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 126, 134, 140])))))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [49, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0337 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 31, 37, 40, 42, 43, 49, 55, 70, 74, 75, 86, 116, 117, 126, 134, 140] →
      Formula.Holds valuation (.and (.atom 116) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.head [117, 126, 134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [49, 55, 70, 74, 75, 86, 116, 117, 126, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0339 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 8, 13, 18, 40, 42, 43, 45, 53, 55, 61, 69, 84, 88, 91, 97, 105, 109, 117, 138, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 8 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 53 (List.Mem.head [61, 69, 84, 88, 91, 97, 105, 109, 117, 138, 140])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0344 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 40, 42, 43, 45, 46, 55, 59, 62, 69, 88, 91, 97, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 18)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [59, 62, 69, 88, 91, 97, 109, 117, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [40, 42, 43, 45, 46, 55, 59, 62, 69, 88, 91, 97, 109, 117, 140])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 88, 91, 97, 109, 117, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0350 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 5, 13, 18, 25, 31, 40, 42, 45, 53, 55, 58, 61, 64, 69, 70, 84, 86, 88, 91, 97, 105, 109, 114, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 5) (.atom 117)) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.head [13, 18, 25, 31, 40, 42, 45, 53, 55, 58, 61, 64, 69, 70, 84, 86, 88, 91, 97, 105, 109, 114, 116, 117, 140]))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 69 (List.Mem.tail 70 (List.Mem.tail 84 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 114 (List.Mem.tail 116 (List.Mem.head [140])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 53 (List.Mem.head [58, 61, 64, 69, 70, 84, 86, 88, 91, 97, 105, 109, 114, 116, 117, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0360 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 24, 31, 37, 38, 40, 42, 45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 65 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 134, 140]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0361 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 24, 31, 37, 38, 40, 42, 45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 65 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 134, 140]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0363 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 31, 37, 38, 40, 42, 43, 45, 46, 55, 59, 62, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.or (.and (.and (.atom 117) (.atom 43)) (.atom 115)) (.and (.atom 42) (.atom 40))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 134, 140]))))))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 74, 75, 88, 91, 97, 109, 115, 117, 125, 134, 140])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [117, 125, 134, 140]))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0364 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 18, 31, 37, 38, 40, 42, 43, 45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.or (.and (.atom 117) (.atom 43)) (.and (.and (.atom 117) (.atom 42)) (.atom 40))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0365 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 24, 31, 37, 38, 40, 42, 45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 65 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 134, 140]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0366 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 24, 31, 37, 38, 40, 42, 45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 65 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 134, 140]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 45, 53, 55, 61, 65, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 18, 31, 37, 38, 40, 42, 43, 45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.or (.atom 117) (.and (.and (.and (.and (.atom 30) (.atom 117)) (.atom 43)) (.atom 42)) (.atom 40))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0370 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 22, 23, 25, 31, 37, 38, 40, 42, 43, 45, 46, 55, 59, 62, 69, 74, 75, 88, 91, 97, 104, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.or (.and (.atom 22) (.atom 117)) (.and (.and (.and (.atom 117) (.atom 43)) (.atom 42)) (.atom 40))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.head [23, 25, 31, 37, 38, 40, 42, 43, 45, 46, 55, 59, 62, 69, 74, 75, 88, 91, 97, 104, 109, 115, 117, 125, 134, 140])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 104 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0371 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 18, 31, 37, 38, 40, 42, 43, 45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 55) (.atom 140)) (.atom 43)) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.tail 134 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0372 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 40, 42, 43, 45, 46, 55, 59, 62, 69, 88, 91, 97, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 18)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [59, 62, 69, 88, 91, 97, 109, 117, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [40, 42, 43, 45, 46, 55, 59, 62, 69, 88, 91, 97, 109, 117, 140])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 88, 91, 97, 109, 117, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0373 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 40, 42, 43, 45, 46, 55, 59, 62, 69, 88, 91, 97, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 18)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [59, 62, 69, 88, 91, 97, 109, 117, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [40, 42, 43, 45, 46, 55, 59, 62, 69, 88, 91, 97, 109, 117, 140])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 88, 91, 97, 109, 117, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0374 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 18, 31, 37, 38, 40, 42, 43, 45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 55) (.atom 140)) (.atom 43)) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.head [59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.tail 134 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 45, 46, 53, 55, 59, 61, 62, 69, 74, 75, 84, 88, 91, 97, 105, 109, 115, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0377 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 25, 31, 37, 38, 40, 42, 45, 53, 55, 61, 69, 70, 74, 75, 84, 86, 88, 91, 97, 105, 109, 115, 116, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.and (.atom 55) (.atom 140)) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 53 (List.Mem.head [61, 69, 70, 74, 75, 84, 86, 88, 91, 97, 105, 109, 115, 116, 117, 125, 134, 140])))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.tail 134 (List.Mem.head []))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [45, 53, 55, 61, 69, 70, 74, 75, 84, 86, 88, 91, 97, 105, 109, 115, 116, 117, 125, 134, 140])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 45, 53, 55, 61, 69, 70, 74, 75, 84, 86, 88, 91, 97, 105, 109, 115, 116, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0387 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 25, 37, 40, 42, 43, 49, 58, 61, 64, 74, 75, 114, 116, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.tail 116 (List.Mem.head [126, 134])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0389 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 96, 116] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 36 (List.Mem.tail 96 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0390 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 40, 68, 112] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 16 (List.Mem.head [68, 112])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0393 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134])))))) (.atom (List.Mem.head [25, 40, 42, 74, 75, 116, 117, 134])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0395 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 117)) (.atom 91)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.head [37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [115, 117, 125, 134, 140])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0400 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 116, 117] →
      Formula.Holds valuation (.and (.atom 42) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [116, 117])))) (.atom (List.Mem.head [40, 42, 116, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0401 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 52, 55, 60, 117, 140])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0404 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 83, 91, 109, 117] →
      Formula.Holds valuation (.and (.atom 109) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.head [117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0405 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 69, 88, 91, 97, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 109) (.atom 117)) (.atom 69)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.head [117, 140])))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 88 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [140])))))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [88, 91, 97, 109, 117, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0406 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 91)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.head []))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [117])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0408 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.head [121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0409 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 55, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 18 (List.Mem.head [117]))) (.atom (List.Mem.head [55, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0410 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 40, 42, 46, 55, 62, 109, 117] →
      Formula.Holds valuation (.atom 46) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 62, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0411 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 55, 79, 117, 140] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0412 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 104, 109, 117] →
      Formula.Holds valuation (.and (.atom 109) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.tail 104 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.tail 104 (List.Mem.tail 109 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0413 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.head [140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0414 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 40, 45, 55, 57, 109, 117] →
      Formula.Holds valuation (.atom 109) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.head [117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0415 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117, 124] →
      Formula.Holds valuation (.and (.and (.and (.atom 109) (.atom 117)) (.atom 55)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 55 (List.Mem.head [117, 124]))) (.atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [124]))))) (.atom (List.Mem.head [109, 117, 124]))) (.atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0416 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 97, 109, 117, 122] →
      Formula.Holds valuation (.and (.atom 109) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 97 (List.Mem.head [117, 122])))))) (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [122]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0417 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.head [140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0418 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 45, 55, 59, 67, 69, 84, 117, 131, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 69)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.head [131, 140]))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.head [84, 117, 131, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0419 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 55, 138, 140] →
      Formula.Holds valuation (.and (.atom 138) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 8 (List.Mem.tail 55 (List.Mem.head [140])))) (.atom (List.Mem.head [55, 138, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0424 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [119, 130] →
      Formula.Holds valuation (.atom 130) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 119 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0425 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 82, 117] →
      Formula.Holds valuation (.atom 82) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0427 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.head [117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0511 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0513 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0522 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0598 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))) (.atom (List.Mem.head [109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0627 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0645 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 140] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [140]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0655 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 131)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [131])))) (.atom (List.Mem.head [109, 117, 131]))) (.atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0656 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head [131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0666 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 140] →
      Formula.Holds valuation (.atom 140) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 30 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0672 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [45, 55, 83, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.head []))))) (.atom (List.Mem.tail 45 (List.Mem.head [83, 117])))) (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0705 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [27, 42, 117] →
      Formula.Holds valuation (.atom 27) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0737 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 25, 117] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 25, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0745 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 25, 48, 55, 71, 121] →
      Formula.Holds valuation (.atom 48) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.head [55, 71, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0748 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0773 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 40, 90, 117] →
      Formula.Holds valuation (.atom 90) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0807 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 25, 27, 42, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 25 (List.Mem.tail 27 (List.Mem.tail 42 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0817 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 72, 117] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0818 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 72, 87, 117] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [87, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0827 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 43, 72, 117, 123] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.head [117, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0836 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 72, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [72, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0847 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 72, 117, 123] →
      Formula.Holds valuation (.and (.atom 72) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [117, 123])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 72, 117, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0863 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 117, 123, 129] →
      Formula.Holds valuation (.atom 129) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 117 (List.Mem.tail 123 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0892 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 43, 72, 90, 117, 123, 129] →
      Formula.Holds valuation (.and (.atom 25) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [40, 42, 43, 72, 90, 117, 123, 129]))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 43, 72, 90, 117, 123, 129])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0920 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [55, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0921 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 25, 31, 34, 37, 38, 40, 42, 58, 64, 71, 74, 75, 91, 115, 117, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.head [117, 125, 131, 134, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0938 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [76, 123, 140] →
      Formula.Holds valuation (.and (.atom 123) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 76 (List.Mem.head [140]))) (.atom (List.Mem.head [123, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0965 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 22, 39, 40, 41, 42, 53, 55, 61, 79, 84, 105, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 79 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0969 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 37, 40, 42, 43, 45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0972 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 61) (.atom 53)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.head [84, 105, 109, 117, 140])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 61, 84, 105, 109, 117, 140]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.head [140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0974 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0978 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [24, 31, 40, 42, 65, 117] →
      Formula.Holds valuation (.atom 65) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0980 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.and (.atom 17) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [22, 39, 41, 79, 117])) (.atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 39 (List.Mem.head [79, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0988 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 31, 40, 42, 53, 55, 61, 79, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.head [61, 79, 84, 105, 109, 117, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1000 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 17 (List.Mem.head [40, 55, 109, 117]))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [55, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1001 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 55, 79, 117] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1012 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 37, 40, 42, 43, 45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1031 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 69, 91, 117])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1052 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1054 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.and (.and (.atom 55) (.atom 18)) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1064 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 117 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 55) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1089 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1093 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1099 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1103 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 42 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 11)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 42 (List.Mem.head [])))) (.atom (List.Mem.head [42, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1147 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 22, 24, 31, 37, 38, 39, 40, 41, 42, 43, 49, 65, 74, 75, 79, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 79 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [24, 31, 40, 42, 65, 117] →
      Formula.Holds valuation (.atom 65) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1153 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 38)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.head [37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 74, 75, 91, 115, 117, 125, 134, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1162 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.and (.atom 38) (.atom 65)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 65, 74, 75, 91, 115, 117, 125, 134])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [74, 75, 91, 115, 117, 125, 134]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1163 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1170 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1172 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.head [41, 79, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1203 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 49) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [74, 75, 117, 126, 134])))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1207 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.atom 70) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [86, 116, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1212 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.head [41, 79, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1214 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 25, 31, 39, 40, 41, 42, 55, 70, 79, 86, 116, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 79 (List.Mem.tail 86 (List.Mem.tail 116 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1215 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.and (.atom 17) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [22, 39, 41, 79, 117])) (.atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 39 (List.Mem.head [79, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 33, 40, 73, 117] →
      Formula.Holds valuation (.and (.atom 73) (.atom 33)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 25 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [117]))))) (.atom (List.Mem.tail 25 (List.Mem.head [40, 73, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1232 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1233 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.atom 140) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.tail 134 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1239 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [70, 86, 116, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1241 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 25, 31, 37, 38, 40, 42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 42) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140]))))))))) (.atom (List.Mem.head [24, 25, 31, 37, 38, 40, 42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1246 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 25, 31, 37, 38, 40, 42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 65 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 134, 140]))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1250 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 13, 22, 25, 31, 33, 34, 40, 42, 50, 51, 56, 58, 61, 64, 71, 114, 115, 117, 121, 128, 131] →
      Formula.Holds valuation (.or (.atom 117) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 114 (List.Mem.tail 115 (List.Mem.head [121, 128, 131])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1251 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 13, 21, 22, 31, 33, 34, 40, 42, 50, 51, 56, 58, 61, 64, 114, 117, 121, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 13 (List.Mem.tail 21 (List.Mem.tail 22 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 114 (List.Mem.head [121, 128])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1259 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 29, 33, 34, 40, 58, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 121 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.head [115, 117, 121, 131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1260 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 13, 21, 22, 31, 33, 34, 40, 42, 50, 51, 56, 58, 61, 64, 114, 117, 121, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 13 (List.Mem.tail 21 (List.Mem.tail 22 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 114 (List.Mem.head [121, 128])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1265 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 42, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.atom 58) (.atom 61)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [61, 64, 114, 117]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.head [64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1266 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 42, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.atom 58) (.atom 61)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [61, 64, 114, 117]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.head [64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1273 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128] →
      Formula.Holds valuation (.atom 50) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [58, 61, 117, 128]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1274 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 31, 34, 40, 42, 50, 51, 61, 117] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 31, 34, 40, 42, 50, 51, 61, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1279 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 21, 22, 117] →
      Formula.Holds valuation (.atom 21) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [22, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1281 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 21, 22, 117] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 21 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1287 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 33, 40, 56, 61, 117, 121] →
      Formula.Holds valuation (.and (.atom 56) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [61, 117, 121])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [121])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1309 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 25, 29, 33, 40, 56, 61, 64, 71, 117, 121, 131] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.head [40, 56, 61, 64, 71, 117, 121, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1315 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [119, 130] →
      Formula.Holds valuation (.atom 130) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 119 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1320 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1325 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [39, 55, 117, 121] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 39 (List.Mem.head [117, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1328 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 29, 33, 34, 40, 58, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.and (.and (.atom 64) (.atom 117)) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.head [71, 115, 117, 121, 131]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.head [121, 131]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [131]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1329 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 29, 33, 34, 40, 58, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 131)) (.atom 115)) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.head [121, 131])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 121 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.head [117, 121, 131])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.head [115, 117, 121, 131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1353 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 33, 40, 56, 61, 117, 121] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.head [40, 56, 61, 117, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1356 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1360 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 25, 33, 34, 40, 56, 58, 61, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.atom 121) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [131])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1365 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 34, 40, 58, 64, 71, 115, 117, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1421 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 25, 34, 40, 42, 43, 45, 46, 55, 58, 59, 62, 64, 71, 109, 115, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 58 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 122 (List.Mem.head []))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 34 (List.Mem.head [42, 43, 45, 46, 55, 58, 59, 62, 64, 71, 109, 115, 117, 122, 131])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1446 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 40, 42, 43, 45, 46, 55, 59, 62, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 131)) (.atom 11)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 109 (List.Mem.head [122, 131]))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.tail 122 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [13, 40, 42, 43, 45, 46, 55, 59, 62, 109, 117, 122, 131])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1456 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1468 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 40, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 45)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.head [55, 84, 91, 97, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1524 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 79, 109, 117, 124] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 79, 109, 117, 124])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1526 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 79, 109, 117, 124] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 79, 109, 117, 124]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 55, 79, 109, 117, 124])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1536 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 79, 109, 117, 124] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 79 (List.Mem.tail 109 (List.Mem.head [124])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1537 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 31, 40, 42, 52, 54, 55, 66, 70, 71, 73, 74, 75, 86, 95, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 70 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 95 (List.Mem.head [117, 126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1546 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 14, 40, 44, 45, 55, 59, 67, 69, 84, 91, 97, 109, 117, 131] →
      Formula.Holds valuation (.and (.atom 67) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [69, 84, 91, 97, 109, 117, 131])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [131])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1559 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 55, 69, 91, 94, 106, 109, 117, 121] →
      Formula.Holds valuation (.and (.atom 106) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.head [109, 117, 121])))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1564 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 55, 69, 91, 94, 106, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1565 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 55, 69, 91, 94, 106, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1577 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 52, 54, 71, 95, 116, 117] →
      Formula.Holds valuation (.atom 54) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [71, 95, 116, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1583 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 42, 52, 55, 69, 74, 91, 93, 94, 106, 109, 117, 121, 134] →
      Formula.Holds valuation (.and (.and (.atom 52) (.atom 117)) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 69, 74, 91, 93, 94, 106, 109, 117, 121, 134]))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 91 (List.Mem.tail 93 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121, 134]))))))))))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.head [69, 74, 91, 93, 94, 106, 109, 117, 121, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1593 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 54, 55, 71, 74, 93, 95, 116, 117, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 93 (List.Mem.tail 95 (List.Mem.tail 116 (List.Mem.head [134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1598 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 74, 93, 117, 134] →
      Formula.Holds valuation (.or (.and (.and (.atom 52) (.atom 117)) (.atom 55)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.head [55, 74, 93, 117, 134])))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 93 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [74, 93, 117, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1607 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 52) (.atom 117)) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.head [55, 60, 117, 140])))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140])))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [60, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 52, 55, 60, 117, 140])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1611 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1623 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 40, 44, 45, 55, 59, 67, 69, 84, 117, 131] →
      Formula.Holds valuation (.and (.atom 67) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [69, 84, 117, 131])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.head [131]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1646 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 37, 40, 42, 43, 49, 52, 55, 66, 73, 74, 75, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.atom 126) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.head [126, 132, 134])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1653 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 37, 40, 42, 43, 49, 52, 55, 66, 73, 74, 75, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.atom 126) (.atom 66)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.head [73, 74, 75, 111, 116, 117, 126, 132, 134])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1671 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 75, 117, 126] →
      Formula.Holds valuation (.and (.atom 75) (.atom 37)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.head [117, 126]))) (.atom (List.Mem.head [75, 117, 126])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1673 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 75) (.atom 74)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.head [117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1679 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 74)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 117 (List.Mem.tail 126 (List.Mem.head []))))))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1682 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.and (.atom 75) (.atom 37)) (.atom 74)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.head [117, 126, 134])))))) (.atom (List.Mem.head [43, 49, 74, 75, 117, 126, 134]))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1686 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1689 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 25, 35, 40, 42, 52, 66, 73, 74, 75, 111, 116, 117, 126, 134] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.head [52, 66, 73, 74, 75, 111, 116, 117, 126, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1705 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 74) (.atom 49)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [74, 75, 117, 126, 134]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1725 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 40, 42, 52, 54, 55, 66, 71, 73, 75, 95, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 73)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.head [75, 95, 111, 116, 117, 126, 132, 134]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.head [126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1728 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 66, 73, 75, 116, 117, 126, 132] →
      Formula.Holds valuation (.and (.atom 132) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.tail 126 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [126, 132])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1729 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 40, 42, 52, 66, 73, 75, 111, 117, 126] →
      Formula.Holds valuation (.and (.atom 35) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.head [40, 42, 52, 66, 73, 75, 111, 117, 126])))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.head [42, 52, 66, 73, 75, 111, 117, 126]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1730 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 66, 73, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 73) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 66 (List.Mem.head [75, 117, 126, 134]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))) (.atom (List.Mem.tail 5 (List.Mem.head [66, 73, 75, 117, 126, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1733 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 40, 42, 52, 54, 55, 66, 71, 73, 75, 95, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 66)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.head [71, 73, 75, 95, 111, 116, 117, 126, 132, 134]))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.head [126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1736 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 24, 25, 31, 37, 38, 40, 42, 55, 65, 66, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.head [37, 38, 40, 42, 55, 65, 66, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 65 (List.Mem.tail 66 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 126, 134, 140]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1741 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 33, 40, 56, 61, 117, 121] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.head [40, 56, 61, 117, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1742 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.and (.and (.atom 38) (.atom 65)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 65, 74, 75, 91, 115, 117, 125, 134])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [74, 75, 91, 115, 117, 125, 134])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1743 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.and (.and (.atom 31) (.atom 38)) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.head [37, 38, 40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1747 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 38) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 74, 75, 91, 115, 117, 125, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1748 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1750 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1760 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 31, 117] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [31, 117]))) (.atom (List.Mem.head [6, 31, 117]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 31 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1761 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.head [49, 74, 75, 117, 126, 134])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1769 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 74, 100, 117, 134] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1776 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 74, 100, 117, 134] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1777 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 74, 100, 117, 134] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1782 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1783 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1785 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 125) (.atom 24)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140])))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1791 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 31, 40, 42, 58, 61, 64, 66, 74, 75, 114, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.head [126, 134])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1792 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 42, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.atom 58) (.atom 61)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [61, 64, 114, 117]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.head [64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1797 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 31, 40, 42, 58, 61, 64, 66, 74, 75, 114, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.head [126, 134]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.head [42, 58, 61, 64, 66, 74, 75, 114, 117, 126, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1810 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.and (.atom 86) (.atom 70)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.head [116, 117])))))))) (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [86, 116, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1813 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 20, 22, 31, 40, 42, 69, 70, 86, 117, 121] →
      Formula.Holds valuation (.and (.atom 20) (.atom 22)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [22, 31, 40, 42, 69, 70, 86, 117, 121]))) (.atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.head [31, 40, 42, 69, 70, 86, 117, 121])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1814 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 20, 22, 25, 31, 39, 40, 42, 55, 69, 70, 86, 116, 117, 121, 126] →
      Formula.Holds valuation (.atom 31) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.head [39, 40, 42, 55, 69, 70, 86, 116, 117, 121, 126]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1818 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.and (.atom 86) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.head [116, 117])))))))) (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 86 (List.Mem.tail 116 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1819 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 86, 117, 126] →
      Formula.Holds valuation (.and (.and (.and (.atom 126) (.atom 31)) (.atom 86)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 86 (List.Mem.tail 117 (List.Mem.head []))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [39, 40, 42, 86, 117, 126])))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117, 126])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 86 (List.Mem.head [126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1820 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 20, 22, 25, 31, 39, 40, 42, 55, 69, 70, 86, 116, 117, 121, 126] →
      Formula.Holds valuation (.and (.atom 86) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 70 (List.Mem.head [116, 117, 121, 126]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.head [42, 55, 69, 70, 86, 116, 117, 121, 126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1834 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1837 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1845 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1849 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1852 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 40, 44, 45, 55, 59, 67, 69, 84, 117, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.tail 117 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1861 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 37, 40, 42, 43, 49, 74, 75, 89, 112, 116, 117, 126, 134, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.tail 116 (List.Mem.head [126, 134, 141]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1875 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1888 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 40, 68, 112] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 16 (List.Mem.tail 40 (List.Mem.tail 68 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1890 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1893 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.and (.atom 89) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.head [112, 117, 141])))) (.atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1895 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1898 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1903 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1907 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 37, 40, 42, 43, 49, 74, 75, 89, 112, 116, 117, 126, 134, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.tail 116 (List.Mem.head [126, 134, 141]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1911 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 37, 40, 42, 43, 49, 74, 75, 89, 112, 116, 117, 126, 134, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.tail 116 (List.Mem.head [126, 134, 141]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1915 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1948 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [128])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1960 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 31, 34, 40, 42, 50, 51, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 114 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [50, 51, 58, 61, 64, 114, 117])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.head [42, 50, 51, 58, 61, 64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1967 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 13, 31, 34, 37, 40, 42, 43, 49, 50, 51, 58, 61, 64, 74, 75, 114, 117, 126, 128, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.head [126, 128, 134])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1971 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 31, 40, 42, 52, 54, 55, 66, 70, 71, 73, 74, 75, 86, 95, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 70 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 95 (List.Mem.head [117, 126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2009 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 43, 49, 65, 74, 75, 91, 115, 116, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 126, 134, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [128])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2054 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [128, 140])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2067 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 45)) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2104 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 42, 55, 117] →
      Formula.Holds valuation (.and (.atom 30) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [42, 55, 117])) (.atom (List.Mem.tail 30 (List.Mem.head [55, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2111 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 30] →
      Formula.Holds valuation (.and (.atom 30) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [30])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2130 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 96, 116] →
      Formula.Holds valuation (.atom 36) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [96, 116]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2131 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 96, 116] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 36 (List.Mem.tail 96 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 36, 40, 42, 55, 116, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 116 (List.Mem.head [])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [116, 117]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 55, 116, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2138 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 36, 40, 42, 55, 116, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [116, 117])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 55, 116, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2156 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2157 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 113)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.head [116, 117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2163 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [96, 113, 116, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2164 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.head [42, 55, 96, 113, 116, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2169 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 45, 55, 59, 71, 79, 107, 108, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 71 (List.Mem.tail 79 (List.Mem.tail 107 (List.Mem.tail 108 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.tail 122 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [79, 107, 108, 109, 117, 122, 131]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2170 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 63, 77, 78, 96, 99, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2173 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2176 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2177 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 116) (.atom 77)) (.atom 63)) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 113 (List.Mem.head [117, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [77, 78, 113, 116, 117, 140])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [63, 77, 78, 113, 116, 117, 140]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [55, 63, 77, 78, 113, 116, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2181 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 96, 110, 113, 117] →
      Formula.Holds valuation (.atom 110) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.head [113, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2188 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.head [117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2192 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2194 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 116) (.atom 77)) (.atom 117)) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 113 (List.Mem.head [117, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [140]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [55, 63, 77, 78, 113, 116, 117, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.head [42, 55, 63, 77, 78, 113, 116, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2196 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 38, 40, 42, 55, 63, 77, 78, 96, 99, 110, 113, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 116) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 110 (List.Mem.tail 113 (List.Mem.head [117, 140])))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 110 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [140])))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.head [42, 55, 63, 77, 78, 96, 99, 110, 113, 116, 117, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2201 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 37, 38, 40, 42, 43, 49, 55, 63, 74, 75, 77, 78, 96, 99, 113, 116, 117, 126, 134, 140] →
      Formula.Holds valuation (.and (.atom 116) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 126, 134, 140])))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [126, 134, 140]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2206 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 38, 40, 42, 55, 63, 77, 78, 96, 99, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2221 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2223 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 38, 40, 42, 55, 63, 77, 78, 96, 99, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2245 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117] →
      Formula.Holds valuation (.or (.atom 22) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.head [23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2252 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 25, 40, 55, 103, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [25, 40, 55, 103, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [103, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2260 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 25, 42, 55, 71, 79, 107, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 107)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [25, 42, 55, 71, 79, 107, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 71 (List.Mem.tail 79 (List.Mem.head [117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2264 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.head [42, 55, 59, 71, 79, 103, 107, 108, 109, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2266 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 55, 71, 79, 108, 117] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 22 (List.Mem.head [25, 40, 55, 71, 79, 108, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2277 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 55, 71, 79, 91, 103, 104, 107, 108, 109, 117] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [23, 25, 40, 42, 55, 71, 79, 91, 103, 104, 107, 108, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117, 140] →
      Formula.Holds valuation (.and (.atom 18) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2315 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 43, 55, 140] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [55, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2320 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2377 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2402 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 43, 55, 140] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [55, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2411 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 117, 131] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 117, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2496 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 69, 88, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [69, 88, 91, 97, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2502 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 102)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 55 (List.Mem.tail 102 (List.Mem.tail 117 (List.Mem.head []))))) (.atom (List.Mem.tail 55 (List.Mem.head [117, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2508 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2522 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2552 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 117, 131, 140] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 18)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [59, 62, 69, 91, 117, 131, 140])))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 117, 131, 140])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 91, 117, 131, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2607 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2622 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 40, 42, 55, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [62, 117]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.head [55, 62, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2634 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2658 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117, 140] →
      Formula.Holds valuation (.and (.atom 43) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 69, 91, 117, 140]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head [131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131]))))) (.atom (List.Mem.tail 13 (List.Mem.head [42, 43, 46, 55, 59, 62, 117, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2673 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.or (.atom 55) (.and (.atom 18) (.atom 43))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [59, 62, 117, 131]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2711 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 117, 140] →
      Formula.Holds valuation (.and (.atom 55) (.atom 140)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.head [59, 117, 140]))) (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2725 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 40, 43, 55, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.head [117]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.head [55, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2788 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 55)) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 69, 91, 117])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2794 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2800 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 69)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.head [91, 117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2810 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 104, 109, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [91, 104, 109, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2824 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 117] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 91, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2826 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.head [117, 125, 134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2827 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2835 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 104, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 22) (.atom 117)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [23, 25, 40, 42, 55, 91, 104, 109, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.tail 104 (List.Mem.tail 109 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 91, 104, 109, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2860 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [109, 117]))))) (.atom (List.Mem.tail 13 (List.Mem.head [55, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2868 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2878 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 42, 55, 69, 109, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 33 (List.Mem.head [55, 69, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2898 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.head [45, 55, 84, 109, 116, 117, 121]))) (.atom (List.Mem.head [42, 45, 55, 84, 109, 116, 117, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2903 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 45, 55, 84, 109, 116, 117, 121]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2907 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.tail 116 (List.Mem.head [121]))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [84, 109, 116, 117, 121]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2915 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 45, 55, 84, 109, 116, 117, 121]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2918 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 33, 40, 42, 43, 45, 46, 55, 59, 69, 91, 109, 117] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 59, 69, 91, 109, 117]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 33 (List.Mem.head [42, 43, 45, 46, 55, 59, 69, 91, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2930 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2961 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 42, 55, 69, 109, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 42 (List.Mem.head [69, 109, 117])))) (.atom (List.Mem.tail 33 (List.Mem.head [55, 69, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2964 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 43, 45, 46, 55, 69, 91, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2990 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 25, 48, 55, 71, 121] →
      Formula.Holds valuation (.atom 48) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.head [55, 71, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2996 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 72, 117, 123] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [117, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3006 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 17 (List.Mem.head [40, 55, 109, 117]))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [55, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3012 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3015 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 17, 31, 40, 42, 43, 55, 58, 61, 64, 72, 109, 114, 116, 117, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 58, 61, 64, 72, 109, 114, 116, 117, 123])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [42, 43, 55, 58, 61, 64, 72, 109, 114, 116, 117, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3027 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 69, 109, 117] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.head [40, 42, 43, 55, 59, 62, 69, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3030 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 31, 37, 38, 40, 42, 45, 52, 55, 59, 60, 74, 75, 78, 91, 115, 117, 121, 125, 134, 135, 140] →
      Formula.Holds valuation (.atom 140) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 60 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 78 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 121 (List.Mem.tail 125 (List.Mem.tail 134 (List.Mem.tail 135 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3056 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3062 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3067 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 115)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.head [117, 125, 134, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3072 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3073 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3081 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3084 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 37, 40, 43, 49, 68, 74, 75, 112, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 112) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 68 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 126, 134])))))))))) (.atom (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.head [49, 68, 74, 75, 112, 117, 126, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3090 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.and (.atom 42) (.atom 13)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134]))))) (.atom (List.Mem.head [25, 40, 42, 74, 75, 116, 117, 134]))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3094 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 31, 37, 38, 40, 42, 66, 73, 74, 75, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 126) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.head [134, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3095 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 37, 40, 43, 49, 66, 73, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 117 (List.Mem.head [134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 37 (List.Mem.head [43, 49, 66, 73, 74, 75, 117, 126, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3101 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140]))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [60, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3136 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 96, 99, 113, 116, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [55, 96, 99, 113, 116, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3164 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 103, 104, 109, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 91, 103, 104, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3177 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 43, 45, 46, 55, 62, 69, 91, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [62, 69, 91, 109, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 62, 69, 91, 109, 117]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 62, 69, 91, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3184 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 131)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head [131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 117 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 96, 99, 103, 104, 109, 113, 116, 117, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 91, 96, 99, 103, 104, 109, 113, 116, 117, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3218 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 40, 42, 46, 55, 62, 109, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 46 (List.Mem.head [62, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3223 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 59, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [59, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3235 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3245 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.head [42, 43, 55, 59, 62, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3250 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 18)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3262 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 117, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head []))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3288 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 78, 117, 121, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [78, 117, 121, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3298 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3314 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 42, 55, 69, 109, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 33 (List.Mem.head [55, 69, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3316 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3323 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 42, 55, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 42 (List.Mem.head [62, 117])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.head [55, 62, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3326 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 78, 117, 121, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [78, 117, 121, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3336 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 42, 55, 62, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 42 (List.Mem.head [62, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3348 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 40, 42, 55, 62, 78, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [62, 78, 117]))))) (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.head [55, 62, 78, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3349 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 40, 42, 55, 62, 78, 117] →
      Formula.Holds valuation (.and (.and (.and (.atom 55) (.atom 42)) (.atom 78)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [62, 78, 117]))))) (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.head [55, 62, 78, 117]))))) (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 62 (List.Mem.head [117])))))))) (.atom (List.Mem.tail 36 (List.Mem.head [42, 55, 62, 78, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3356 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 102, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [109, 117, 122, 131])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.or (.atom 25) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3373 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 40, 42, 45, 55, 59, 117, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [140]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3381 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3386 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3401 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3402 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.and (.atom 1) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3414 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3418 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117]))))) (.atom (List.Mem.head [45, 55, 83, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3421 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 37, 38, 40, 42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3435 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 37, 38, 40, 42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3442 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 37, 38, 40, 42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3443 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 31, 33, 37, 38, 40, 42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 125, 131, 134, 140] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 125, 131, 134, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 125, 131, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 31, 33, 37, 38, 40, 42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 43)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [123, 125, 131, 134, 140])))))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 123, 125, 131, 134, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 123, 125, 131, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3458 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 122] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [122]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3464 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.head [117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3470 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3476 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 81, 85, 117, 128] →
      Formula.Holds valuation (.and (.atom 117) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 81 (List.Mem.tail 85 (List.Mem.head [128]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 81 (List.Mem.head [117, 128])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3479 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 81, 85, 117, 128] →
      Formula.Holds valuation (.and (.atom 85) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 81 (List.Mem.head [117, 128])))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.head [42, 50, 58, 61, 81, 85, 117, 128])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3487 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 40, 45, 55, 109, 117, 122] →
      Formula.Holds valuation (.and (.atom 109) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [117, 122])))))) (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3504 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 80, 101, 109, 117, 122] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [59, 80, 101, 109, 117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3509 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 25, 33, 40, 42, 43, 48, 55, 59, 62, 71, 117, 121] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [25, 33, 40, 42, 43, 48, 55, 59, 62, 71, 117, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3513 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3519 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 40, 45, 55, 59, 80, 101, 109, 117, 122] →
      Formula.Holds valuation (.and (.atom 109) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 80 (List.Mem.tail 101 (List.Mem.head [117, 122]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.head [59, 80, 101, 109, 117, 122]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3527 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 40, 42, 55, 80, 101, 117, 122] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [80, 101, 117, 122]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [55, 80, 101, 117, 122]))))) (.atom (List.Mem.tail 32 (List.Mem.head [42, 55, 80, 101, 117, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3535 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 40, 42, 55, 80, 101, 117, 122] →
      Formula.Holds valuation (.and (.atom 55) (.atom 101)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [80, 101, 117, 122]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 80 (List.Mem.head [117, 122]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3567 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 45, 55, 59, 61, 102, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 122) (.atom 102)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 102 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.head [109, 117, 122, 131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3573 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 45, 55, 59, 61, 102, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 102) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.head [109, 117, 122, 131]))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [42, 45, 55, 59, 61, 102, 109, 117, 122, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3584 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 55) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3590 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 102, 117, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 102 (List.Mem.tail 117 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3591 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 102, 117, 122] →
      Formula.Holds valuation (.and (.atom 42) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 102, 117, 122])))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 102 (List.Mem.tail 117 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3608 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 61, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.head [117, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3626 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117]))))))))) (.atom (List.Mem.head [13, 18, 33, 40, 42, 43, 55, 59, 62, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3632 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117]))))) (.atom (List.Mem.head [45, 55, 83, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3642 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3648 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 40, 43, 55, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.head [117]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.head [55, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3655 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 82, 117] →
      Formula.Holds valuation (.atom 82) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3700 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 25, 40, 42, 55, 71, 103, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [25, 40, 42, 55, 71, 103, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [71, 103, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3705 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 81, 85, 117] →
      Formula.Holds valuation (.atom 85) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.tail 81 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3735 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 40, 55, 117] →
      Formula.Holds valuation (.atom 25) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [40, 55, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3746 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 33, 40, 73, 117] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.head [40, 73, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3752 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3758 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 103, 104, 109, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 25, 40, 42, 55, 91, 103, 104, 109, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.tail 103 (List.Mem.tail 104 (List.Mem.tail 109 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3763 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 42, 55, 117] →
      Formula.Holds valuation (.atom 25) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 55, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3787 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [119, 130] →
      Formula.Holds valuation (.atom 130) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 119 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3793 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 25, 117] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 25, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3799 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 25, 27, 48, 55, 71, 121] →
      Formula.Holds valuation (.atom 27) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.head [48, 55, 71, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3812 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 117 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3823 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 33, 117] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [33, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3843 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3849 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117, 140] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117, 140]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3874 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 55) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [59, 62, 69, 91, 109, 117, 122, 131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3908 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 59, 109, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [59, 109, 117])))) (.atom (List.Mem.tail 13 (List.Mem.head [55, 59, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3927 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 97, 109, 117, 122] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [122])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3931 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3937 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 59, 69, 83, 97, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 55, 59, 69, 83, 97, 109, 117, 122, 131])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 59, 69, 83, 97, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 55, 59, 69, 83, 97, 109, 117, 122, 131])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3955 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.head []))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.head [91, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3956 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.and (.atom 117) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3963 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3965 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3970 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.head [69, 83, 91, 109, 117, 121])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 55, 69, 83, 91, 109, 117, 121]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4047 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 25, 31, 40, 42, 55, 57, 59, 71, 73, 79, 106, 107, 109, 115, 117, 124, 125, 128, 140] →
      Formula.Holds valuation (.or (.and (.atom 115) (.atom 25)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 79 (List.Mem.tail 106 (List.Mem.tail 107 (List.Mem.tail 109 (List.Mem.head [117, 124, 125, 128, 140]))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.head [31, 40, 42, 55, 57, 59, 71, 73, 79, 106, 107, 109, 115, 117, 124, 125, 128, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4055 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 31, 40, 42, 55, 59, 73, 106, 109, 115, 117, 125, 140] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [117, 125, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4068 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 40, 68, 112] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 16 (List.Mem.head [68, 112])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4087 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 106, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 106 (List.Mem.head [])))) (.atom (List.Mem.head [106, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4091 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 73, 106, 115, 117, 125] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 73, 106, 115, 117, 125])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 115 (List.Mem.head [125]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4092 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 73, 106, 115, 117, 125] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 73, 106, 115, 117, 125])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 115 (List.Mem.head [125]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4119 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 25, 31, 33, 40, 42, 55, 59, 69, 74, 75, 83, 109, 115, 117, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 109) (.atom 117)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 83 (List.Mem.head [115, 117, 134, 140]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [134, 140])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [55, 59, 69, 74, 75, 83, 109, 115, 117, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4125 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 69, 83, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head [])))))) (.atom (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.head [109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4149 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 40, 68, 112] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 16 (List.Mem.tail 40 (List.Mem.tail 68 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4179 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [45, 55, 83, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.head []))))) (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4211 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 117, 123, 129] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [117, 123, 129]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4232 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 55, 79, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 79)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 42 (List.Mem.head [79, 117]))) (.atom (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4242 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.tail 116 (List.Mem.head [121])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4244 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 17 (List.Mem.head [40, 55, 109, 117]))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4255 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 25, 42, 55, 71, 79, 107, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 107)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [25, 42, 55, 71, 79, 107, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 71 (List.Mem.tail 79 (List.Mem.head [117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4262 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 79, 84, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 79, 84, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4263 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 79, 117, 140] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 79, 117, 140])))) (.atom (List.Mem.tail 13 (List.Mem.head [42, 55, 79, 117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4285 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.and (.atom 61) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.head [84, 105, 109, 117, 140])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.head [140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4302 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 40, 42, 53, 55, 61, 75, 84, 89, 105, 109, 112, 117, 137, 140, 141] →
      Formula.Holds valuation (.and (.atom 1) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [13, 17, 40, 42, 53, 55, 61, 75, 84, 89, 105, 109, 112, 117, 137, 140, 141])) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.head [42, 53, 55, 61, 75, 84, 89, 105, 109, 112, 117, 137, 140, 141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4313 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 55, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4314 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 19, 40, 42, 53, 55, 57, 61, 75, 84, 89, 105, 109, 112, 117, 137, 140, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 19 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 61 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 89 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [137, 140, 141]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4323 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 1)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.head [61, 84, 105, 109, 117, 140]))))))) (.atom (List.Mem.head [13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140]))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4335 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 55, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4346 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 57, 59, 84, 109, 117, 128, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 57, 59, 84, 109, 117, 128, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4374 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 36, 40, 42, 45, 55, 57, 59, 109, 117, 128, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4384 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 36, 40, 42, 45, 55, 57, 59, 109, 117, 128, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4412 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 87, 117, 123, 129] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [87, 117, 123, 129]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4422 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 39, 40, 42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 87 (List.Mem.tail 90 (List.Mem.tail 109 (List.Mem.head [123, 129])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4429 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.head [117, 121]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4431 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 39, 40, 42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129] →
      Formula.Holds valuation (.and (.atom 86) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.head [87, 90, 109, 117, 123, 129]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 87 (List.Mem.tail 90 (List.Mem.tail 109 (List.Mem.head [123, 129]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4459 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 39, 40, 42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.head [42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4466 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 40, 42, 45, 55, 59, 117, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [140]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4479 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 97, 109, 117, 122, 124] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [55, 59, 97, 109, 117, 122, 124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4487 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 40, 44, 45, 55, 59, 67, 69, 84, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 67) (.atom 84)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [69, 84, 117, 131])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.head [117, 131]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.head [131]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4497 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 40, 42, 45, 55, 59, 117, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [140]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4529 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 14, 40, 42, 44, 45, 55, 59, 67, 69, 84, 97, 102, 109, 117, 122, 124, 131, 135, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.tail 97 (List.Mem.tail 102 (List.Mem.tail 109 (List.Mem.head [122, 124, 131, 135, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4544 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 106, 117, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 106 (List.Mem.head [140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4549 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 57, 59, 84, 109, 117, 128, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 57, 59, 84, 109, 117, 128, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4550 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 57, 59, 84, 109, 117, 128, 140] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 57, 59, 84, 109, 117, 128, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4636 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [53, 55, 61, 84, 105, 109, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4645 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4647 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4669 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 109) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.head [117, 140])))))))))))
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0133
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0138
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0139
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0141
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0154
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0159
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0235
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0244
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0246
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0253
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0270
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0281
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0301
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0306
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0315
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0417
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0418
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0419
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0424
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0425
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0427
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0511
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0513
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0522
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0598
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0627
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0645
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0655
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0656
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0666
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0672
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0705
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0737
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0745
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0748
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0773
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0807
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0817
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0818
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0827
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0836
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0847
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0863
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0892
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0920
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0921
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0938
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0965
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0969
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1646
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1653
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1671
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1673
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1679
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1682
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1686
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1689
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1705
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1725
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1728
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1729
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1730
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1837
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1845
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1849
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1852
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1861
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1875
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1888
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1890
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1893
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1895
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1898
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1903
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1907
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1911
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1915
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1948
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1960
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1967
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1971
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2009
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2051
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2054
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2067
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2104
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2111
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2130
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2131
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2177
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2181
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2188
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2192
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2194
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2196
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2201
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2206
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2221
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2223
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2245
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2252
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2260
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2264
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2266
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2277
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2315
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2320
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2377
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2402
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2411
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2496
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2502
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2508
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2522
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2552
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2996
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3006
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3012
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3015
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3027
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3030
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3056
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3062
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3067
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3072
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3073
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3079
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3081
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3084
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3090
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3094
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3095
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3101
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3136
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3152
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3164
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3177
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3184
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3205
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3218
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3223
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3235
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3245
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3250
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3262
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3288
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3298
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3314
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3316
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3323
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3326
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3336
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3348
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3349
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3356
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3369
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3373
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3381
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3386
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3401
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3402
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3414
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3418
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3421
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3435
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3442
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3443
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3458
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3464
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3470
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3476
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3479
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3487
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3504
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3509
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3513
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3519
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3527
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3535
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3567
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3573
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3584
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3590
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3591
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3608
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3626
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3632
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3642
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3648
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3655
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3700
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3705
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3735
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3746
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3752
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3758
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3763
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3787
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3793
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3799
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3812
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3823
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3843
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3849
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3874
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3908
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3927
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3931
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3937
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3955
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3956
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3963
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3965
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3970
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4047
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4055
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4068
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4087
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4091
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4092
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4119
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4125
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4149
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4179
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4211
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4232
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4242
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4244
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4255
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4262
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4263
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4285
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4302
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4313
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4314
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4323
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4335
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4346
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4374
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4384
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4412
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4422
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4429
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4431
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4459
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4466
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4479
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4487
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4497
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4529
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4544
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4549
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4550
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4636
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4645
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4647
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4669
