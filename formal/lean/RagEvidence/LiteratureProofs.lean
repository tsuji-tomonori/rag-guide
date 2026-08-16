import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 474 := by
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

theorem literature_SENT_0978 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0982 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [24, 31, 40, 42, 65, 117] →
      Formula.Holds valuation (.atom 65) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0984 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.and (.atom 17) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [22, 39, 41, 79, 117])) (.atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 39 (List.Mem.head [79, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0996 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 31, 40, 42, 53, 55, 61, 79, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.head [61, 79, 84, 105, 109, 117, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1004 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 17 (List.Mem.head [40, 55, 109, 117]))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [55, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1005 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 55, 79, 117] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1016 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 37, 40, 42, 43, 45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1035 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 69, 91, 117])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1056 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1058 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.and (.and (.atom 55) (.atom 18)) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1068 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 117 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1084 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 55) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1092 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
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

theorem literature_SENT_1097 :
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
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1107 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 42 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1110 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 11)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 42 (List.Mem.head [])))) (.atom (List.Mem.head [42, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 22, 24, 31, 37, 38, 39, 40, 41, 42, 43, 49, 65, 74, 75, 79, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 79 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1155 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1156 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [24, 31, 40, 42, 65, 117] →
      Formula.Holds valuation (.atom 65) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1157 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 38)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.head [37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 74, 75, 91, 115, 117, 125, 134, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1166 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.and (.atom 38) (.atom 65)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 65, 74, 75, 91, 115, 117, 125, 134])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [74, 75, 91, 115, 117, 125, 134]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1167 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1174 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1176 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.head [41, 79, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1207 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1209 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 49) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [74, 75, 117, 126, 134])))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1211 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.atom 70) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [86, 116, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1216 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.head [41, 79, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1218 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 25, 31, 39, 40, 41, 42, 55, 70, 79, 86, 116, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 79 (List.Mem.tail 86 (List.Mem.tail 116 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1219 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.and (.atom 17) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [22, 39, 41, 79, 117])) (.atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 39 (List.Mem.head [79, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1226 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 33, 40, 73, 117] →
      Formula.Holds valuation (.and (.atom 73) (.atom 33)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 25 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [117]))))) (.atom (List.Mem.tail 25 (List.Mem.head [40, 73, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1236 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1237 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.atom 140) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.tail 134 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1243 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [70, 86, 116, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1245 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 25, 31, 37, 38, 40, 42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 42) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140]))))))))) (.atom (List.Mem.head [24, 25, 31, 37, 38, 40, 42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1250 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 25, 31, 37, 38, 40, 42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 65 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 134, 140]))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1254 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 13, 22, 25, 31, 33, 34, 40, 42, 50, 51, 56, 58, 61, 64, 71, 114, 115, 117, 121, 128, 131] →
      Formula.Holds valuation (.or (.atom 117) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 114 (List.Mem.tail 115 (List.Mem.head [121, 128, 131])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1255 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 13, 21, 22, 31, 33, 34, 40, 42, 50, 51, 56, 58, 61, 64, 114, 117, 121, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 13 (List.Mem.tail 21 (List.Mem.tail 22 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 114 (List.Mem.head [121, 128])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1263 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 29, 33, 34, 40, 58, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 121 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.head [115, 117, 121, 131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1264 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 13, 21, 22, 31, 33, 34, 40, 42, 50, 51, 56, 58, 61, 64, 114, 117, 121, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 13 (List.Mem.tail 21 (List.Mem.tail 22 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 114 (List.Mem.head [121, 128])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1269 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 42, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.atom 58) (.atom 61)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [61, 64, 114, 117]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.head [64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1270 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 42, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.atom 58) (.atom 61)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [61, 64, 114, 117]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.head [64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1277 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128] →
      Formula.Holds valuation (.atom 50) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [58, 61, 117, 128]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1278 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 31, 34, 40, 42, 50, 51, 61, 117] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 31, 34, 40, 42, 50, 51, 61, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1283 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 21, 22, 117] →
      Formula.Holds valuation (.atom 21) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [22, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1285 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 21, 22, 117] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 21 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1291 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 33, 40, 56, 61, 117, 121] →
      Formula.Holds valuation (.and (.atom 56) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [61, 117, 121])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [121])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1313 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 25, 29, 33, 40, 56, 61, 64, 71, 117, 121, 131] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.head [40, 56, 61, 64, 71, 117, 121, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1319 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [119, 130] →
      Formula.Holds valuation (.atom 130) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 119 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1324 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1329 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [39, 55, 117, 121] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 39 (List.Mem.head [117, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1332 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 29, 33, 34, 40, 58, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.and (.and (.atom 64) (.atom 117)) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.head [71, 115, 117, 121, 131]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.head [121, 131]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [131]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1333 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 29, 33, 34, 40, 58, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 131)) (.atom 115)) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.head [121, 131])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 121 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.head [117, 121, 131])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.head [115, 117, 121, 131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1357 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 33, 40, 56, 61, 117, 121] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.head [40, 56, 61, 117, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1360 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1364 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 25, 33, 34, 40, 56, 58, 61, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.atom 121) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [131])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 34, 40, 58, 64, 71, 115, 117, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1425 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 25, 34, 40, 42, 43, 45, 46, 55, 58, 59, 62, 64, 71, 109, 115, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 58 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 122 (List.Mem.head []))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 34 (List.Mem.head [42, 43, 45, 46, 55, 58, 59, 62, 64, 71, 109, 115, 117, 122, 131])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1450 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 40, 42, 43, 45, 46, 55, 59, 62, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 131)) (.atom 11)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 109 (List.Mem.head [122, 131]))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.tail 122 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [13, 40, 42, 43, 45, 46, 55, 59, 62, 109, 117, 122, 131])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1460 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1472 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 40, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 45)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.head [55, 84, 91, 97, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1528 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 79, 109, 117, 124] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 79, 109, 117, 124])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1530 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 79, 109, 117, 124] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 79, 109, 117, 124]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 55, 79, 109, 117, 124])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1540 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 79, 109, 117, 124] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 79 (List.Mem.tail 109 (List.Mem.head [124])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1541 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 31, 40, 42, 52, 54, 55, 66, 70, 71, 73, 74, 75, 86, 95, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 70 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 95 (List.Mem.head [117, 126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1550 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 14, 40, 44, 45, 55, 59, 67, 69, 84, 91, 97, 109, 117, 131] →
      Formula.Holds valuation (.and (.atom 67) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [69, 84, 91, 97, 109, 117, 131])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [131])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1563 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 55, 69, 91, 94, 106, 109, 117, 121] →
      Formula.Holds valuation (.and (.atom 106) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.head [109, 117, 121])))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1568 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 55, 69, 91, 94, 106, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1569 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 55, 69, 91, 94, 106, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1581 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 52, 54, 71, 95, 116, 117] →
      Formula.Holds valuation (.atom 54) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [71, 95, 116, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1587 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 42, 52, 55, 69, 74, 91, 93, 94, 106, 109, 117, 121, 134] →
      Formula.Holds valuation (.and (.and (.atom 52) (.atom 117)) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 69, 74, 91, 93, 94, 106, 109, 117, 121, 134]))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 91 (List.Mem.tail 93 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121, 134]))))))))))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.head [69, 74, 91, 93, 94, 106, 109, 117, 121, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1597 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 54, 55, 71, 74, 93, 95, 116, 117, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 93 (List.Mem.tail 95 (List.Mem.tail 116 (List.Mem.head [134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1602 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 74, 93, 117, 134] →
      Formula.Holds valuation (.or (.and (.and (.atom 52) (.atom 117)) (.atom 55)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.head [55, 74, 93, 117, 134])))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 93 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [74, 93, 117, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1611 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 52) (.atom 117)) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.head [55, 60, 117, 140])))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140])))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [60, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1613 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 52, 55, 60, 117, 140])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1615 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1627 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 40, 44, 45, 55, 59, 67, 69, 84, 117, 131] →
      Formula.Holds valuation (.and (.atom 67) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [69, 84, 117, 131])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.head [131]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1636 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140]))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [60, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1655 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 37, 40, 42, 43, 49, 52, 55, 66, 73, 74, 75, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.atom 126) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.head [126, 132, 134])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1662 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 37, 40, 42, 43, 49, 52, 55, 66, 73, 74, 75, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.atom 126) (.atom 66)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.head [73, 74, 75, 111, 116, 117, 126, 132, 134])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1668 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 37, 40, 42, 43, 49, 52, 55, 66, 73, 74, 75, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.atom 126) (.atom 66)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.head [73, 74, 75, 111, 116, 117, 126, 132, 134])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 75, 117, 126] →
      Formula.Holds valuation (.and (.atom 75) (.atom 37)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.head [117, 126]))) (.atom (List.Mem.head [75, 117, 126])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1686 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 75) (.atom 74)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.head [117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1692 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 74)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 117 (List.Mem.tail 126 (List.Mem.head []))))))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1695 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.and (.atom 75) (.atom 37)) (.atom 74)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.head [117, 126, 134])))))) (.atom (List.Mem.head [43, 49, 74, 75, 117, 126, 134]))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1697 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1699 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1702 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 25, 35, 40, 42, 52, 66, 73, 74, 75, 111, 116, 117, 126, 134] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.head [52, 66, 73, 74, 75, 111, 116, 117, 126, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1716 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 75) (.atom 134)) (.atom 74)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.head [117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 117 (List.Mem.tail 126 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1722 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 74) (.atom 49)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [74, 75, 117, 126, 134]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1742 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 40, 42, 52, 54, 55, 66, 71, 73, 75, 95, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 73)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.head [75, 95, 111, 116, 117, 126, 132, 134]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.head [126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1745 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 66, 73, 75, 116, 117, 126, 132] →
      Formula.Holds valuation (.and (.atom 132) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.tail 126 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [126, 132])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1746 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 40, 42, 52, 66, 73, 75, 111, 117, 126] →
      Formula.Holds valuation (.and (.atom 35) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.head [40, 42, 52, 66, 73, 75, 111, 117, 126])))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.head [42, 52, 66, 73, 75, 111, 117, 126]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1747 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 66, 73, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 73) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 66 (List.Mem.head [75, 117, 126, 134]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))) (.atom (List.Mem.tail 5 (List.Mem.head [66, 73, 75, 117, 126, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1750 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 40, 42, 52, 54, 55, 66, 71, 73, 75, 95, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 66)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.head [71, 73, 75, 95, 111, 116, 117, 126, 132, 134]))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.head [126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1753 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 24, 25, 31, 37, 38, 40, 42, 55, 65, 66, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.head [37, 38, 40, 42, 55, 65, 66, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 65 (List.Mem.tail 66 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 126, 134, 140]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1758 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 33, 40, 56, 61, 117, 121] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.head [40, 56, 61, 117, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1759 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.and (.and (.atom 38) (.atom 65)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 65, 74, 75, 91, 115, 117, 125, 134])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [74, 75, 91, 115, 117, 125, 134])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1760 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.and (.and (.atom 31) (.atom 38)) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.head [37, 38, 40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1764 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 38) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 74, 75, 91, 115, 117, 125, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1765 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1767 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1777 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 31, 117] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [31, 117]))) (.atom (List.Mem.head [6, 31, 117]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 31 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1778 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.head [49, 74, 75, 117, 126, 134])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1786 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 74, 100, 117, 134] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1793 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 74, 100, 117, 134] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1794 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 74, 100, 117, 134] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1799 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1800 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1802 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 125) (.atom 24)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140])))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1809 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1811 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 31, 40, 42, 58, 61, 64, 66, 74, 75, 114, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.head [126, 134])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1815 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 42, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.atom 58) (.atom 61)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [61, 64, 114, 117]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.head [64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1824 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 31, 40, 42, 58, 61, 64, 66, 74, 75, 114, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.head [126, 134]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.head [42, 58, 61, 64, 66, 74, 75, 114, 117, 126, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1837 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.and (.atom 86) (.atom 70)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.head [116, 117])))))))) (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [86, 116, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1840 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 20, 22, 31, 40, 42, 69, 70, 86, 117, 121] →
      Formula.Holds valuation (.and (.atom 20) (.atom 22)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [22, 31, 40, 42, 69, 70, 86, 117, 121]))) (.atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.head [31, 40, 42, 69, 70, 86, 117, 121])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1841 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 20, 22, 25, 31, 39, 40, 42, 55, 69, 70, 86, 116, 117, 121, 126] →
      Formula.Holds valuation (.atom 31) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.head [39, 40, 42, 55, 69, 70, 86, 116, 117, 121, 126]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1845 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.and (.atom 86) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.head [116, 117])))))))) (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 86 (List.Mem.tail 116 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1846 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 86, 117, 126] →
      Formula.Holds valuation (.and (.and (.and (.atom 126) (.atom 31)) (.atom 86)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 86 (List.Mem.tail 117 (List.Mem.head []))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [39, 40, 42, 86, 117, 126])))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117, 126])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 86 (List.Mem.head [126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1847 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 20, 22, 25, 31, 39, 40, 42, 55, 69, 70, 86, 116, 117, 121, 126] →
      Formula.Holds valuation (.and (.atom 86) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 70 (List.Mem.head [116, 117, 121, 126]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.head [42, 55, 69, 70, 86, 116, 117, 121, 126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1861 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1864 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1872 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1876 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1879 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 40, 44, 45, 55, 59, 67, 69, 84, 117, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.tail 117 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1888 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 37, 40, 42, 43, 49, 74, 75, 89, 112, 116, 117, 126, 134, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.tail 116 (List.Mem.head [126, 134, 141]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1899 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1902 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1915 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 40, 68, 112] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 16 (List.Mem.tail 40 (List.Mem.tail 68 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1917 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1920 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.and (.atom 89) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.head [112, 117, 141])))) (.atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1922 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1930 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1935 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1939 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 37, 40, 42, 43, 49, 74, 75, 89, 112, 116, 117, 126, 134, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.tail 116 (List.Mem.head [126, 134, 141]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1943 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 37, 40, 42, 43, 49, 74, 75, 89, 112, 116, 117, 126, 134, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.tail 116 (List.Mem.head [126, 134, 141]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1980 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [128])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 31, 34, 40, 42, 50, 51, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 114 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [50, 51, 58, 61, 64, 114, 117])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.head [42, 50, 51, 58, 61, 64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1999 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 13, 31, 34, 37, 40, 42, 43, 49, 50, 51, 58, 61, 64, 74, 75, 114, 117, 126, 128, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.head [126, 128, 134])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2003 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 31, 40, 42, 52, 54, 55, 66, 70, 71, 73, 74, 75, 86, 95, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 70 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 95 (List.Mem.head [117, 126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2041 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 43, 49, 65, 74, 75, 91, 115, 116, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 126, 134, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2083 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [128])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2086 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [128, 140])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2099 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 45)) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2136 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 42, 55, 117] →
      Formula.Holds valuation (.and (.atom 30) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [42, 55, 117])) (.atom (List.Mem.tail 30 (List.Mem.head [55, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2143 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 30] →
      Formula.Holds valuation (.and (.atom 30) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [30])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2162 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 96, 116] →
      Formula.Holds valuation (.atom 36) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [96, 116]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2163 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 96, 116] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 36 (List.Mem.tail 96 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2169 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 36, 40, 42, 55, 116, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 116 (List.Mem.head [])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [116, 117]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 55, 116, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2170 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 36, 40, 42, 55, 116, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [116, 117])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 55, 116, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2188 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2189 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 113)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.head [116, 117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2195 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [96, 113, 116, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2196 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.head [42, 55, 96, 113, 116, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2201 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 45, 55, 59, 71, 79, 107, 108, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 71 (List.Mem.tail 79 (List.Mem.tail 107 (List.Mem.tail 108 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.tail 122 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [79, 107, 108, 109, 117, 122, 131]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2205 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2206 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 63, 77, 78, 96, 99, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2209 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2212 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2213 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 116) (.atom 77)) (.atom 63)) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 113 (List.Mem.head [117, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [77, 78, 113, 116, 117, 140])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [63, 77, 78, 113, 116, 117, 140]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [55, 63, 77, 78, 113, 116, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2217 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 96, 110, 113, 117] →
      Formula.Holds valuation (.atom 110) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.head [113, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2224 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.head [117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2228 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2230 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 116) (.atom 77)) (.atom 117)) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 113 (List.Mem.head [117, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [140]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [55, 63, 77, 78, 113, 116, 117, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.head [42, 55, 63, 77, 78, 113, 116, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2232 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2236 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 38, 40, 42, 55, 63, 77, 78, 96, 99, 110, 113, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 116) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 110 (List.Mem.tail 113 (List.Mem.head [117, 140])))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 110 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [140])))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.head [42, 55, 63, 77, 78, 96, 99, 110, 113, 116, 117, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2237 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 37, 38, 40, 42, 43, 49, 55, 63, 74, 75, 77, 78, 96, 99, 113, 116, 117, 126, 134, 140] →
      Formula.Holds valuation (.and (.atom 116) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 126, 134, 140])))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [126, 134, 140]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2242 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 38, 40, 42, 55, 63, 77, 78, 96, 99, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2257 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2259 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 38, 40, 42, 55, 63, 77, 78, 96, 99, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2281 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117] →
      Formula.Holds valuation (.or (.atom 22) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.head [23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2288 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 25, 40, 55, 103, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [25, 40, 55, 103, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [103, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2296 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 25, 42, 55, 71, 79, 107, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 107)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [25, 42, 55, 71, 79, 107, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 71 (List.Mem.tail 79 (List.Mem.head [117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2300 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.head [42, 55, 59, 71, 79, 103, 107, 108, 109, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2302 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 55, 71, 79, 108, 117] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 22 (List.Mem.head [25, 40, 55, 71, 79, 108, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2313 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 55, 71, 79, 91, 103, 104, 107, 108, 109, 117] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [23, 25, 40, 42, 55, 71, 79, 91, 103, 104, 107, 108, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2329 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117, 140] →
      Formula.Holds valuation (.and (.atom 18) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2351 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 43, 55, 140] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [55, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2356 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2413 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2438 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 43, 55, 140] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [55, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 117, 131] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 117, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2532 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 69, 88, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [69, 88, 91, 97, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2538 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 102)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 55 (List.Mem.tail 102 (List.Mem.tail 117 (List.Mem.head []))))) (.atom (List.Mem.tail 55 (List.Mem.head [117, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2544 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2558 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2588 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 117, 131, 140] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 18)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [59, 62, 69, 91, 117, 131, 140])))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 117, 131, 140])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 91, 117, 131, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2643 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2645 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2658 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 40, 42, 55, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [62, 117]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.head [55, 62, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2670 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2694 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117, 140] →
      Formula.Holds valuation (.and (.atom 43) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 69, 91, 117, 140]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2703 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head [131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131]))))) (.atom (List.Mem.tail 13 (List.Mem.head [42, 43, 46, 55, 59, 62, 117, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2709 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.or (.atom 55) (.and (.atom 18) (.atom 43))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [59, 62, 117, 131]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2747 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 117, 140] →
      Formula.Holds valuation (.and (.atom 55) (.atom 140)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.head [59, 117, 140]))) (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2761 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 40, 43, 55, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.head [117]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.head [55, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2824 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 55)) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 69, 91, 117])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2830 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2836 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 69)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.head [91, 117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2846 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 104, 109, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [91, 104, 109, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2860 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 117] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 91, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2862 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.head [117, 125, 134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2863 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2871 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 104, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 22) (.atom 117)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [23, 25, 40, 42, 55, 91, 104, 109, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.tail 104 (List.Mem.tail 109 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 91, 104, 109, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2896 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [109, 117]))))) (.atom (List.Mem.tail 13 (List.Mem.head [55, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2904 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2914 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 42, 55, 69, 109, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 33 (List.Mem.head [55, 69, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2934 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.head [45, 55, 84, 109, 116, 117, 121]))) (.atom (List.Mem.head [42, 45, 55, 84, 109, 116, 117, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2939 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 45, 55, 84, 109, 116, 117, 121]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2943 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.tail 116 (List.Mem.head [121]))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [84, 109, 116, 117, 121]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2951 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 45, 55, 84, 109, 116, 117, 121]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2954 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 33, 40, 42, 43, 45, 46, 55, 59, 69, 91, 109, 117] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 59, 69, 91, 109, 117]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 33 (List.Mem.head [42, 43, 45, 46, 55, 59, 69, 91, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2966 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2997 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 42, 55, 69, 109, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 42 (List.Mem.head [69, 109, 117])))) (.atom (List.Mem.tail 33 (List.Mem.head [55, 69, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3000 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 43, 45, 46, 55, 69, 91, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3026 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 25, 48, 55, 71, 121] →
      Formula.Holds valuation (.atom 48) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.head [55, 71, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3032 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 72, 117, 123] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [117, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3042 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 17 (List.Mem.head [40, 55, 109, 117]))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [55, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3048 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 17, 31, 40, 42, 43, 55, 58, 61, 64, 72, 109, 114, 116, 117, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 58, 61, 64, 72, 109, 114, 116, 117, 123])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [42, 43, 55, 58, 61, 64, 72, 109, 114, 116, 117, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3063 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 69, 109, 117] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.head [40, 42, 43, 55, 59, 62, 69, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3066 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 31, 37, 38, 40, 42, 45, 52, 55, 59, 60, 74, 75, 78, 91, 115, 117, 121, 125, 134, 135, 140] →
      Formula.Holds valuation (.atom 140) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 60 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 78 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 121 (List.Mem.tail 125 (List.Mem.tail 134 (List.Mem.tail 135 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3092 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3098 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3103 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 115)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.head [117, 125, 134, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3108 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3109 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3119 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3121 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3124 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 37, 40, 43, 49, 68, 74, 75, 112, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 112) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 68 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 126, 134])))))))))) (.atom (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.head [49, 68, 74, 75, 112, 117, 126, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3130 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.and (.atom 42) (.atom 13)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134]))))) (.atom (List.Mem.head [25, 40, 42, 74, 75, 116, 117, 134]))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3134 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 31, 37, 38, 40, 42, 66, 73, 74, 75, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 126) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.head [134, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3135 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 37, 40, 43, 49, 66, 73, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 117 (List.Mem.head [134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 37 (List.Mem.head [43, 49, 66, 73, 74, 75, 117, 126, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3141 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140]))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [60, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3176 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3192 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 96, 99, 113, 116, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [55, 96, 99, 113, 116, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3204 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 103, 104, 109, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 91, 103, 104, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3217 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 43, 45, 46, 55, 62, 69, 91, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [62, 69, 91, 109, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 62, 69, 91, 109, 117]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 62, 69, 91, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3224 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 131)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head [131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 117 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3245 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 96, 99, 103, 104, 109, 113, 116, 117, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 91, 96, 99, 103, 104, 109, 113, 116, 117, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3261 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 40, 42, 46, 55, 62, 109, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 46 (List.Mem.head [62, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3266 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 59, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [59, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3278 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3288 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.head [42, 43, 55, 59, 62, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 18)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3305 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 117, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head []))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3331 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 78, 117, 121, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [78, 117, 121, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3341 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3357 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 42, 55, 69, 109, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 33 (List.Mem.head [55, 69, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3359 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3366 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 42, 55, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 42 (List.Mem.head [62, 117])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.head [55, 62, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3369 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 78, 117, 121, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [78, 117, 121, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3379 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 42, 55, 62, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 42 (List.Mem.head [62, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3391 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 40, 42, 55, 62, 78, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [62, 78, 117]))))) (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.head [55, 62, 78, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3392 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 40, 42, 55, 62, 78, 117] →
      Formula.Holds valuation (.and (.and (.and (.atom 55) (.atom 42)) (.atom 78)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [62, 78, 117]))))) (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.head [55, 62, 78, 117]))))) (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 62 (List.Mem.head [117])))))))) (.atom (List.Mem.tail 36 (List.Mem.head [42, 55, 62, 78, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3399 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 102, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [109, 117, 122, 131])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3412 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.or (.atom 25) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3416 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 40, 42, 45, 55, 59, 117, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [140]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3424 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3429 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3444 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3445 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.and (.atom 1) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3457 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3461 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117]))))) (.atom (List.Mem.head [45, 55, 83, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3464 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 37, 38, 40, 42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3478 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 37, 38, 40, 42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3485 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 37, 38, 40, 42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3486 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 31, 33, 37, 38, 40, 42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 125, 131, 134, 140] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 125, 131, 134, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 125, 131, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3490 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 31, 33, 37, 38, 40, 42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 43)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [123, 125, 131, 134, 140])))))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 123, 125, 131, 134, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 123, 125, 131, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 122] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [122]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3507 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.head [117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3513 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3519 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 81, 85, 117, 128] →
      Formula.Holds valuation (.and (.atom 117) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 81 (List.Mem.tail 85 (List.Mem.head [128]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 81 (List.Mem.head [117, 128])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3522 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 81, 85, 117, 128] →
      Formula.Holds valuation (.and (.atom 85) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 81 (List.Mem.head [117, 128])))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.head [42, 50, 58, 61, 81, 85, 117, 128])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3530 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 40, 45, 55, 109, 117, 122] →
      Formula.Holds valuation (.and (.atom 109) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [117, 122])))))) (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3547 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 80, 101, 109, 117, 122] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [59, 80, 101, 109, 117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3552 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 25, 33, 40, 42, 43, 48, 55, 59, 62, 71, 117, 121] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [25, 33, 40, 42, 43, 48, 55, 59, 62, 71, 117, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3556 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3562 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 40, 45, 55, 59, 80, 101, 109, 117, 122] →
      Formula.Holds valuation (.and (.atom 109) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 80 (List.Mem.tail 101 (List.Mem.head [117, 122]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.head [59, 80, 101, 109, 117, 122]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 40, 42, 55, 80, 101, 117, 122] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [80, 101, 117, 122]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [55, 80, 101, 117, 122]))))) (.atom (List.Mem.tail 32 (List.Mem.head [42, 55, 80, 101, 117, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3578 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 40, 42, 55, 80, 101, 117, 122] →
      Formula.Holds valuation (.and (.atom 55) (.atom 101)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [80, 101, 117, 122]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 80 (List.Mem.head [117, 122]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3610 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 45, 55, 59, 61, 102, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 122) (.atom 102)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 102 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.head [109, 117, 122, 131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3616 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 45, 55, 59, 61, 102, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 102) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.head [109, 117, 122, 131]))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [42, 45, 55, 59, 61, 102, 109, 117, 122, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3627 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 55) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3633 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 102, 117, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 102 (List.Mem.tail 117 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3634 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 102, 117, 122] →
      Formula.Holds valuation (.and (.atom 42) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 102, 117, 122])))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 102 (List.Mem.tail 117 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3651 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 61, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.head [117, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3669 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117]))))))))) (.atom (List.Mem.head [13, 18, 33, 40, 42, 43, 55, 59, 62, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3675 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117]))))) (.atom (List.Mem.head [45, 55, 83, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3685 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3691 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 40, 43, 55, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.head [117]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.head [55, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3698 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 82, 117] →
      Formula.Holds valuation (.atom 82) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3743 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 25, 40, 42, 55, 71, 103, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [25, 40, 42, 55, 71, 103, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [71, 103, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3748 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 81, 85, 117] →
      Formula.Holds valuation (.atom 85) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.tail 81 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3778 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 40, 55, 117] →
      Formula.Holds valuation (.atom 25) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [40, 55, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3789 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 33, 40, 73, 117] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.head [40, 73, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3795 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3801 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 103, 104, 109, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 25, 40, 42, 55, 91, 103, 104, 109, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.tail 103 (List.Mem.tail 104 (List.Mem.tail 109 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3806 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 42, 55, 117] →
      Formula.Holds valuation (.atom 25) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 55, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3830 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [119, 130] →
      Formula.Holds valuation (.atom 130) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 119 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3836 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 25, 117] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 25, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3842 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 25, 27, 48, 55, 71, 121] →
      Formula.Holds valuation (.atom 27) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.head [48, 55, 71, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3855 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 117 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3866 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 33, 117] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [33, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3886 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3892 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117, 140] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117, 140]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3917 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 55) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [59, 62, 69, 91, 109, 117, 122, 131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3951 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 59, 109, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [59, 109, 117])))) (.atom (List.Mem.tail 13 (List.Mem.head [55, 59, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3970 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 97, 109, 117, 122] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [122])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3974 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3980 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 59, 69, 83, 97, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 55, 59, 69, 83, 97, 109, 117, 122, 131])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3990 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 59, 69, 83, 97, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 55, 59, 69, 83, 97, 109, 117, 122, 131])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3998 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.head []))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.head [91, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3999 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.and (.atom 117) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4006 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4008 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4013 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.head [69, 83, 91, 109, 117, 121])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 55, 69, 83, 91, 109, 117, 121]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4090 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 25, 31, 40, 42, 55, 57, 59, 71, 73, 79, 106, 107, 109, 115, 117, 124, 125, 128, 140] →
      Formula.Holds valuation (.or (.and (.atom 115) (.atom 25)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 79 (List.Mem.tail 106 (List.Mem.tail 107 (List.Mem.tail 109 (List.Mem.head [117, 124, 125, 128, 140]))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.head [31, 40, 42, 55, 57, 59, 71, 73, 79, 106, 107, 109, 115, 117, 124, 125, 128, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4098 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 31, 40, 42, 55, 59, 73, 106, 109, 115, 117, 125, 140] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [117, 125, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4111 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 40, 68, 112] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 16 (List.Mem.head [68, 112])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4130 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 106, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 106 (List.Mem.head [])))) (.atom (List.Mem.head [106, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4134 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 73, 106, 115, 117, 125] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 73, 106, 115, 117, 125])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 115 (List.Mem.head [125]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4135 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 73, 106, 115, 117, 125] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 73, 106, 115, 117, 125])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 115 (List.Mem.head [125]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4162 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 25, 31, 33, 40, 42, 55, 59, 69, 74, 75, 83, 109, 115, 117, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 109) (.atom 117)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 83 (List.Mem.head [115, 117, 134, 140]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [134, 140])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [55, 59, 69, 74, 75, 83, 109, 115, 117, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4168 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 69, 83, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head [])))))) (.atom (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.head [109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4192 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 40, 68, 112] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 16 (List.Mem.tail 40 (List.Mem.tail 68 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [45, 55, 83, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.head []))))) (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4254 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 117, 123, 129] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [117, 123, 129]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4275 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 55, 79, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 79)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 42 (List.Mem.head [79, 117]))) (.atom (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4285 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.tail 116 (List.Mem.head [121])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4287 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 17 (List.Mem.head [40, 55, 109, 117]))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4298 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 25, 42, 55, 71, 79, 107, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 107)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [25, 42, 55, 71, 79, 107, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 71 (List.Mem.tail 79 (List.Mem.head [117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4305 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 79, 84, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 79, 84, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4306 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 79, 117, 140] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 79, 117, 140])))) (.atom (List.Mem.tail 13 (List.Mem.head [42, 55, 79, 117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4328 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.and (.atom 61) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.head [84, 105, 109, 117, 140])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.head [140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4345 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 40, 42, 53, 55, 61, 75, 84, 89, 105, 109, 112, 117, 137, 140, 141] →
      Formula.Holds valuation (.and (.atom 1) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [13, 17, 40, 42, 53, 55, 61, 75, 84, 89, 105, 109, 112, 117, 137, 140, 141])) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.head [42, 53, 55, 61, 75, 84, 89, 105, 109, 112, 117, 137, 140, 141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4356 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 55, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4357 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 19, 40, 42, 53, 55, 57, 61, 75, 84, 89, 105, 109, 112, 117, 137, 140, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 19 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 61 (List.Mem.tail 75 (List.Mem.tail 84 (List.Mem.tail 89 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.tail 112 (List.Mem.head [137, 140, 141]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4366 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 1)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.head [61, 84, 105, 109, 117, 140]))))))) (.atom (List.Mem.head [13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140]))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4378 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 55, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4389 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 57, 59, 84, 109, 117, 128, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 57, 59, 84, 109, 117, 128, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4417 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 36, 40, 42, 45, 55, 57, 59, 109, 117, 128, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4427 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 36, 40, 42, 45, 55, 57, 59, 109, 117, 128, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4455 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 87, 117, 123, 129] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [87, 117, 123, 129]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4465 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 39, 40, 42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 87 (List.Mem.tail 90 (List.Mem.tail 109 (List.Mem.head [123, 129])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4472 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.head [117, 121]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4474 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 39, 40, 42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129] →
      Formula.Holds valuation (.and (.atom 86) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.head [87, 90, 109, 117, 123, 129]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 87 (List.Mem.tail 90 (List.Mem.tail 109 (List.Mem.head [123, 129]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4502 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 39, 40, 42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.head [42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4509 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 40, 42, 45, 55, 59, 117, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [140]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4522 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 97, 109, 117, 122, 124] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [55, 59, 97, 109, 117, 122, 124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4530 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 40, 44, 45, 55, 59, 67, 69, 84, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 67) (.atom 84)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [69, 84, 117, 131])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.head [117, 131]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.head [131]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4540 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 40, 42, 45, 55, 59, 117, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [140]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4572 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 14, 40, 42, 44, 45, 55, 59, 67, 69, 84, 97, 102, 109, 117, 122, 124, 131, 135, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.tail 97 (List.Mem.tail 102 (List.Mem.tail 109 (List.Mem.head [122, 124, 131, 135, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4587 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 106, 117, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 106 (List.Mem.head [140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4592 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 57, 59, 84, 109, 117, 128, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 57, 59, 84, 109, 117, 128, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4593 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 57, 59, 84, 109, 117, 128, 140] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 57, 59, 84, 109, 117, 128, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4681 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [53, 55, 61, 84, 105, 109, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4690 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4692 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4714 :
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0978
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0982
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0984
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0996
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1004
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1005
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1016
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1035
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1056
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1058
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1068
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1084
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1092
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1093
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1097
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1103
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1107
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1110
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1155
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1156
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1157
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1166
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1167
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1174
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1176
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1207
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1209
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1211
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1216
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1218
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1219
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1226
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1236
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1237
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1243
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1245
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1250
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1254
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1255
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1263
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1264
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1269
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1270
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1277
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1278
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1283
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1285
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1291
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1313
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1319
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1324
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1329
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1332
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1333
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1357
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1360
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1364
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1369
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1425
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1450
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1460
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1472
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1528
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1530
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1540
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1541
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1550
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1563
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1568
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1569
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1581
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1587
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1597
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1602
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1611
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1613
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1615
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1627
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1636
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1655
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1662
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1668
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1686
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1692
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1695
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1697
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1699
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1702
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1716
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1722
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1742
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1745
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1746
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1747
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1750
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1753
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1758
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1759
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1760
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1764
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1765
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1767
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1777
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1778
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1786
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1793
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1794
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1799
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1800
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1802
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1809
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1811
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1815
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1824
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1837
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1840
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1841
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1845
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1846
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1847
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1861
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1864
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1872
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1876
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1879
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1888
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1899
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1902
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1915
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1917
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1920
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1922
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1930
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1935
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1939
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1943
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1980
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1999
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2003
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2041
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2083
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2086
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2099
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2136
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2143
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2162
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2163
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2169
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2170
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2188
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2189
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2195
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2196
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2201
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2205
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2206
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2209
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2212
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2213
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2217
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2224
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2228
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2230
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2232
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2236
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2237
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2242
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2257
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2259
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2281
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2288
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2296
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2300
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2302
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2313
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2329
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2351
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2356
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2413
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2438
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2532
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2538
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2544
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2558
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2588
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2643
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2645
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2658
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2670
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2694
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2703
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2709
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2747
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2761
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2824
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2830
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2836
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2846
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2860
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2862
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2863
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2871
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2896
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2904
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2914
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2934
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2939
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2943
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2951
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2954
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2966
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2997
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3000
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3026
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3032
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3042
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3048
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3051
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3063
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3066
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3092
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3098
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3103
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3108
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3109
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3119
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3121
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3124
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3130
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3134
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3135
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3141
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3176
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3192
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3204
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3217
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3224
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3245
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3261
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3266
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3278
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3288
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3305
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3331
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3341
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3357
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3359
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3366
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3369
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3379
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3391
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3392
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3399
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3412
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3416
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3424
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3429
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3444
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3445
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3457
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3461
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3464
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3478
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3485
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3486
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3490
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3507
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3513
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3519
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3522
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3530
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3547
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3552
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3556
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3562
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3578
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3610
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3616
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3627
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3633
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3634
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3651
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3669
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3675
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3685
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3691
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3698
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3743
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3748
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3778
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3789
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3795
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3801
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3806
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3830
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3836
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3842
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3855
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3866
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3886
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3892
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3917
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3951
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3970
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3974
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3980
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3990
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3998
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3999
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4006
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4008
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4013
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4090
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4098
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4111
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4130
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4134
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4135
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4162
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4168
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4192
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4222
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4254
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4275
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4285
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4287
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4298
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4305
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4306
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4328
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4345
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4356
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4357
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4366
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4378
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4389
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4417
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4427
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4455
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4465
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4472
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4474
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4502
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4509
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4522
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4530
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4540
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4572
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4587
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4592
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4593
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4681
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4690
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4692
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4714
