import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 411 := by
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

theorem literature_SENT_0097 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.or (.and (.and (.atom 117) (.atom 45)) (.atom 12)) (.and (.and (.atom 117) (.atom 55)) (.atom 118))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.head [117, 118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0100 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0104 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.or (.and (.and (.atom 117) (.atom 55)) (.atom 118)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.head [117, 118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.or (.and (.and (.and (.and (.atom 117) (.atom 55)) (.atom 45)) (.atom 12)) (.atom 118)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0107 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.head [117, 118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0108 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 55)) (.atom 18)) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.head [118]))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.head [117, 118]))))) (.atom (List.Mem.tail 12 (List.Mem.head [55, 117, 118])))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0112 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 45, 81, 117, 120] →
      Formula.Holds valuation (.and (.atom 120) (.atom 81)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 45 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.head []))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 45 (List.Mem.head [117, 120]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0123 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 45, 81, 117, 120] →
      Formula.Holds valuation (.and (.and (.atom 45) (.atom 12)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.head [81, 117, 120])))) (.atom (List.Mem.head [31, 45, 81, 117, 120]))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 45 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0128 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 55, 74, 75, 81, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.or (.and (.and (.atom 45) (.atom 12)) (.atom 120)) (.and (.atom 117) (.atom 92))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [49, 55, 74, 75, 81, 117, 118, 120, 126, 134]))))))) (.atom (List.Mem.head [18, 31, 37, 43, 45, 49, 55, 74, 75, 81, 117, 118, 120, 126, 134]))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [126, 134])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0129 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 55, 74, 75, 81, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.or (.and (.atom 45) (.atom 12)) (.and (.and (.atom 117) (.atom 45)) (.atom 12))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [49, 55, 74, 75, 81, 117, 118, 120, 126, 134]))))))) (.atom (List.Mem.head [18, 31, 37, 43, 45, 49, 55, 74, 75, 81, 117, 118, 120, 126, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0131 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 45, 81, 117, 120] →
      Formula.Holds valuation (.atom 120) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 45 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0144 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 33, 39] →
      Formula.Holds valuation (.and (.atom 39) (.atom 33)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.head []))))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.head [39])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0148 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 33, 39] →
      Formula.Holds valuation (.and (.atom 39) (.atom 33)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.head []))))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.head [39])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0149 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 33, 39] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0222 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 116] →
      Formula.Holds valuation (.and (.atom 116) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.head []))) (.atom (List.Mem.head [116])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0231 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 50, 55, 74, 75, 81, 87, 116, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 118)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 116 (List.Mem.head [118, 120, 126, 134])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.head [74, 75, 81, 87, 116, 117, 118, 120, 126, 134]))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [120, 126, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0233 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 50, 55, 74, 75, 81, 87, 116, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 116 (List.Mem.head [118, 120, 126, 134])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.head [31, 37, 43, 45, 49, 50, 55, 74, 75, 81, 87, 116, 117, 118, 120, 126, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0240 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 127] →
      Formula.Holds valuation (.or (.atom 127) (.and (.atom 18) (.atom 8))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 12 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0257 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 55, 117, 118] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.head [55, 117, 118])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0268 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 31, 33, 39, 45, 81, 117, 120] →
      Formula.Holds valuation (.and (.atom 31) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.head [33, 39, 45, 81, 117, 120]))) (.atom (List.Mem.tail 12 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 39 (List.Mem.tail 45 (List.Mem.tail 81 (List.Mem.tail 117 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0288 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 55, 87, 117] →
      Formula.Holds valuation (.or (.atom 12) (.and (.and (.and (.atom 87) (.atom 117)) (.atom 45)) (.atom 12))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.head [55, 87, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 37, 43, 45, 49, 50, 55, 74, 75, 81, 87, 116, 117, 118, 120, 126, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 87 (List.Mem.tail 116 (List.Mem.head [118, 120, 126, 134])))))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.head [74, 75, 81, 87, 116, 117, 118, 120, 126, 134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0301 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 18, 31, 33, 39, 45, 50, 55, 81, 116, 117, 118, 120] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 45)) (.atom 12)) (.atom 39)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 39 (List.Mem.tail 45 (List.Mem.tail 50 (List.Mem.tail 55 (List.Mem.tail 81 (List.Mem.tail 116 (List.Mem.head [118, 120])))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 39 (List.Mem.head [50, 55, 81, 116, 117, 118, 120])))))))) (.atom (List.Mem.head [18, 31, 33, 39, 45, 50, 55, 81, 116, 117, 118, 120]))) (.atom (List.Mem.tail 12 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.head [45, 50, 55, 81, 116, 117, 118, 120])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0385 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0387 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0396 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0471 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))) (.atom (List.Mem.head [109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0500 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0518 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 140] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [140]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0528 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 109, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 131)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [131])))) (.atom (List.Mem.head [109, 117, 131]))) (.atom (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0529 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head [131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0539 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 140] →
      Formula.Holds valuation (.atom 140) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 30 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0545 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [45, 55, 83, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.head []))))) (.atom (List.Mem.tail 45 (List.Mem.head [83, 117])))) (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0578 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [27, 42, 117] →
      Formula.Holds valuation (.atom 27) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0610 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 25, 117] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 25, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0618 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 25, 48, 55, 71, 121] →
      Formula.Holds valuation (.atom 48) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.head [55, 71, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0621 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0646 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 40, 90, 117] →
      Formula.Holds valuation (.atom 90) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0680 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 25, 27, 42, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 25 (List.Mem.tail 27 (List.Mem.tail 42 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0690 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 72, 117] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0691 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 72, 87, 117] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [87, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0700 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 43, 72, 117, 123] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.head [117, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0709 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 72, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [72, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0720 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 72, 117, 123] →
      Formula.Holds valuation (.and (.atom 72) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [117, 123])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 72, 117, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0736 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 117, 123, 129] →
      Formula.Holds valuation (.atom 129) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 117 (List.Mem.tail 123 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0765 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 43, 72, 90, 117, 123, 129] →
      Formula.Holds valuation (.and (.atom 25) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [40, 42, 43, 72, 90, 117, 123, 129]))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 43, 72, 90, 117, 123, 129])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0793 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [55, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0794 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 25, 31, 34, 37, 38, 40, 42, 58, 64, 71, 74, 75, 91, 115, 117, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.head [117, 125, 131, 134, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0811 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [76, 123, 140] →
      Formula.Holds valuation (.and (.atom 123) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 76 (List.Mem.head [140]))) (.atom (List.Mem.head [123, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0838 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 22, 39, 40, 41, 42, 53, 55, 61, 79, 84, 105, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 79 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0842 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 37, 40, 42, 43, 45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0845 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 61) (.atom 53)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.head [84, 105, 109, 117, 140])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 61, 84, 105, 109, 117, 140]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.head [140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0847 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0851 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [24, 31, 40, 42, 65, 117] →
      Formula.Holds valuation (.atom 65) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0853 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.and (.atom 17) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [22, 39, 41, 79, 117])) (.atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 39 (List.Mem.head [79, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0861 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0865 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 31, 40, 42, 53, 55, 61, 79, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.head [61, 79, 84, 105, 109, 117, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0873 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 17 (List.Mem.head [40, 55, 109, 117]))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [55, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0874 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 55, 79, 117] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0885 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 37, 40, 42, 43, 45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 49, 55, 59, 62, 69, 72, 74, 75, 91, 117, 123, 126, 131, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0904 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 69, 91, 117])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0925 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0927 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.and (.and (.atom 55) (.atom 18)) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0937 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 117 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0953 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 55) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0961 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0962 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0966 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0972 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0976 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 11 (List.Mem.tail 42 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0979 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 11)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 11 (List.Mem.tail 42 (List.Mem.head [])))) (.atom (List.Mem.head [42, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1020 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 22, 24, 31, 37, 38, 39, 40, 41, 42, 43, 49, 65, 74, 75, 79, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 79 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1024 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1025 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [24, 31, 40, 42, 65, 117] →
      Formula.Holds valuation (.atom 65) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1026 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 38)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.head [37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 74, 75, 91, 115, 117, 125, 134, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1035 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.and (.atom 38) (.atom 65)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 65, 74, 75, 91, 115, 117, 125, 134])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [74, 75, 91, 115, 117, 125, 134]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1036 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1043 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1045 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.head [41, 79, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1076 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1078 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 49) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [74, 75, 117, 126, 134])))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1080 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.atom 70) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [86, 116, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1085 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.head [41, 79, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1087 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 25, 31, 39, 40, 41, 42, 55, 70, 79, 86, 116, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 79 (List.Mem.tail 86 (List.Mem.tail 116 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1088 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 22, 39, 41, 79, 117] →
      Formula.Holds valuation (.and (.atom 17) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [22, 39, 41, 79, 117])) (.atom (List.Mem.tail 17 (List.Mem.tail 22 (List.Mem.tail 39 (List.Mem.head [79, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1095 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 33, 40, 73, 117] →
      Formula.Holds valuation (.and (.atom 73) (.atom 33)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 25 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [117]))))) (.atom (List.Mem.tail 25 (List.Mem.head [40, 73, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1105 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1106 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.atom 140) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.tail 134 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1112 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [70, 86, 116, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1114 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 25, 31, 37, 38, 40, 42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 42) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140]))))))))) (.atom (List.Mem.head [24, 25, 31, 37, 38, 40, 42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1119 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 25, 31, 37, 38, 40, 42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 65 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 134, 140]))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 55, 65, 70, 74, 75, 86, 91, 115, 116, 117, 125, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1123 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 13, 22, 25, 31, 33, 34, 40, 42, 50, 51, 56, 58, 61, 64, 71, 114, 115, 117, 121, 128, 131] →
      Formula.Holds valuation (.or (.atom 117) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 114 (List.Mem.tail 115 (List.Mem.head [121, 128, 131])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1124 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 13, 21, 22, 31, 33, 34, 40, 42, 50, 51, 56, 58, 61, 64, 114, 117, 121, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 13 (List.Mem.tail 21 (List.Mem.tail 22 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 114 (List.Mem.head [121, 128])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1132 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 29, 33, 34, 40, 58, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 121 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.head [115, 117, 121, 131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1133 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 13, 21, 22, 31, 33, 34, 40, 42, 50, 51, 56, 58, 61, 64, 114, 117, 121, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 13 (List.Mem.tail 21 (List.Mem.tail 22 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 114 (List.Mem.head [121, 128])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1138 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 42, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.atom 58) (.atom 61)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [61, 64, 114, 117]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.head [64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1139 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 42, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.atom 58) (.atom 61)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [61, 64, 114, 117]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.head [64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1146 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128] →
      Formula.Holds valuation (.atom 50) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [58, 61, 117, 128]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1147 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 31, 34, 40, 42, 50, 51, 61, 117] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 31, 34, 40, 42, 50, 51, 61, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1152 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 21, 22, 117] →
      Formula.Holds valuation (.atom 21) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [22, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1154 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 21, 22, 117] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 21 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1160 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 33, 40, 56, 61, 117, 121] →
      Formula.Holds valuation (.and (.atom 56) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [61, 117, 121])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [121])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1182 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 25, 29, 33, 40, 56, 61, 64, 71, 117, 121, 131] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.head [40, 56, 61, 64, 71, 117, 121, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1188 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [119, 130] →
      Formula.Holds valuation (.atom 130) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 119 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1193 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1198 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [39, 55, 117, 121] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 39 (List.Mem.head [117, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1201 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 29, 33, 34, 40, 58, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.and (.and (.atom 64) (.atom 117)) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.head [71, 115, 117, 121, 131]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.head [121, 131]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [131]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1202 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 29, 33, 34, 40, 58, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 131)) (.atom 115)) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.head [121, 131])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 121 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.head [117, 121, 131])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 29 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.head [115, 117, 121, 131])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1226 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 33, 40, 56, 61, 117, 121] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.head [40, 56, 61, 117, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1229 :
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
      allFacts valuation [5, 22, 25, 33, 34, 40, 56, 58, 61, 64, 71, 115, 117, 121, 131] →
      Formula.Holds valuation (.atom 121) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 33 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [131])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1238 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 25, 34, 40, 58, 64, 71, 115, 117, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 25 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 58 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1267 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 13, 40, 42, 43, 45, 46, 55, 59, 62, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 131)) (.atom 11)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 109 (List.Mem.head [122, 131]))))))))))))) (.atom (List.Mem.tail 11 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.tail 122 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [13, 40, 42, 43, 45, 46, 55, 59, 62, 109, 117, 122, 131])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1277 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1289 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 40, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 45)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.head [55, 84, 91, 97, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1345 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 79, 109, 117, 124] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 79, 109, 117, 124])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1347 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 79, 109, 117, 124] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 79, 109, 117, 124]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 55, 79, 109, 117, 124])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1357 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 79, 109, 117, 124] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 79 (List.Mem.tail 109 (List.Mem.head [124])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1358 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 31, 40, 42, 52, 54, 55, 66, 70, 71, 73, 74, 75, 86, 95, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 70 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 95 (List.Mem.head [117, 126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1367 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 14, 40, 44, 45, 55, 59, 67, 69, 84, 91, 97, 109, 117, 131] →
      Formula.Holds valuation (.and (.atom 67) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [69, 84, 91, 97, 109, 117, 131])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [131])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1380 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 55, 69, 91, 94, 106, 109, 117, 121] →
      Formula.Holds valuation (.and (.atom 106) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.head [109, 117, 121])))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1385 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 55, 69, 91, 94, 106, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1386 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 55, 69, 91, 94, 106, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1398 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 52, 54, 71, 95, 116, 117] →
      Formula.Holds valuation (.atom 54) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [71, 95, 116, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1404 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 42, 52, 55, 69, 74, 91, 93, 94, 106, 109, 117, 121, 134] →
      Formula.Holds valuation (.and (.and (.atom 52) (.atom 117)) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 69, 74, 91, 93, 94, 106, 109, 117, 121, 134]))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 91 (List.Mem.tail 93 (List.Mem.tail 94 (List.Mem.tail 106 (List.Mem.tail 109 (List.Mem.head [121, 134]))))))))))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.head [69, 74, 91, 93, 94, 106, 109, 117, 121, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1414 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 54, 55, 71, 74, 93, 95, 116, 117, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 93 (List.Mem.tail 95 (List.Mem.tail 116 (List.Mem.head [134]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1419 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 74, 93, 117, 134] →
      Formula.Holds valuation (.or (.and (.and (.atom 52) (.atom 117)) (.atom 55)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.head [55, 74, 93, 117, 134])))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 74 (List.Mem.tail 93 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [74, 93, 117, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1428 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 52) (.atom 117)) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.head [55, 60, 117, 140])))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140])))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [60, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1430 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 52, 55, 60, 117, 140])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1432 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1444 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 40, 44, 45, 55, 59, 67, 69, 84, 117, 131] →
      Formula.Holds valuation (.and (.atom 67) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [69, 84, 117, 131])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.head [131]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1467 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 37, 40, 42, 43, 49, 52, 55, 66, 73, 74, 75, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.atom 126) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.head [126, 132, 134])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1474 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 37, 40, 42, 43, 49, 52, 55, 66, 73, 74, 75, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.atom 126) (.atom 66)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.head [73, 74, 75, 111, 116, 117, 126, 132, 134])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1492 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 75, 117, 126] →
      Formula.Holds valuation (.and (.atom 75) (.atom 37)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.head [117, 126]))) (.atom (List.Mem.head [75, 117, 126])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1494 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 75) (.atom 74)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.head [117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1500 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 74)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 117 (List.Mem.tail 126 (List.Mem.head []))))))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1503 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.and (.atom 75) (.atom 37)) (.atom 74)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.head [117, 126, 134])))))) (.atom (List.Mem.head [43, 49, 74, 75, 117, 126, 134]))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134])))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1505 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1507 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1517 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 74) (.atom 49)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.head [75, 117, 126, 134]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.head [74, 75, 117, 126, 134]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1537 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 40, 42, 52, 54, 55, 66, 71, 73, 75, 95, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 73)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.head [75, 95, 111, 116, 117, 126, 132, 134]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.head [126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1540 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 66, 73, 75, 116, 117, 126, 132] →
      Formula.Holds valuation (.and (.atom 132) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.tail 126 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [126, 132])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1541 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 40, 42, 52, 66, 73, 75, 111, 117, 126] →
      Formula.Holds valuation (.and (.atom 35) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.head [40, 42, 52, 66, 73, 75, 111, 117, 126])))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.head [42, 52, 66, 73, 75, 111, 117, 126]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1542 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 66, 73, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 73) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 66 (List.Mem.head [75, 117, 126, 134]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))) (.atom (List.Mem.tail 5 (List.Mem.head [66, 73, 75, 117, 126, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1545 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 35, 40, 42, 52, 54, 55, 66, 71, 73, 75, 95, 111, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 66)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [132, 134])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.head [71, 73, 75, 95, 111, 116, 117, 126, 132, 134]))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 35 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 95 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.head [126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1548 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 24, 25, 31, 37, 38, 40, 42, 55, 65, 66, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.head [37, 38, 40, 42, 55, 65, 66, 70, 74, 75, 86, 91, 115, 116, 117, 125, 126, 134, 140])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 65 (List.Mem.tail 66 (List.Mem.tail 70 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 116 (List.Mem.head [125, 126, 134, 140]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1553 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 22, 33, 40, 56, 61, 117, 121] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 22 (List.Mem.head [40, 56, 61, 117, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1554 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.and (.and (.atom 38) (.atom 65)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 65, 74, 75, 91, 115, 117, 125, 134])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [74, 75, 91, 115, 117, 125, 134])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1555 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.and (.and (.and (.atom 31) (.atom 38)) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.head [37, 38, 40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 126, 134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 49, 74, 75, 91, 115, 117, 125, 126, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1559 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 38) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.head [40, 42, 74, 75, 91, 115, 117, 125, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1560 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1562 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1572 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 31, 117] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [31, 117]))) (.atom (List.Mem.head [6, 31, 117]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 31 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1573 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 43, 49, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.head [49, 74, 75, 117, 126, 134])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1581 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 74, 100, 117, 134] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1588 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 74, 100, 117, 134] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1589 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 74, 100, 117, 134] →
      Formula.Holds valuation (.atom 100) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1594 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1595 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 125) (.atom 24)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1597 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 24, 31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 125) (.atom 24)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.head [134, 140]))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [31, 37, 38, 40, 42, 65, 74, 75, 91, 115, 117, 125, 134, 140])))) (.atom (List.Mem.tail 13 (List.Mem.tail 24 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 65 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1603 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 31, 40, 42, 58, 61, 64, 66, 74, 75, 114, 117, 126, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.head [126, 134])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1604 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 40, 42, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.atom 58) (.atom 61)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [61, 64, 114, 117]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.head [64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 31, 40, 42, 58, 61, 64, 66, 74, 75, 114, 117, 126, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.head [126, 134]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.head [42, 58, 61, 64, 66, 74, 75, 114, 117, 126, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1622 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.and (.atom 86) (.atom 70)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.head [116, 117])))))))) (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [86, 116, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1625 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 20, 22, 31, 40, 42, 69, 70, 86, 117, 121] →
      Formula.Holds valuation (.and (.atom 20) (.atom 22)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [22, 31, 40, 42, 69, 70, 86, 117, 121]))) (.atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.head [31, 40, 42, 69, 70, 86, 117, 121])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1626 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 20, 22, 25, 31, 39, 40, 42, 55, 69, 70, 86, 116, 117, 121, 126] →
      Formula.Holds valuation (.atom 31) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.head [39, 40, 42, 55, 69, 70, 86, 116, 117, 121, 126]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1630 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 31, 40, 42, 55, 70, 86, 116, 117] →
      Formula.Holds valuation (.and (.atom 86) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.head [116, 117])))))))) (.atom (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 86 (List.Mem.tail 116 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1631 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 39, 40, 42, 86, 117, 126] →
      Formula.Holds valuation (.and (.and (.and (.atom 126) (.atom 31)) (.atom 86)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 86 (List.Mem.tail 117 (List.Mem.head []))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [39, 40, 42, 86, 117, 126])))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [117, 126])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 86 (List.Mem.head [126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1632 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 20, 22, 25, 31, 39, 40, 42, 55, 69, 70, 86, 116, 117, 121, 126] →
      Formula.Holds valuation (.and (.atom 86) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 70 (List.Mem.head [116, 117, 121, 126]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 20 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.head [42, 55, 69, 70, 86, 116, 117, 121, 126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1646 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1649 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1657 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1661 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1664 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 40, 44, 45, 55, 59, 67, 69, 84, 117, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.tail 117 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1673 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 37, 40, 42, 43, 49, 74, 75, 89, 112, 116, 117, 126, 134, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.tail 116 (List.Mem.head [126, 134, 141]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1684 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1687 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 40, 68, 112] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 16 (List.Mem.tail 40 (List.Mem.tail 68 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1689 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1692 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.and (.atom 89) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.head [112, 117, 141])))) (.atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1694 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1697 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1702 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 75, 89, 112, 117, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.head [141]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1706 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 37, 40, 42, 43, 49, 74, 75, 89, 112, 116, 117, 126, 134, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.tail 116 (List.Mem.head [126, 134, 141]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1710 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 37, 40, 42, 43, 49, 74, 75, 89, 112, 116, 117, 126, 134, 141] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 89 (List.Mem.tail 112 (List.Mem.tail 116 (List.Mem.head [126, 134, 141]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1714 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [117, 134]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1747 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [128])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1759 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 31, 34, 40, 42, 50, 51, 58, 61, 64, 114, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 114 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [50, 51, 58, 61, 64, 114, 117])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.head [42, 50, 51, 58, 61, 64, 114, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1766 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 13, 31, 34, 37, 40, 42, 43, 49, 50, 51, 58, 61, 64, 74, 75, 114, 117, 126, 128, 134] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 34 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 114 (List.Mem.head [126, 128, 134])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1770 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 31, 40, 42, 52, 54, 55, 66, 70, 71, 73, 74, 75, 86, 95, 116, 117, 126, 132, 134] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 52 (List.Mem.tail 54 (List.Mem.tail 55 (List.Mem.tail 66 (List.Mem.tail 70 (List.Mem.tail 71 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 86 (List.Mem.tail 95 (List.Mem.head [117, 126, 132, 134]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1849 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [128])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1852 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 117, 128, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.head [128, 140])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1865 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 45)) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1902 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 42, 55, 117] →
      Formula.Holds valuation (.and (.atom 30) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [42, 55, 117])) (.atom (List.Mem.tail 30 (List.Mem.head [55, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1909 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 30] →
      Formula.Holds valuation (.and (.atom 30) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [30])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1928 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 96, 116] →
      Formula.Holds valuation (.atom 36) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [96, 116]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1929 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 96, 116] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 36 (List.Mem.tail 96 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1935 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 36, 40, 42, 55, 116, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 116 (List.Mem.head [])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [116, 117]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 55, 116, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1936 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 36, 40, 42, 55, 116, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [116, 117])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 55, 116, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1954 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1955 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 113)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.head [116, 117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1961 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [96, 113, 116, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1962 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.and (.atom 116) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.head [42, 55, 96, 113, 116, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1967 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 45, 55, 59, 71, 79, 107, 108, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 71 (List.Mem.tail 79 (List.Mem.tail 107 (List.Mem.tail 108 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.tail 122 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [79, 107, 108, 109, 117, 122, 131]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1968 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 63, 77, 78, 96, 99, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1971 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1974 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1975 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 116) (.atom 77)) (.atom 63)) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 113 (List.Mem.head [117, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [77, 78, 113, 116, 117, 140])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [63, 77, 78, 113, 116, 117, 140]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [55, 63, 77, 78, 113, 116, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1979 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 96, 110, 113, 117] →
      Formula.Holds valuation (.atom 110) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.head [113, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1986 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.head [117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1990 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 116) (.atom 77)) (.atom 117)) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 113 (List.Mem.head [117, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [140]))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.head [55, 63, 77, 78, 113, 116, 117, 140])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.head [42, 55, 63, 77, 78, 113, 116, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1994 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 40, 42, 55, 96, 113, 116, 117] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 96 (List.Mem.tail 113 (List.Mem.head [117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1998 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 38, 40, 42, 55, 63, 77, 78, 96, 99, 110, 113, 116, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 116) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 110 (List.Mem.tail 113 (List.Mem.head [117, 140])))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 110 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [140])))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.head [42, 55, 63, 77, 78, 96, 99, 110, 113, 116, 117, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1999 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 37, 38, 40, 42, 43, 49, 55, 63, 74, 75, 77, 78, 96, 99, 113, 116, 117, 126, 134, 140] →
      Formula.Holds valuation (.and (.atom 116) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 126, 134, 140])))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.tail 116 (List.Mem.head [126, 134, 140]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2004 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 38, 40, 42, 55, 63, 77, 78, 96, 99, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2019 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 38, 40, 42, 55, 63, 77, 78, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 77) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.head [78, 113, 116, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2021 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 15, 36, 38, 40, 42, 55, 63, 77, 78, 96, 99, 113, 116, 117, 140] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 78 (List.Mem.tail 96 (List.Mem.tail 99 (List.Mem.tail 113 (List.Mem.head [117, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2043 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117] →
      Formula.Holds valuation (.or (.atom 22) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.head [23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2050 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 25, 40, 55, 103, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [25, 40, 55, 103, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [103, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2058 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 25, 42, 55, 71, 79, 107, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 107)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [25, 42, 55, 71, 79, 107, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 71 (List.Mem.tail 79 (List.Mem.head [117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2062 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [23, 25, 40, 42, 55, 59, 71, 79, 103, 107, 108, 109, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.head [42, 55, 59, 71, 79, 103, 107, 108, 109, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2064 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 55, 71, 79, 108, 117] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 22 (List.Mem.head [25, 40, 55, 71, 79, 108, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2075 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 55, 71, 79, 91, 103, 104, 107, 108, 109, 117] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [23, 25, 40, 42, 55, 71, 79, 91, 103, 104, 107, 108, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2091 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117, 140] →
      Formula.Holds valuation (.and (.atom 18) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117, 140]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117, 140]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2113 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 43, 55, 140] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [55, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2118 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2175 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 43, 55, 140] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [55, 140])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2209 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 117, 131] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 117, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 69, 88, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [69, 88, 91, 97, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2299 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.and (.atom 122) (.atom 102)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 55 (List.Mem.tail 102 (List.Mem.tail 117 (List.Mem.head []))))) (.atom (List.Mem.tail 55 (List.Mem.head [117, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2305 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 59, 62, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2319 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2379 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 18)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2381 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2394 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 40, 42, 55, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [62, 117]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.head [55, 62, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2406 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2429 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117, 140] →
      Formula.Holds valuation (.and (.atom 43) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 69, 91, 117, 140]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2438 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head [131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131]))))) (.atom (List.Mem.tail 13 (List.Mem.head [42, 43, 46, 55, 59, 62, 117, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2444 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.or (.atom 55) (.and (.atom 18) (.atom 43))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [59, 62, 117, 131]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2482 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 117, 140] →
      Formula.Holds valuation (.and (.atom 55) (.atom 140)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.head [59, 117, 140]))) (.atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2496 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 40, 43, 55, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.head [117]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.head [55, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2558 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.and (.atom 117) (.atom 55)) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 69, 91, 117])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2564 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2570 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 69)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.head [91, 117])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2580 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 104, 109, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [91, 104, 109, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2594 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 117] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 91, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2596 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134] →
      Formula.Holds valuation (.atom 115) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.head [117, 125, 134])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2597 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2605 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 104, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 22) (.atom 117)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [23, 25, 40, 42, 55, 91, 104, 109, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.tail 104 (List.Mem.tail 109 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 91, 104, 109, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2627 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [109, 117]))))) (.atom (List.Mem.tail 13 (List.Mem.head [55, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2635 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2645 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 42, 55, 69, 109, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 33 (List.Mem.head [55, 69, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2665 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.head [45, 55, 84, 109, 116, 117, 121]))) (.atom (List.Mem.head [42, 45, 55, 84, 109, 116, 117, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2670 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 45, 55, 84, 109, 116, 117, 121]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2674 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.tail 116 (List.Mem.head [121]))))))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [84, 109, 116, 117, 121]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2682 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 45, 55, 84, 109, 116, 117, 121]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2685 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 33, 40, 42, 43, 45, 46, 55, 59, 69, 91, 109, 117] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 59, 69, 91, 109, 117]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 33 (List.Mem.head [42, 43, 45, 46, 55, 59, 69, 91, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2697 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2728 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 42, 55, 69, 109, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 42 (List.Mem.head [69, 109, 117])))) (.atom (List.Mem.tail 33 (List.Mem.head [55, 69, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2731 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 43, 45, 46, 55, 69, 91, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2757 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 25, 48, 55, 71, 121] →
      Formula.Holds valuation (.atom 48) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.head [55, 71, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2763 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 72, 117, 123] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [117, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2773 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 31) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 17 (List.Mem.head [40, 55, 109, 117]))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head [])))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [55, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2779 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2782 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 17, 31, 40, 42, 43, 55, 58, 61, 64, 72, 109, 114, 116, 117, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [55, 58, 61, 64, 72, 109, 114, 116, 117, 123])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.head [42, 43, 55, 58, 61, 64, 72, 109, 114, 116, 117, 123])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2794 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 69, 109, 117] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.head [40, 42, 43, 55, 59, 62, 69, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2797 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 31, 37, 38, 40, 42, 45, 52, 55, 59, 60, 74, 75, 78, 91, 115, 117, 121, 125, 134, 135, 140] →
      Formula.Holds valuation (.atom 140) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 60 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 78 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 121 (List.Mem.tail 125 (List.Mem.tail 134 (List.Mem.tail 135 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2823 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 116 (List.Mem.head [134]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2829 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2834 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 31, 37, 38, 40, 42, 74, 75, 91, 115, 117, 125, 134, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 115)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [125, 134, 140])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.head [117, 125, 134, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2839 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2840 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 111] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2847 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 74, 75, 116, 117, 134] →
      Formula.Holds valuation (.and (.and (.atom 42) (.atom 13)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [74, 75, 116, 117, 134]))))) (.atom (List.Mem.head [25, 40, 42, 74, 75, 116, 117, 134]))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.head [42, 74, 75, 116, 117, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2851 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 13, 31, 37, 38, 40, 42, 66, 73, 74, 75, 91, 115, 117, 125, 126, 134, 140] →
      Formula.Holds valuation (.atom 126) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.tail 117 (List.Mem.tail 125 (List.Mem.head [134, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2852 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 37, 40, 43, 49, 66, 73, 74, 75, 117, 126, 134] →
      Formula.Holds valuation (.and (.and (.atom 126) (.atom 117)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 117 (List.Mem.head [134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 37 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.tail 49 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.head [126, 134])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 37 (List.Mem.head [43, 49, 66, 73, 74, 75, 117, 126, 134])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2858 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 52, 55, 60, 117, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.tail 55 (List.Mem.tail 60 (List.Mem.head [140]))))))) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 52 (List.Mem.head [60, 117, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2893 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2909 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 96, 99, 113, 116, 117] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [55, 96, 99, 113, 116, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2921 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 103, 104, 109, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 91, 103, 104, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2934 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 43, 45, 46, 55, 62, 69, 91, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 43)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [62, 69, 91, 109, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 62, 69, 91, 109, 117]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 62, 69, 91, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2941 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 131)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.head [131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 117 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 46, 55, 59, 62, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2962 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 23, 25, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 96, 99, 103, 104, 109, 113, 116, 117, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 91, 96, 99, 103, 104, 109, 113, 116, 117, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2975 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 40, 42, 46, 55, 62, 109, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 46 (List.Mem.head [62, 109, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2980 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 59, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [59, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2992 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3002 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 18) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.head [42, 43, 55, 59, 62, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3006 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 18)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117])))))))) (.atom (List.Mem.tail 13 (List.Mem.head [33, 40, 42, 43, 55, 59, 62, 117])))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [43, 55, 59, 62, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3018 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 117, 131] →
      Formula.Holds valuation (.and (.atom 131) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 117 (List.Mem.head []))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 117, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3044 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 78, 117, 121, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [78, 117, 121, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3054 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3070 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 42, 55, 69, 109, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 33 (List.Mem.head [55, 69, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3072 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3079 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 42, 55, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 42 (List.Mem.head [62, 117])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.head [55, 62, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3082 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 78, 117, 121, 140] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [78, 117, 121, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3092 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 42, 55, 62, 117] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 42 (List.Mem.head [62, 117]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3104 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 40, 42, 55, 62, 78, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [62, 78, 117]))))) (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.head [55, 62, 78, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3105 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [36, 40, 42, 55, 62, 78, 117] →
      Formula.Holds valuation (.and (.and (.and (.atom 55) (.atom 42)) (.atom 78)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [62, 78, 117]))))) (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.head [55, 62, 78, 117]))))) (.atom (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 62 (List.Mem.head [117])))))))) (.atom (List.Mem.tail 36 (List.Mem.head [42, 55, 62, 78, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3112 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 102, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [109, 117, 122, 131])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3125 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.or (.atom 25) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3129 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 40, 42, 45, 55, 59, 117, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [140]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 36, 40, 42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 36 (List.Mem.head [42, 45, 55, 59, 62, 78, 109, 117, 122, 131, 135, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3142 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3157 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.and (.atom 1) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3170 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 40] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3174 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117]))))) (.atom (List.Mem.head [45, 55, 83, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3177 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 37, 38, 40, 42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3191 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 37, 38, 40, 42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3198 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 37, 38, 40, 42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 46, 55, 59, 62, 72, 74, 75, 91, 109, 115, 117, 123, 125, 131, 134, 140])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3202 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 31, 33, 37, 38, 40, 42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 123, 125, 131, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 43)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 69 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 91 (List.Mem.tail 115 (List.Mem.head [123, 125, 131, 134, 140])))))))))))))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 123, 125, 131, 134, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 72, 74, 75, 91, 115, 117, 123, 125, 131, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3213 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 122] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [122]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3219 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.head [117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3225 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [11, 42, 117] →
      Formula.Holds valuation (.atom 11) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [42, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3231 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 81, 85, 117, 128] →
      Formula.Holds valuation (.and (.atom 117) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 81 (List.Mem.tail 85 (List.Mem.head [128]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 81 (List.Mem.head [117, 128])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3234 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 13, 31, 40, 42, 50, 58, 61, 81, 85, 117, 128] →
      Formula.Holds valuation (.and (.atom 85) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 50 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 81 (List.Mem.head [117, 128])))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 13 (List.Mem.tail 31 (List.Mem.head [42, 50, 58, 61, 81, 85, 117, 128])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3242 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 40, 45, 55, 109, 117, 122] →
      Formula.Holds valuation (.and (.atom 109) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [117, 122])))))) (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3259 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 80, 101, 109, 117, 122] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [59, 80, 101, 109, 117, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3264 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 25, 33, 40, 42, 43, 48, 55, 59, 62, 71, 117, 121] →
      Formula.Holds valuation (.atom 18) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [25, 33, 40, 42, 43, 48, 55, 59, 62, 71, 117, 121])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3268 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3274 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 40, 45, 55, 59, 80, 101, 109, 117, 122] →
      Formula.Holds valuation (.and (.atom 109) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 80 (List.Mem.tail 101 (List.Mem.head [117, 122]))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 40 (List.Mem.tail 45 (List.Mem.head [59, 80, 101, 109, 117, 122]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3282 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 40, 42, 55, 80, 101, 117, 122] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 42)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [80, 101, 117, 122]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [55, 80, 101, 117, 122]))))) (.atom (List.Mem.tail 32 (List.Mem.head [42, 55, 80, 101, 117, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3290 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 40, 42, 55, 80, 101, 117, 122] →
      Formula.Holds valuation (.and (.atom 55) (.atom 101)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [80, 101, 117, 122]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 80 (List.Mem.head [117, 122]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3322 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 45, 55, 59, 61, 102, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 122) (.atom 102)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 102 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.head [109, 117, 122, 131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3328 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 45, 55, 59, 61, 102, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 102) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.head [109, 117, 122, 131]))))))))) (.atom (List.Mem.tail 13 (List.Mem.head [42, 45, 55, 59, 61, 102, 109, 117, 122, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3339 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 59, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 55) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [59, 109, 117, 122, 131]))))) (.atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head [131]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3345 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 102, 117, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 102 (List.Mem.tail 117 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3346 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 102, 117, 122] →
      Formula.Holds valuation (.and (.atom 42) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 102, 117, 122])))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 102 (List.Mem.tail 117 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3363 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 61, 102, 117, 122] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.head [117, 122]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3381 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 13, 18, 33, 40, 42, 43, 55, 59, 62, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.head [59, 62, 117]))))))))) (.atom (List.Mem.head [13, 18, 33, 40, 42, 43, 55, 59, 62, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3387 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 45, 55, 83, 109, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head []))))))) (.atom (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.head [83, 109, 117]))))) (.atom (List.Mem.head [45, 55, 83, 109, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3397 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 46, 55, 69, 91, 117] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 91 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [69, 91, 117]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [43, 45, 46, 55, 69, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3403 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 40, 43, 55, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.tail 43 (List.Mem.head [117]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 40 (List.Mem.head [55, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3410 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 82, 117] →
      Formula.Holds valuation (.atom 82) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3455 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 25, 40, 42, 55, 71, 103, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [25, 40, 42, 55, 71, 103, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [71, 103, 117])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3460 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 81, 85, 117] →
      Formula.Holds valuation (.atom 85) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 42 (List.Mem.tail 81 (List.Mem.head [117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3490 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 40, 55, 117] →
      Formula.Holds valuation (.atom 25) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [40, 55, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 33, 40, 73, 117] →
      Formula.Holds valuation (.atom 33) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.head [40, 73, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3507 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3513 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [22, 23, 25, 40, 42, 55, 91, 103, 104, 109, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 25, 40, 42, 55, 91, 103, 104, 109, 117])) (.atom (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.tail 103 (List.Mem.tail 104 (List.Mem.tail 109 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3518 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 42, 55, 117] →
      Formula.Holds valuation (.atom 25) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 55, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3542 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [119, 130] →
      Formula.Holds valuation (.atom 130) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 119 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3548 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 25, 117] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 25, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3554 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 25, 27, 48, 55, 71, 121] →
      Formula.Holds valuation (.atom 27) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 25 (List.Mem.head [48, 55, 71, 121]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3567 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 46, 55, 59, 62, 117, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 62 (List.Mem.tail 117 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3578 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 33, 117] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [33, 117]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3598 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3604 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 117, 140] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [117, 140]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3629 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 33, 40, 42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131] →
      Formula.Holds valuation (.and (.atom 55) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.head [59, 62, 69, 91, 109, 117, 122, 131])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 33 (List.Mem.head [42, 43, 45, 46, 55, 59, 62, 69, 91, 109, 117, 122, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3662 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 42, 55, 59, 109, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 42 (List.Mem.head [59, 109, 117])))) (.atom (List.Mem.tail 13 (List.Mem.head [55, 59, 109, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3681 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 97, 109, 117, 122] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head [122])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3685 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 12, 45, 55, 84, 91, 97, 109, 117] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 12 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 91 (List.Mem.tail 97 (List.Mem.tail 109 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3691 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 59, 69, 83, 97, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 55, 59, 69, 83, 97, 109, 117, 122, 131])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3701 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 59, 69, 83, 97, 109, 117, 122, 131] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [42, 55, 59, 69, 83, 97, 109, 117, 122, 131])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3709 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 55)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 91 (List.Mem.head []))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.head [91, 117]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3710 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.and (.atom 117) (.atom 121)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121])))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.tail 117 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3717 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3719 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3724 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 69, 83, 91, 109, 117, 121] →
      Formula.Holds valuation (.and (.and (.atom 117) (.atom 55)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 91 (List.Mem.tail 109 (List.Mem.head [121])))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.head [69, 83, 91, 109, 117, 121])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 55, 69, 83, 91, 109, 117, 121]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3783 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 25, 31, 40, 42, 53, 55, 61, 79, 84, 105, 109, 117, 123, 124, 129] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.head [42, 53, 55, 61, 79, 84, 105, 109, 117, 123, 124, 129])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3802 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 106, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 40 (List.Mem.tail 106 (List.Mem.head [])))) (.atom (List.Mem.head [106, 117])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3806 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 73, 106, 115, 117, 125] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 73, 106, 115, 117, 125])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 115 (List.Mem.head [125]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3807 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 40, 73, 106, 115, 117, 125] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [40, 73, 106, 115, 117, 125])) (.atom (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 73 (List.Mem.tail 106 (List.Mem.tail 115 (List.Mem.head [125]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3834 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 25, 31, 33, 40, 42, 55, 59, 69, 74, 75, 83, 109, 115, 117, 134, 140] →
      Formula.Holds valuation (.and (.and (.atom 109) (.atom 117)) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 83 (List.Mem.head [115, 117, 134, 140]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 69 (List.Mem.tail 74 (List.Mem.tail 75 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.tail 115 (List.Mem.head [134, 140])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 31 (List.Mem.tail 33 (List.Mem.tail 40 (List.Mem.head [55, 59, 69, 74, 75, 83, 109, 115, 117, 134, 140])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3840 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [55, 69, 83, 109, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.tail 83 (List.Mem.tail 109 (List.Mem.head [])))))) (.atom (List.Mem.tail 55 (List.Mem.tail 69 (List.Mem.head [109, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3864 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [16, 40, 68, 112] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 16 (List.Mem.tail 40 (List.Mem.tail 68 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3894 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [45, 55, 83, 117] →
      Formula.Holds valuation (.and (.atom 117) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 83 (List.Mem.head []))))) (.atom (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3926 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 117, 123, 129] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [117, 123, 129]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [42, 55, 79, 117] →
      Formula.Holds valuation (.and (.atom 55) (.atom 79)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 42 (List.Mem.head [79, 117]))) (.atom (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.head [117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3957 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.tail 116 (List.Mem.head [121])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3959 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 31, 40, 55, 109, 117] →
      Formula.Holds valuation (.and (.atom 31) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 17 (List.Mem.head [40, 55, 109, 117]))) (.atom (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 109 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3970 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 22, 25, 42, 55, 71, 79, 107, 117] →
      Formula.Holds valuation (.and (.atom 22) (.atom 107)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [25, 42, 55, 71, 79, 107, 117]))) (.atom (List.Mem.tail 13 (List.Mem.tail 22 (List.Mem.tail 25 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 71 (List.Mem.tail 79 (List.Mem.head [117]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3977 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 79, 84, 117] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 79, 84, 117]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3978 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 55, 79, 117, 140] →
      Formula.Holds valuation (.and (.atom 42) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [55, 79, 117, 140])))) (.atom (List.Mem.tail 13 (List.Mem.head [42, 55, 79, 117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4000 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.and (.atom 61) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.head [84, 105, 109, 117, 140])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 61 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.head [140])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4018 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 55, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4019 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 17, 19, 40, 42, 53, 55, 57, 61, 84, 105, 109, 117, 137, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 19 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 61 (List.Mem.tail 84 (List.Mem.tail 105 (List.Mem.tail 109 (List.Mem.head [137, 140])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4028 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.and (.and (.atom 55) (.atom 1)) (.atom 40)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 53 (List.Mem.head [61, 84, 105, 109, 117, 140]))))))) (.atom (List.Mem.head [13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140]))) (.atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4040 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 43, 45, 55, 91, 117] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.head [45, 55, 91, 117])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4051 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 57, 59, 84, 109, 117, 128, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 57, 59, 84, 109, 117, 128, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4077 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 36, 40, 42, 45, 55, 57, 59, 109, 117, 128, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4087 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 36, 40, 42, 45, 55, 57, 59, 109, 117, 128, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 36 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4115 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 40, 42, 87, 117, 123, 129] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [87, 117, 123, 129]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4125 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 39, 40, 42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 87 (List.Mem.tail 90 (List.Mem.tail 109 (List.Mem.head [123, 129])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4132 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 42, 45, 55, 84, 109, 116, 117, 121] →
      Formula.Holds valuation (.atom 116) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.head [117, 121]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4134 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 39, 40, 42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129] →
      Formula.Holds valuation (.and (.atom 86) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.head [87, 90, 109, 117, 123, 129]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 70 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 87 (List.Mem.tail 90 (List.Mem.tail 109 (List.Mem.head [123, 129]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4162 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 17, 31, 39, 40, 42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 17 (List.Mem.tail 31 (List.Mem.tail 39 (List.Mem.head [42, 55, 70, 72, 86, 87, 90, 109, 117, 123, 129]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4169 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 40, 42, 45, 55, 59, 117, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [140]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4182 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 59, 97, 109, 117, 122, 124] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [55, 59, 97, 109, 117, 122, 124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4190 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 40, 44, 45, 55, 59, 67, 69, 84, 117, 131] →
      Formula.Holds valuation (.and (.and (.atom 67) (.atom 84)) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.head [69, 84, 117, 131])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.head [117, 131]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.head [131]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 40, 42, 45, 55, 59, 117, 135, 140] →
      Formula.Holds valuation (.atom 135) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 117 (List.Mem.head [140]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4232 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 13, 14, 40, 42, 44, 45, 55, 59, 67, 69, 84, 97, 102, 109, 117, 122, 124, 131, 135, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 44 (List.Mem.tail 45 (List.Mem.tail 55 (List.Mem.tail 59 (List.Mem.tail 67 (List.Mem.tail 69 (List.Mem.tail 84 (List.Mem.tail 97 (List.Mem.tail 102 (List.Mem.tail 109 (List.Mem.head [122, 124, 131, 135, 140])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4242 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 55, 106, 117, 140] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.tail 55 (List.Mem.tail 106 (List.Mem.head [140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4247 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 57, 59, 84, 109, 117, 128, 140] →
      Formula.Holds valuation (.and (.atom 117) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.tail 42 (List.Mem.tail 55 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 84 (List.Mem.tail 109 (List.Mem.head [128, 140]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 57, 59, 84, 109, 117, 128, 140]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4248 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 25, 40, 42, 55, 57, 59, 84, 109, 117, 128, 140] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 25 (List.Mem.tail 40 (List.Mem.head [55, 57, 59, 84, 109, 117, 128, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4331 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 42) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.tail 40 (List.Mem.head [53, 55, 61, 84, 105, 109, 117, 140])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4340 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4342 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 13, 40, 42, 53, 55, 61, 84, 105, 109, 117, 140] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 13 (List.Mem.head [42, 53, 55, 61, 84, 105, 109, 117, 140]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4364 :
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0097
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0100
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0104
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0106
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0107
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0108
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0112
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0123
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0128
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0129
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0131
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0144
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0148
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0149
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0222
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0231
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0233
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0240
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0257
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0268
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0288
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0301
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0385
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0387
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0396
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0471
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0500
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0518
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0528
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0529
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0539
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0545
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0578
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0610
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0618
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0621
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0646
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0680
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0690
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0691
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0700
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0709
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0720
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0736
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0765
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0793
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0794
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0811
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0838
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0842
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0845
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0847
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0851
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0853
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0861
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0865
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0873
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0874
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0885
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1035
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1036
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1043
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1045
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1076
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1078
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1080
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1085
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1087
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1088
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1095
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1105
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1106
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1112
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1114
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1119
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1123
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1124
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1132
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1133
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1138
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1139
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1146
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1147
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1152
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1154
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1160
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1182
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1188
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1193
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1198
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1201
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1202
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1226
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1229
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1233
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1238
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1267
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1277
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1289
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1345
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1347
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1357
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1358
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1367
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1380
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1385
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1386
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1398
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1404
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1414
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1419
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1428
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1430
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1432
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1444
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1467
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1474
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1492
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1494
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1500
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1503
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1505
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1507
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1517
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1537
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1540
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1541
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1542
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1545
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1548
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1553
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1554
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1555
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1559
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1560
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1562
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1572
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1573
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1581
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1588
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1589
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1594
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1595
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1597
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1603
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1604
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1622
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1625
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1626
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1630
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1631
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1632
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1646
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1649
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1657
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1661
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1664
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1673
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1684
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1687
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1689
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1692
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1694
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1697
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1702
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1706
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1710
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1714
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1747
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1759
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1766
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1770
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1849
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1852
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1865
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1902
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1909
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1928
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1929
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1935
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1936
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1954
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1955
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1961
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1962
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1967
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1968
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1971
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1974
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1975
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1979
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1986
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1990
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1994
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1998
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1999
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2004
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2019
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2021
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2043
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2050
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2058
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2062
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2064
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2075
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2091
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2113
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2118
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2175
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2209
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2299
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2305
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2319
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2379
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2381
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2394
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2406
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2429
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2438
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2444
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2482
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2496
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2558
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2564
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2570
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2580
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2594
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2596
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2597
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2605
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2627
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2635
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2645
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2665
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2670
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2674
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2682
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2685
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2697
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2728
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2731
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2757
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2763
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2773
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2779
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2782
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2794
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2797
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2823
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2829
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2834
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2839
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2840
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2847
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2851
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2852
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2858
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2893
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2909
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2921
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2934
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2941
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2962
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2975
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2980
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2992
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3002
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3006
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3018
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3044
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3054
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3070
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3072
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3079
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3082
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3092
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3104
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3105
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3112
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3125
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3129
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3142
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3157
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3170
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3174
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3177
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3191
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3198
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3202
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3213
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3219
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3225
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3231
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3234
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3242
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3259
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3264
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3268
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3274
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3282
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3290
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3322
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3328
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3339
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3345
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3346
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3363
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3381
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3387
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3397
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3403
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3410
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3455
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3460
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3490
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3507
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3513
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3518
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3542
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3548
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3554
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3567
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3578
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3598
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3604
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3629
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3662
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3681
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3685
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3691
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3701
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3709
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3710
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3717
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3719
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3724
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3783
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3802
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3806
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3807
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3834
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3840
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3864
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3894
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3926
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3957
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3959
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3970
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3977
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3978
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4000
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4018
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4019
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4028
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4040
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4051
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4077
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4087
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4115
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4125
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4132
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4134
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4162
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4169
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4182
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4190
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4232
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4242
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4247
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4248
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4331
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4340
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4342
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4364
