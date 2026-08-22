import RagEvidence.LiteratureGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.LiteratureProofs

open LiteratureLogic LiteratureGenerated

theorem reported_literature_entailments_count_exact :
    reportedDerivedIds.length = 476 := by
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

theorem literature_SENT_0143 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [119, 120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0144 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 46, 56, 77, 83, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.atom 118) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.head [119, 120, 122]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 120 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [119, 120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0185 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 56, 119, 120] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 19)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.head [120]))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [119, 120]))))) (.atom (List.Mem.tail 13 (List.Mem.head [56, 119, 120])))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0198 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 34, 40, 46, 83, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 34 (List.Mem.head [46, 83, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 40, 46, 83, 119, 122] →
      Formula.Holds valuation (.and (.atom 119) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.head [122]))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0250 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.and (.and (.atom 46) (.atom 13)) (.atom 122)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.head [83, 119, 122])))) (.atom (List.Mem.head [32, 46, 83, 119, 122]))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 119 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0265 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 18, 32, 34, 40, 46, 63, 83, 119, 122] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 40 (List.Mem.head [63, 83, 119, 122]))))))) (.atom (List.Mem.head [18, 32, 34, 40, 46, 63, 83, 119, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0272 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 34, 40, 46, 83, 119] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 34 (List.Mem.head [46, 83, 119])))) (.atom (List.Mem.tail 13 (List.Mem.head [40, 46, 83, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0312 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 77, 83, 118, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 83)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [])))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 77 (List.Mem.head [118, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0398 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.head [119]))) (.atom (List.Mem.head [118, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 84, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 19)) (.atom 13)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.head [120]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 84, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 83, 84, 118, 119, 120]))))) (.atom (List.Mem.tail 13 (List.Mem.head [46, 56, 83, 84, 118, 119, 120])))) (.atom (List.Mem.head [19, 46, 56, 83, 84, 118, 119, 120]))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0456 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 84, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.head [120]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 84, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0460 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0464 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 84, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.head [120]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 84, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0487 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.and (.atom 46) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 83, 118, 119, 120])))) (.atom (List.Mem.head [19, 46, 56, 83, 118, 119, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0515 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 118, 119, 120] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.head [46, 56, 83, 118, 119, 120])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0537 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 84, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 119) (.atom 56)) (.atom 46)) (.atom 13)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.head [120]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 84, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.head [56, 83, 84, 118, 119, 120]))))) (.atom (List.Mem.head [19, 46, 56, 83, 84, 118, 119, 120]))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0542 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 84, 118, 119, 120] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.head [120]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.head [83, 84, 118, 119, 120])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 83 (List.Mem.tail 84 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0548 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 46, 56, 83, 84, 118, 119, 120] →
      Formula.Holds valuation (.atom 13) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [19, 46, 56, 83, 84, 118, 119, 120]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0550 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0602 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 34, 40, 46, 83, 119] →
      Formula.Holds valuation (.and (.atom 40) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 34 (List.Mem.head [46, 83, 119])))) (.atom (List.Mem.tail 13 (List.Mem.head [40, 46, 83, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0603 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 32, 46, 83, 119, 122] →
      Formula.Holds valuation (.atom 122) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 83 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0605 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 46, 56, 77, 83, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.atom 118) (.atom 13)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.head [119, 120, 122]))))))))) (.atom (List.Mem.head [19, 32, 46, 56, 77, 83, 118, 119, 120, 122])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0606 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 19, 32, 40, 46, 56, 77, 83, 118, 119, 120, 122] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 19)) (.atom 120)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.head [120, 122]))))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.head [77, 83, 118, 119, 120, 122])))))))) (.atom (List.Mem.tail 13 (List.Mem.head [32, 40, 46, 56, 77, 83, 118, 119, 120, 122])))) (.atom (List.Mem.tail 13 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 77 (List.Mem.tail 83 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [122])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0630 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0631 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 128) (.atom 32)) (.atom 119)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.head [136, 142]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 44, 50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0633 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 38, 41, 43, 44, 50, 56, 72, 76, 77, 88, 118, 119, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.head [119, 128, 136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [50, 56, 72, 76, 77, 88, 118, 119, 128, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0635 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 8, 14, 19, 41, 43, 44, 46, 54, 56, 63, 71, 86, 90, 93, 99, 107, 111, 119, 140, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 8 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 86, 90, 93, 99, 107, 111, 119, 140, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0640 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0646 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 5, 14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 5) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.head [14, 19, 26, 32, 41, 43, 46, 54, 56, 59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142]))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 116 (List.Mem.tail 118 (List.Mem.head [142])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [59, 63, 66, 71, 72, 86, 88, 90, 93, 99, 107, 111, 116, 118, 119, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0656 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0657 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0659 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.and (.atom 119) (.atom 44)) (.atom 117)) (.and (.atom 43) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [119, 127, 136, 142]))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0660 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.atom 119) (.atom 44)) (.and (.and (.atom 119) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0661 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0662 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 25, 32, 38, 39, 41, 43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 67 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 67, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0665 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.atom 119) (.and (.and (.and (.and (.atom 31) (.atom 119)) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0666 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 23, 24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 106, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.or (.and (.atom 23) (.atom 119)) (.and (.and (.and (.atom 119) (.atom 44)) (.atom 43)) (.atom 41))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [24, 26, 32, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 76, 77, 90, 93, 99, 106, 111, 117, 119, 127, 136, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0667 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 142)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0668 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0669 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 90, 93, 99, 111, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0670 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 19, 32, 38, 39, 41, 43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 56) (.atom 142)) (.atom 44)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.head [61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142]))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 54, 56, 61, 63, 64, 71, 76, 77, 86, 90, 93, 99, 107, 111, 117, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0673 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 26, 32, 38, 39, 41, 43, 46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 142)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.head [63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 88 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head []))))))))))))))))))))))))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 46, 54, 56, 63, 71, 72, 76, 77, 86, 88, 90, 93, 99, 107, 111, 117, 118, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0683 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 38, 41, 43, 44, 50, 59, 63, 66, 76, 77, 116, 118, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.tail 118 (List.Mem.head [128, 136])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0685 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0686 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0689 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136])))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0691 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [117, 119, 127, 136, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0696 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 118, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [118, 119])))) (.atom (List.Mem.head [41, 43, 118, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0697 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0700 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 85, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0701 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.head [119, 142])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 90 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [142])))))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [90, 93, 99, 111, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0702 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 93)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0704 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0705 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 19 (List.Mem.head [119]))) (.atom (List.Mem.head [56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0706 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 47) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 64, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0707 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119, 142] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0708 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0709 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0710 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 46, 56, 58, 111, 119] →
      Formula.Holds valuation (.atom 111) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.head [119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0711 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 126] →
      Formula.Holds valuation (.and (.and (.and (.atom 111) (.atom 119)) (.atom 56)) (.atom 126)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 56 (List.Mem.head [119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [126]))))) (.atom (List.Mem.head [111, 119, 126]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0712 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0713 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0714 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 46, 56, 61, 69, 71, 86, 119, 133, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 71)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133, 142]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.head [86, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0715 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [8, 56, 140, 142] →
      Formula.Holds valuation (.and (.atom 140) (.atom 8)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 8 (List.Mem.tail 56 (List.Mem.head [142])))) (.atom (List.Mem.head [56, 140, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0720 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0721 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0722 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0723 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0807 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0809 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0818 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0894 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))) (.atom (List.Mem.head [111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0923 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0941 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0951 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 111, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 133)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [133])))) (.atom (List.Mem.head [111, 119, 133]))) (.atom (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0952 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0962 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 31 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_0968 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.head [85, 119])))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1001 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [28, 43, 119] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1033 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1041 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1044 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1069 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 92, 119] →
      Formula.Holds valuation (.atom 92) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1103 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 28, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 2 (List.Mem.tail 10 (List.Mem.tail 26 (List.Mem.tail 28 (List.Mem.tail 43 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1113 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1114 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 74, 89, 119] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [89, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1123 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1132 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 74, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [74, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1143 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.and (.atom 74) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 74, 119, 125])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1159 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 131) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 119 (List.Mem.tail 125 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1188 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 74, 92, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [41, 43, 44, 74, 92, 119, 125, 131]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 44, 74, 92, 119, 125, 131])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1216 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1217 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 32, 35, 38, 39, 41, 43, 59, 66, 73, 76, 77, 93, 117, 119, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 133, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1234 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [78, 125, 142] →
      Formula.Holds valuation (.and (.atom 125) (.atom 78)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 78 (List.Mem.head [142]))) (.atom (List.Mem.head [125, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1261 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 23, 40, 41, 42, 43, 54, 56, 63, 81, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 81 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1265 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1268 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 63) (.atom 54)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1274 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1278 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1280 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1288 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1292 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 32, 41, 43, 54, 56, 63, 81, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 81, 86, 107, 111, 119, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1300 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1301 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.atom 81) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1312 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 38, 41, 43, 44, 46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 50, 56, 61, 64, 71, 74, 76, 77, 93, 119, 125, 128, 133, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1331 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1352 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1354 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 19)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1364 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1380 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1388 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head []))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1389 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1393 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1399 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1403 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1406 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 12 (List.Mem.tail 43 (List.Mem.head [])))) (.atom (List.Mem.head [43, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1447 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 23, 25, 32, 38, 39, 40, 41, 42, 43, 44, 50, 67, 76, 77, 81, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 81 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1451 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1452 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [25, 32, 41, 43, 67, 119] →
      Formula.Holds valuation (.atom 67) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1453 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 39)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1462 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.atom 39) (.atom 67)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1463 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1470 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1472 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1503 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1505 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 50) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136])))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1507 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 72) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1512 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.atom 40) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.head [42, 81, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1514 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 26, 32, 40, 41, 42, 43, 56, 72, 81, 88, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 42 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 81 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1515 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 23, 40, 42, 81, 119] →
      Formula.Holds valuation (.and (.atom 18) (.atom 42)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [23, 40, 42, 81, 119])) (.atom (List.Mem.tail 18 (List.Mem.tail 23 (List.Mem.tail 40 (List.Mem.head [81, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1522 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.and (.atom 75) (.atom 34)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [119]))))) (.atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1532 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1533 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.head [])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1539 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [72, 88, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1541 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 14)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142]))))))))) (.atom (List.Mem.head [25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1546 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 136, 142]))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 56, 67, 72, 76, 77, 88, 93, 117, 118, 119, 127, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1550 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 23, 26, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 73, 116, 117, 119, 123, 130, 133] →
      Formula.Holds valuation (.or (.atom 119) (.atom 5)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 116 (List.Mem.tail 117 (List.Mem.head [123, 130, 133])))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1551 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1559 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1560 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 7, 14, 22, 23, 32, 34, 35, 41, 43, 51, 52, 57, 59, 63, 66, 116, 119, 123, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 7 (List.Mem.tail 14 (List.Mem.tail 22 (List.Mem.tail 23 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [123, 130])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1565 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1566 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1573 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 51) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [59, 63, 119, 130]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1574 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 63, 119] →
      Formula.Holds valuation (.atom 4) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [5, 32, 35, 41, 43, 51, 52, 63, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1579 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 22) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.head [23, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1581 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [7, 22, 23, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 7 (List.Mem.tail 22 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1587 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.and (.atom 57) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [63, 119, 123])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 63 (List.Mem.head [123])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 30, 34, 41, 57, 63, 66, 73, 119, 123, 133] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.head [41, 57, 63, 66, 73, 119, 123, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1615 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1620 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1625 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [40, 56, 119, 123] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 40 (List.Mem.head [119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1628 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.atom 66) (.atom 119)) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.head [73, 117, 119, 123, 133]))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1629 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 30, 34, 35, 41, 59, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 133)) (.atom 117)) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.head [123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.head []))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.head [119, 123, 133])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 30 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.head [117, 119, 123, 133])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1653 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1656 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1660 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 26, 34, 35, 41, 57, 59, 63, 66, 73, 117, 119, 123, 133] →
      Formula.Holds valuation (.atom 123) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 34 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 57 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [133])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1665 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 26, 35, 41, 59, 66, 73, 117, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 59 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1721 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 35, 41, 43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 59 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 66 (List.Mem.tail 73 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head []))))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 35 (List.Mem.head [43, 44, 46, 47, 56, 59, 61, 64, 66, 73, 111, 117, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1746 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 12)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.head [124, 133]))))))))))))) (.atom (List.Mem.tail 12 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))) (.atom (List.Mem.head [14, 41, 43, 44, 46, 47, 56, 61, 64, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1756 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1768 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 41, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 46)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.head [56, 86, 93, 99, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1824 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1826 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 81, 111, 119, 126]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 56, 81, 111, 119, 126])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1836 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 81, 111, 119, 126] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 81 (List.Mem.tail 111 (List.Mem.head [126])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1837 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1846 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 15, 41, 45, 46, 56, 61, 69, 71, 86, 93, 99, 111, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 93, 99, 111, 119, 133])))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [133])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1859 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 108) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.head [111, 119, 123])))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1864 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1865 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 56, 71, 93, 96, 108, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1877 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 53, 55, 73, 97, 118, 119] →
      Formula.Holds valuation (.atom 55) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [73, 97, 118, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1883 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 43, 53, 56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 71, 76, 93, 95, 96, 108, 111, 119, 123, 136]))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 93 (List.Mem.tail 95 (List.Mem.tail 96 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [123, 136]))))))))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.head [71, 76, 93, 95, 96, 108, 111, 119, 123, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1893 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 55, 56, 73, 76, 95, 97, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.tail 97 (List.Mem.tail 118 (List.Mem.head [136]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1898 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 76, 95, 119, 136] →
      Formula.Holds valuation (.or (.and (.and (.atom 53) (.atom 119)) (.atom 56)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 76, 95, 119, 136])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 76 (List.Mem.tail 95 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [76, 95, 119, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1907 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 53) (.atom 119)) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.head [56, 62, 119, 142])))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1909 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 53, 56, 62, 119, 142])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1911 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1923 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.atom 69) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1932 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1951 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136])))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1958 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1964 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 38, 41, 43, 44, 50, 53, 56, 68, 75, 76, 77, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.atom 128) (.atom 68)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136]))))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.head [75, 76, 77, 113, 118, 119, 128, 134, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1980 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 77, 119, 128] →
      Formula.Holds valuation (.and (.atom 77) (.atom 38)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.head [119, 128]))) (.atom (List.Mem.head [77, 119, 128])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1982 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1988 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 136) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head []))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1991 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.and (.atom 77) (.atom 38)) (.atom 76)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.head [44, 50, 76, 77, 119, 128, 136]))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1993 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1995 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_1998 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 26, 36, 41, 43, 53, 68, 75, 76, 77, 113, 118, 119, 128, 136] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.head [53, 68, 75, 76, 77, 113, 118, 119, 128, 136])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2012 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 77) (.atom 136)) (.atom 76)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.head [119, 128, 136])))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2018 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 76) (.atom 50)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.head [76, 77, 119, 128, 136]))))) (.atom (List.Mem.tail 38 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2038 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 75)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.head [77, 97, 113, 118, 119, 128, 134, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2041 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 68, 75, 77, 118, 119, 128, 134] →
      Formula.Holds valuation (.and (.atom 134) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.tail 128 (List.Mem.head [])))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [128, 134])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2042 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 68, 75, 77, 113, 119, 128] →
      Formula.Holds valuation (.and (.atom 36) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.head [41, 43, 53, 68, 75, 77, 113, 119, 128])))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.head [43, 53, 68, 75, 77, 113, 119, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2043 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 68, 75, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 75) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.head [77, 119, 128, 136]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))) (.atom (List.Mem.tail 5 (List.Mem.head [68, 75, 77, 119, 128, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2046 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 36, 41, 43, 53, 55, 56, 68, 73, 75, 77, 97, 113, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 68)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.tail 119 (List.Mem.head [134, 136])))))))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.head [73, 75, 77, 97, 113, 118, 119, 128, 134, 136]))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 36 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 77 (List.Mem.tail 97 (List.Mem.tail 113 (List.Mem.tail 118 (List.Mem.head [128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2049 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 25, 26, 32, 38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.head [38, 39, 41, 43, 56, 67, 68, 72, 76, 77, 88, 93, 117, 118, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 67 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2054 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 23, 34, 41, 57, 63, 119, 123] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 23 (List.Mem.head [41, 57, 63, 119, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2055 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.and (.and (.atom 39) (.atom 67)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 67, 76, 77, 93, 117, 119, 127, 136])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [76, 77, 93, 117, 119, 127, 136])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2056 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.and (.and (.and (.atom 32) (.atom 39)) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.head [38, 39, 41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 128, 136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 50, 76, 77, 93, 117, 119, 127, 128, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2060 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 39) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.head [41, 43, 76, 77, 93, 117, 119, 127, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2061 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2063 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2073 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 6, 32, 119] →
      Formula.Holds valuation (.and (.and (.atom 6) (.atom 5)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.head [32, 119]))) (.atom (List.Mem.head [6, 32, 119]))) (.atom (List.Mem.tail 5 (List.Mem.tail 6 (List.Mem.tail 32 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2074 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [38, 44, 50, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 38 (List.Mem.head [50, 76, 77, 119, 128, 136])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2082 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2089 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2090 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 76, 102, 119, 136] →
      Formula.Holds valuation (.atom 102) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2095 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2096 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2098 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 127) (.atom 25)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2105 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 127) (.atom 25)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.head [136, 142]))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [32, 38, 39, 41, 43, 67, 76, 77, 93, 117, 119, 127, 136, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2107 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2111 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 41, 43, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.atom 59) (.atom 63)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [63, 66, 116, 119]))))) (.atom (List.Mem.tail 5 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.head [66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2120 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 32, 41, 43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 68 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 136]))))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.head [43, 59, 63, 66, 68, 76, 77, 116, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2133 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 72)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [88, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2136 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 32, 41, 43, 71, 72, 88, 119, 123] →
      Formula.Holds valuation (.and (.atom 21) (.atom 23)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [23, 32, 41, 43, 71, 72, 88, 119, 123]))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.head [32, 41, 43, 71, 72, 88, 119, 123])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2137 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.atom 32) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.head [40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2141 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 32, 41, 43, 56, 72, 88, 118, 119] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.head [118, 119])))))))) (.atom (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 88 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2142 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 40, 41, 43, 88, 119, 128] →
      Formula.Holds valuation (.and (.and (.and (.atom 128) (.atom 32)) (.atom 88)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.tail 119 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [40, 41, 43, 88, 119, 128])))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [119, 128])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 88 (List.Mem.head [128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2143 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 21, 23, 26, 32, 40, 41, 43, 56, 71, 72, 88, 118, 119, 123, 128] →
      Formula.Holds valuation (.and (.atom 88) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 72 (List.Mem.head [118, 119, 123, 128]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 21 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 71, 72, 88, 118, 119, 123, 128])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2157 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2160 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2168 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2172 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2175 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2184 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2195 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2198 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2211 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2213 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2216 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.and (.atom 91) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.head [114, 119, 143])))) (.atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2218 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2226 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2231 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 77, 91, 114, 119, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.head [143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2235 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2239 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 38, 41, 43, 44, 50, 76, 77, 91, 114, 118, 119, 128, 136, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 91 (List.Mem.tail 114 (List.Mem.tail 118 (List.Mem.head [128, 136, 143]))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2243 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 136]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2276 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2288 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 5, 32, 35, 41, 43, 51, 52, 59, 63, 66, 116, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 116 (List.Mem.head [])))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 41 (List.Mem.head [51, 52, 59, 63, 66, 116, 119])))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.head [43, 51, 52, 59, 63, 66, 116, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2295 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 4, 5, 14, 32, 35, 38, 41, 43, 44, 50, 51, 52, 59, 63, 66, 76, 77, 116, 119, 128, 130, 136] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 4 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 35 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 51 (List.Mem.tail 52 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 66 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 116 (List.Mem.head [128, 130, 136])))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2299 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 53, 55, 56, 68, 72, 73, 75, 76, 77, 88, 97, 118, 119, 128, 134, 136] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 53 (List.Mem.tail 55 (List.Mem.tail 56 (List.Mem.tail 68 (List.Mem.tail 72 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 88 (List.Mem.tail 97 (List.Mem.head [119, 128, 134, 136]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2337 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 25, 32, 38, 39, 41, 43, 44, 50, 67, 76, 77, 93, 117, 118, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 25 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 67 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 118 (List.Mem.head [127, 128, 136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2379 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2382 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.head [130, 142])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2395 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 46)) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2432 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [31, 43, 56, 119] →
      Formula.Holds valuation (.and (.atom 31) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [43, 56, 119])) (.atom (List.Mem.tail 31 (List.Mem.head [56, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2439 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [9, 31] →
      Formula.Holds valuation (.and (.atom 31) (.atom 9)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 9 (List.Mem.head []))) (.atom (List.Mem.head [31])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2458 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 37) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [98, 118]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2459 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 98, 118] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 37 (List.Mem.tail 98 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2465 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 118 (List.Mem.head [])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2466 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 37, 41, 43, 56, 118, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [118, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 56, 118, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2484 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2485 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 115)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [118, 119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2491 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [98, 115, 118, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2492 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.head [43, 56, 98, 115, 118, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2497 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 46, 56, 61, 73, 81, 109, 110, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 73)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.tail 109 (List.Mem.tail 110 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.tail 124 (List.Mem.head [])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [81, 109, 110, 111, 119, 124, 133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2501 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2502 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2505 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2508 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2509 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 65)) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [79, 80, 115, 118, 119, 142])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [65, 79, 80, 115, 118, 119, 142]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2513 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 112, 115, 119] →
      Formula.Holds valuation (.atom 112) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.head [115, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2520 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2524 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2526 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.and (.and (.atom 118) (.atom 79)) (.atom 119)) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.head [119, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142]))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [56, 65, 79, 80, 115, 118, 119, 142])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 115, 118, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2528 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 41, 43, 56, 98, 115, 118, 119] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 98 (List.Mem.tail 115 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2532 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 118) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 112 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [142])))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.head [43, 56, 65, 79, 80, 98, 101, 112, 115, 118, 119, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2533 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 38, 39, 41, 43, 44, 50, 56, 65, 76, 77, 79, 80, 98, 101, 115, 118, 119, 128, 136, 142] →
      Formula.Holds valuation (.and (.atom 118) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 128, 136, 142])))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.tail 118 (List.Mem.head [128, 136, 142]))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2538 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2553 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 39, 41, 43, 56, 65, 79, 80, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 79) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.head [80, 115, 118, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2555 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 16, 37, 39, 41, 43, 56, 65, 79, 80, 98, 101, 115, 118, 119, 142] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 16 (List.Mem.tail 37 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 65 (List.Mem.tail 79 (List.Mem.tail 80 (List.Mem.tail 98 (List.Mem.tail 101 (List.Mem.tail 115 (List.Mem.head [119, 142])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2577 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.or (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2584 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 56, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 56, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [105, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2592 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2596 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 61, 73, 81, 105, 109, 110, 111, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 56, 61, 73, 81, 105, 109, 110, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2598 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 56, 73, 81, 110, 119] →
      Formula.Holds valuation (.atom 24) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.head [26, 41, 56, 73, 81, 110, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2609 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119] →
      Formula.Holds valuation (.atom 23) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [24, 26, 41, 43, 56, 73, 81, 93, 105, 106, 109, 110, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2625 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119, 142] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119, 142]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2647 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2652 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2709 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2734 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 44, 56, 142] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [56, 142])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2743 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2828 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 71, 90, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [71, 90, 93, 99, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2834 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))) (.atom (List.Mem.tail 56 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2840 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 61, 64, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2854 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2884 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 119, 133, 142])))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119, 133, 142])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119, 133, 142]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2939 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 19)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2941 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2954 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 64, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2966 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2990 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119, 142] →
      Formula.Holds valuation (.and (.atom 44) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119, 142]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_2999 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133]))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 44, 47, 56, 61, 64, 119, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3005 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.or (.atom 56) (.and (.atom 19) (.atom 44))) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.head [61, 64, 119, 133]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3043 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 119, 142] →
      Formula.Holds valuation (.and (.atom 56) (.atom 142)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [61, 119, 142]))) (.atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3057 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3120 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 119) (.atom 56)) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 71, 93, 119])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3126 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3132 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 71)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.head [93, 119])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3142 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3156 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 93, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3158 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3159 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3167 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 106, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 23) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 106, 111, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3192 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3200 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3210 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3230 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.head [46, 56, 86, 111, 118, 119, 123]))) (.atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3235 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3239 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123]))))))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [86, 111, 118, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3247 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 46, 56, 86, 111, 118, 119, 123]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3250 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 34, 41, 43, 44, 46, 47, 56, 61, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 71, 93, 111, 119]))))) (.atom (List.Mem.tail 14 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 71, 93, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3262 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3293 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 34 (List.Mem.tail 43 (List.Mem.head [71, 111, 119])))) (.atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3296 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 44, 46, 47, 56, 71, 93, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3322 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 49) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3328 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 74, 119, 125] →
      Formula.Holds valuation (.atom 74) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [119, 125]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3338 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 32) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head [])))))))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [56, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3344 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3347 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 18, 32, 41, 43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125] →
      Formula.Holds valuation (.and (.atom 44) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.head [43, 44, 56, 59, 63, 66, 74, 111, 116, 118, 119, 125])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3359 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 71, 111, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [41, 43, 44, 56, 61, 64, 71, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3362 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 32, 38, 39, 41, 43, 46, 53, 56, 61, 62, 76, 77, 80, 93, 117, 119, 123, 127, 136, 137, 142] →
      Formula.Holds valuation (.atom 142) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 62 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 80 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 123 (List.Mem.tail 127 (List.Mem.tail 136 (List.Mem.tail 137 (List.Mem.head []))))))))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3388 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 118 (List.Mem.head [136]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3394 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3399 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 32, 38, 39, 41, 43, 76, 77, 93, 117, 119, 127, 136, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 117)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [127, 136, 142])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.head [119, 127, 136, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3404 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3405 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3415 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3417 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 113] →
      Formula.Holds valuation (.atom 113) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3420 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 38, 41, 44, 50, 70, 76, 77, 114, 119, 128, 136] →
      Formula.Holds valuation (.and (.atom 114) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 70 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [119, 128, 136])))))))))) (.atom (List.Mem.tail 17 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.head [50, 70, 76, 77, 114, 119, 128, 136]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 76, 77, 118, 119, 136] →
      Formula.Holds valuation (.and (.and (.atom 43) (.atom 14)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [76, 77, 118, 119, 136]))))) (.atom (List.Mem.head [26, 41, 43, 76, 77, 118, 119, 136]))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.head [43, 76, 77, 118, 119, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3430 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 14, 32, 38, 39, 41, 43, 68, 75, 76, 77, 93, 117, 119, 127, 128, 136, 142] →
      Formula.Holds valuation (.atom 128) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.tail 119 (List.Mem.tail 127 (List.Mem.head [136, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3431 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [5, 38, 41, 44, 50, 68, 75, 76, 77, 119, 128, 136] →
      Formula.Holds valuation (.and (.and (.atom 128) (.atom 119)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 119 (List.Mem.head [136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.tail 50 (List.Mem.tail 68 (List.Mem.tail 75 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.head [128, 136])))))))))))) (.atom (List.Mem.tail 5 (List.Mem.tail 38 (List.Mem.head [44, 50, 68, 75, 76, 77, 119, 128, 136])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3437 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 53, 56, 62, 119, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.tail 56 (List.Mem.tail 62 (List.Mem.head [142]))))))) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 53 (List.Mem.head [62, 119, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3472 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3488 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 98, 101, 115, 118, 119] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 98, 101, 115, 118, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3500 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 93, 105, 106, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3513 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 44, 46, 47, 56, 64, 71, 93, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 44)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [64, 71, 93, 111, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 64, 71, 93, 111, 119]))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 64, 71, 93, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3520 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 133)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.head [133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 47, 56, 61, 64, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3541 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 24, 26, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 98, 101, 105, 106, 111, 115, 118, 119, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3557 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 43, 47, 56, 64, 111, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 47 (List.Mem.head [64, 111, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3562 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [61, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3574 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3584 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 19) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 56, 61, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3589 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 19)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119])))))))) (.atom (List.Mem.tail 14 (List.Mem.head [34, 41, 43, 44, 56, 61, 64, 119])))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [44, 56, 61, 64, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3601 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 119, 133] →
      Formula.Holds valuation (.and (.atom 133) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 119 (List.Mem.head []))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 119, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3627 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3637 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3653 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [34, 43, 56, 71, 111, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 34 (List.Mem.head [56, 71, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3655 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3662 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119])))))) (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.head [56, 64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3665 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 80, 119, 123, 142] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [80, 119, 123, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3675 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 43, 56, 64, 119] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 43 (List.Mem.head [64, 119]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3687 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3688 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [37, 41, 43, 56, 64, 80, 119] →
      Formula.Holds valuation (.and (.and (.and (.atom 56) (.atom 43)) (.atom 80)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.and (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.head [56, 64, 80, 119]))))) (.atom (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 64 (List.Mem.head [119])))))))) (.atom (List.Mem.tail 37 (List.Mem.head [43, 56, 64, 80, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3695 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [111, 119, 124, 133])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3708 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.or (.atom 26) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orRight (.atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3712 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3720 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 37, 41, 43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 37 (List.Mem.head [43, 46, 56, 61, 64, 80, 111, 119, 124, 133, 137, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3725 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3740 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3741 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41])) (.atom (List.Mem.tail 1 (List.Mem.head []))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3753 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 41] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3757 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3760 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3774 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3781 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 38, 39, 41, 43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 47, 56, 61, 64, 74, 76, 77, 93, 111, 117, 119, 125, 127, 133, 136, 142])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3782 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 127, 133, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3786 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 32, 34, 38, 39, 41, 43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 44)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 71 (List.Mem.tail 74 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 93 (List.Mem.tail 117 (List.Mem.head [125, 127, 133, 136, 142])))))))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 38 (List.Mem.tail 39 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 74, 76, 77, 93, 117, 119, 125, 127, 133, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3797 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 124] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [124]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3803 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.head [119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3809 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [12, 43, 119] →
      Formula.Holds valuation (.atom 12) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [43, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3815 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 119) (.atom 87)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.tail 87 (List.Mem.head [130]))))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3818 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [3, 5, 14, 32, 41, 43, 51, 59, 63, 83, 87, 119, 130] →
      Formula.Holds valuation (.and (.atom 87) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 51 (List.Mem.tail 59 (List.Mem.tail 63 (List.Mem.tail 83 (List.Mem.head [119, 130])))))))))))) (.atom (List.Mem.tail 3 (List.Mem.tail 5 (List.Mem.tail 14 (List.Mem.tail 32 (List.Mem.head [43, 51, 59, 63, 83, 87, 119, 130])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3826 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119, 124])))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3843 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.atom 56) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.head [61, 82, 103, 111, 119, 124])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3848 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123] →
      Formula.Holds valuation (.atom 19) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [26, 34, 41, 43, 44, 49, 56, 61, 64, 73, 119, 123])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3852 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3858 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 41, 46, 56, 61, 82, 103, 111, 119, 124] →
      Formula.Holds valuation (.and (.atom 111) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 82 (List.Mem.tail 103 (List.Mem.head [119, 124]))))))))) (.atom (List.Mem.tail 13 (List.Mem.tail 41 (List.Mem.tail 46 (List.Mem.head [61, 82, 103, 111, 119, 124]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3866 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 43)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.head [56, 82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.head [43, 56, 82, 103, 119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3874 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [33, 41, 43, 56, 82, 103, 119, 124] →
      Formula.Holds valuation (.and (.atom 56) (.atom 103)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [82, 103, 119, 124]))))) (.atom (List.Mem.tail 33 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 82 (List.Mem.head [119, 124]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3906 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 124) (.atom 104)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3912 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 46, 56, 61, 63, 104, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 104) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 63 (List.Mem.head [111, 119, 124, 133]))))))))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 46, 56, 61, 63, 104, 111, 119, 124, 133]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3923 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 61, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [61, 111, 119, 124, 133]))))) (.atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head [133]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3929 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 104, 119, 124] →
      Formula.Holds valuation (.atom 124) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head []))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3930 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 104, 119, 124] →
      Formula.Holds valuation (.and (.atom 43) (.atom 124)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 104, 119, 124])))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 104 (List.Mem.tail 119 (List.Mem.head [])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3947 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 63, 104, 119, 124] →
      Formula.Holds valuation (.atom 104) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.head [119, 124]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3965 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 14, 19, 34, 41, 43, 44, 56, 61, 64, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 10)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.head [61, 64, 119]))))))))) (.atom (List.Mem.head [14, 19, 34, 41, 43, 44, 56, 61, 64, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3971 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 46, 56, 85, 111, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head []))))))) (.atom (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.head [85, 111, 119]))))) (.atom (List.Mem.head [46, 56, 85, 111, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3981 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 47, 56, 71, 93, 119] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 93 (List.Mem.head []))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [71, 93, 119]))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [44, 46, 47, 56, 71, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3987 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [10, 41, 44, 56, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.tail 44 (List.Mem.head [119]))))) (.atom (List.Mem.tail 10 (List.Mem.tail 41 (List.Mem.head [56, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_3994 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 84, 119] →
      Formula.Holds valuation (.atom 84) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4039 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 26, 41, 43, 56, 73, 105, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [26, 41, 43, 56, 73, 105, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [73, 105, 119])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4044 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 83, 87, 119] →
      Formula.Holds valuation (.atom 87) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 43 (List.Mem.tail 83 (List.Mem.head [119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4074 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 41, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [41, 56, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4085 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [26, 34, 41, 75, 119] →
      Formula.Holds valuation (.atom 34) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 26 (List.Mem.head [41, 75, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4091 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4097 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [23, 24, 26, 41, 43, 56, 93, 105, 106, 111, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [24, 26, 41, 43, 56, 93, 105, 106, 111, 119])) (.atom (List.Mem.tail 23 (List.Mem.tail 24 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.tail 105 (List.Mem.tail 106 (List.Mem.tail 111 (List.Mem.head [])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4102 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 43, 56, 119] →
      Formula.Holds valuation (.atom 26) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4126 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [121, 132] →
      Formula.Holds valuation (.atom 132) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 121 (List.Mem.head [])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4132 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [2, 10, 26, 119] →
      Formula.Holds valuation (.atom 2) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [10, 26, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4138 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [19, 26, 28, 49, 56, 73, 123] →
      Formula.Holds valuation (.atom 28) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 19 (List.Mem.tail 26 (List.Mem.head [49, 56, 73, 123]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4151 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 47, 56, 61, 64, 119, 133] →
      Formula.Holds valuation (.atom 133) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 47 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 64 (List.Mem.tail 119 (List.Mem.head [])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4162 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [30, 34, 119] →
      Formula.Holds valuation (.atom 30) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [34, 119]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4182 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4188 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [29, 119, 142] →
      Formula.Holds valuation (.atom 29) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [119, 142]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4213 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 19, 34, 41, 43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133] →
      Formula.Holds valuation (.and (.atom 56) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 47 (List.Mem.head [61, 64, 71, 93, 111, 119, 124, 133])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 19 (List.Mem.tail 34 (List.Mem.head [43, 44, 46, 47, 56, 61, 64, 71, 93, 111, 119, 124, 133]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4247 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 43, 56, 61, 111, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 43 (List.Mem.head [61, 111, 119])))) (.atom (List.Mem.tail 14 (List.Mem.head [56, 61, 111, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4266 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head [124])))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4270 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 13, 46, 56, 86, 93, 99, 111, 119] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 4 (List.Mem.tail 13 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 93 (List.Mem.tail 99 (List.Mem.tail 111 (List.Mem.head []))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4276 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4286 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 61, 71, 85, 99, 111, 119, 124, 133] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.head [43, 56, 61, 71, 85, 99, 111, 119, 124, 133])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4294 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 56)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 93 (List.Mem.head []))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [93, 119]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4295 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.atom 119) (.atom 123)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.tail 119 (List.Mem.head []))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4302 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4304 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4309 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 71, 85, 93, 111, 119, 123] →
      Formula.Holds valuation (.and (.and (.atom 119) (.atom 56)) (.atom 44)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 93 (List.Mem.tail 111 (List.Mem.head [123])))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 44 (List.Mem.tail 46 (List.Mem.head [71, 85, 93, 111, 119, 123])))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 71, 85, 93, 111, 119, 123]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4386 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142] →
      Formula.Holds valuation (.or (.and (.atom 117) (.atom 26)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .orLeft (.and (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 73 (List.Mem.tail 75 (List.Mem.tail 81 (List.Mem.tail 108 (List.Mem.tail 109 (List.Mem.tail 111 (List.Mem.head [119, 126, 127, 130, 142]))))))))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.head [32, 41, 43, 56, 58, 61, 73, 75, 81, 108, 109, 111, 117, 119, 126, 127, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4394 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 32, 41, 43, 56, 61, 75, 108, 111, 117, 119, 127, 142] →
      Formula.Holds valuation (.atom 117) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 111 (List.Mem.head [119, 127, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4407 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.head [70, 114])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4426 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 108, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 41 (List.Mem.tail 108 (List.Mem.head [])))) (.atom (List.Mem.head [108, 119])))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4430 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4431 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [32, 41, 75, 108, 117, 119, 127] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [41, 75, 108, 117, 119, 127])) (.atom (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 75 (List.Mem.tail 108 (List.Mem.tail 117 (List.Mem.head [127]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4458 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [4, 14, 26, 32, 34, 41, 43, 56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142] →
      Formula.Holds valuation (.and (.and (.atom 111) (.atom 119)) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.head [117, 119, 136, 142]))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 71 (List.Mem.tail 76 (List.Mem.tail 77 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.tail 117 (List.Mem.head [136, 142])))))))))))))))))) (.atom (List.Mem.tail 4 (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 32 (List.Mem.tail 34 (List.Mem.tail 41 (List.Mem.head [56, 61, 71, 76, 77, 85, 111, 117, 119, 136, 142])))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4464 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [56, 71, 85, 111, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.tail 85 (List.Mem.tail 111 (List.Mem.head [])))))) (.atom (List.Mem.tail 56 (List.Mem.tail 71 (List.Mem.head [111, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4488 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [17, 41, 70, 114] →
      Formula.Holds valuation (.atom 114) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 17 (List.Mem.tail 41 (List.Mem.tail 70 (List.Mem.head [])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4518 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [46, 56, 85, 119] →
      Formula.Holds valuation (.and (.atom 119) (.atom 85)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 85 (List.Mem.head []))))) (.atom (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4550 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4571 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [43, 56, 81, 119] →
      Formula.Holds valuation (.and (.atom 56) (.atom 81)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 43 (List.Mem.head [81, 119]))) (.atom (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.head [119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4581 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.tail 118 (List.Mem.head [123])))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4583 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [18, 32, 41, 56, 111, 119] →
      Formula.Holds valuation (.and (.atom 32) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 18 (List.Mem.head [41, 56, 111, 119]))) (.atom (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 111 (List.Mem.head []))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4594 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 23, 26, 43, 56, 73, 81, 109, 119] →
      Formula.Holds valuation (.and (.atom 23) (.atom 109)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.head [26, 43, 56, 73, 81, 109, 119]))) (.atom (List.Mem.tail 14 (List.Mem.tail 23 (List.Mem.tail 26 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 73 (List.Mem.tail 81 (List.Mem.head [119]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4601 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 86, 119] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 86, 119]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4602 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 56, 81, 119, 142] →
      Formula.Holds valuation (.and (.atom 43) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [56, 81, 119, 142])))) (.atom (List.Mem.tail 14 (List.Mem.head [43, 56, 81, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4624 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.atom 63) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.head [86, 107, 111, 119, 142])))))))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 63 (List.Mem.tail 86 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.head [142])))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4641 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.and (.atom 1) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.head [14, 18, 41, 43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143])) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.head [43, 54, 56, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4652 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4653 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 18, 20, 41, 43, 54, 56, 58, 63, 77, 86, 91, 107, 111, 114, 119, 139, 142, 143] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 20 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 63 (List.Mem.tail 77 (List.Mem.tail 86 (List.Mem.tail 91 (List.Mem.tail 107 (List.Mem.tail 111 (List.Mem.tail 114 (List.Mem.head [139, 142, 143]))))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4662 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.and (.and (.atom 56) (.atom 1)) (.atom 41)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 54 (List.Mem.head [63, 86, 107, 111, 119, 142]))))))) (.atom (List.Mem.head [14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142]))) (.atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4674 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 44, 46, 56, 93, 119] →
      Formula.Holds valuation (.atom 44) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.head [46, 56, 93, 119])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4685 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4713 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4723 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 37, 41, 43, 46, 56, 58, 61, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 37 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4751 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 41, 43, 89, 119, 125, 131] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [89, 119, 125, 131]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4761 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131])))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4768 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 43, 46, 56, 86, 111, 118, 119, 123] →
      Formula.Holds valuation (.atom 118) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [119, 123]))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4770 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.and (.atom 88) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.head [89, 92, 111, 119, 125, 131]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 72 (List.Mem.tail 74 (List.Mem.tail 88 (List.Mem.tail 89 (List.Mem.tail 92 (List.Mem.tail 111 (List.Mem.head [125, 131]))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4798 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 18, 32, 40, 41, 43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 18 (List.Mem.tail 32 (List.Mem.tail 40 (List.Mem.head [43, 56, 72, 74, 88, 89, 92, 111, 119, 125, 131]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4805 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4818 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 61, 99, 111, 119, 124, 126] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.head [56, 61, 99, 111, 119, 124, 126]))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4826 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [15, 41, 45, 46, 56, 61, 69, 71, 86, 119, 133] →
      Formula.Holds valuation (.and (.and (.atom 69) (.atom 86)) (.atom 119)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.and (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.head [71, 86, 119, 133])))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.head [119, 133]))))))))))) (.atom (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.head [133]))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4836 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 41, 43, 46, 56, 61, 119, 137, 142] →
      Formula.Holds valuation (.atom 137) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 119 (List.Mem.head [142]))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4868 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [13, 14, 15, 41, 43, 45, 46, 56, 61, 69, 71, 86, 99, 104, 111, 119, 124, 126, 133, 137, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 13 (List.Mem.tail 14 (List.Mem.tail 15 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 45 (List.Mem.tail 46 (List.Mem.tail 56 (List.Mem.tail 61 (List.Mem.tail 69 (List.Mem.tail 71 (List.Mem.tail 86 (List.Mem.tail 99 (List.Mem.tail 104 (List.Mem.tail 111 (List.Mem.head [124, 126, 133, 137, 142])))))))))))))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4879 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [41, 56, 108, 119, 142] →
      Formula.Holds valuation (.atom 119) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 41 (List.Mem.tail 56 (List.Mem.tail 108 (List.Mem.head [142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4884 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.and (.atom 119) (.atom 43)) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .and (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.tail 43 (List.Mem.tail 56 (List.Mem.tail 58 (List.Mem.tail 61 (List.Mem.tail 86 (List.Mem.tail 111 (List.Mem.head [130, 142]))))))))))) (.atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142]))))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4885 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [14, 26, 41, 43, 56, 58, 61, 86, 111, 119, 130, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 14 (List.Mem.tail 26 (List.Mem.tail 41 (List.Mem.head [56, 58, 61, 86, 111, 119, 130, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4963 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 43) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.tail 41 (List.Mem.head [54, 56, 63, 86, 107, 111, 119, 142])))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4972 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4974 :
    ∀ valuation : Nat → Prop,
      allFacts valuation [1, 14, 41, 43, 54, 56, 63, 86, 107, 111, 119, 142] →
      Formula.Holds valuation (.atom 41) := by
  intro valuation hFacts
  exact Derives.sound
    (proof := .atom (List.Mem.tail 1 (List.Mem.tail 14 (List.Mem.head [43, 54, 56, 63, 86, 107, 111, 119, 142]))))
    (valuation := valuation)
    hFacts

theorem literature_SENT_4996 :
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
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0143
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0144
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0185
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0198
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0250
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0265
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0272
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0312
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0398
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0456
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0460
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0464
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0487
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0515
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0537
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0542
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0548
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0550
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0602
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0603
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0605
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0606
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0630
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0631
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0633
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0635
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0640
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0646
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0656
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0657
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0659
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0660
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0661
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0662
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0665
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0666
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0667
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0668
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0669
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0670
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0673
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0683
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0685
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0686
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0689
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0691
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0696
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0697
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0700
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0701
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0702
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0704
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0705
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0706
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0707
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0708
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0709
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0710
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0711
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0712
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0713
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0714
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0715
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0720
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0721
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0722
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0723
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0807
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0809
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0818
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0894
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0923
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0941
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0951
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0952
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0962
#print axioms RagEvidence.LiteratureProofs.literature_SENT_0968
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1001
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1033
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1041
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1044
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1069
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1103
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1113
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1114
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1123
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1132
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1143
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1159
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1188
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1216
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1217
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1234
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1261
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1265
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1268
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1274
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1278
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1280
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1288
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1292
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1300
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1301
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1312
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1331
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1352
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1354
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1364
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1380
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1388
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1389
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1393
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1399
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1403
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1406
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1447
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1451
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1452
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1453
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1462
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1463
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1470
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1472
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1503
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1505
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1507
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1512
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1514
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1515
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1522
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1532
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1533
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1539
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1541
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1546
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1550
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1551
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1559
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1560
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1565
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1566
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1573
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1574
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1579
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1581
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1587
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1615
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1620
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1625
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1628
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1629
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1653
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1656
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1660
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1665
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1721
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1746
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1756
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1768
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1824
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1826
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1836
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1837
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1846
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1859
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1864
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1865
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1877
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1883
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1893
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1898
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1907
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1909
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1911
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1923
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1932
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1951
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1958
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1964
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1980
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1982
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1988
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1991
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1993
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1995
#print axioms RagEvidence.LiteratureProofs.literature_SENT_1998
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2012
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2018
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2038
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2041
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2042
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2043
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2046
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2049
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2054
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2055
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2056
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2060
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2061
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2063
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2073
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2074
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2082
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2089
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2090
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2095
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2096
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2098
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2105
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2107
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2111
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2120
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2133
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2136
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2137
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2141
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2142
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2143
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2157
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2160
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2168
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2172
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2175
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2184
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2195
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2198
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2211
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2213
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2216
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2218
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2226
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2231
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2235
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2239
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2243
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2276
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2288
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2295
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2299
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2337
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2379
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2382
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2395
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2432
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2439
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2458
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2459
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2465
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2466
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2484
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2485
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2491
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2492
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2497
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2501
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2502
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2505
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2508
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2509
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2513
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2520
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2524
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2526
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2528
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2532
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2533
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2538
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2553
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2555
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2577
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2584
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2592
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2596
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2598
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2609
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2625
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2647
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2652
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2709
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2734
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2743
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2828
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2834
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2840
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2854
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2884
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2939
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2941
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2954
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2966
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2990
#print axioms RagEvidence.LiteratureProofs.literature_SENT_2999
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3005
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3043
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3057
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3120
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3126
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3132
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3142
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3156
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3158
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3159
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3167
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3192
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3200
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3210
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3230
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3235
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3239
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3247
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3250
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3262
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3293
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3296
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3322
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3328
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3338
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3344
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3347
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3359
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3362
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3388
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3394
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3399
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3404
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3405
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3415
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3417
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3420
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3430
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3431
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3437
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3472
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3488
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3500
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3513
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3520
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3541
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3557
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3562
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3574
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3584
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3589
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3601
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3627
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3637
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3653
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3655
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3662
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3665
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3675
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3687
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3688
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3695
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3708
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3712
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3720
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3725
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3740
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3741
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3753
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3757
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3760
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3774
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3781
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3782
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3786
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3797
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3803
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3809
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3815
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3818
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3826
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3843
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3848
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3852
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3858
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3866
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3874
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3906
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3912
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3923
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3929
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3930
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3947
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3965
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3971
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3981
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3987
#print axioms RagEvidence.LiteratureProofs.literature_SENT_3994
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4039
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4044
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4074
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4085
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4091
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4097
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4102
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4126
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4132
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4138
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4151
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4162
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4182
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4188
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4213
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4247
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4266
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4270
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4276
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4286
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4294
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4295
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4302
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4304
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4309
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4386
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4394
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4407
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4426
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4430
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4431
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4458
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4464
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4488
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4518
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4550
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4571
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4581
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4583
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4594
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4601
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4602
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4624
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4641
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4652
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4653
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4662
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4674
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4685
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4713
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4723
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4751
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4761
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4768
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4770
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4798
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4805
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4818
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4826
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4836
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4868
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4879
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4884
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4885
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4963
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4972
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4974
#print axioms RagEvidence.LiteratureProofs.literature_SENT_4996
