import RagEvidence.SemanticGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence.SemanticProofs

open SemanticGenerated

def atomEntails (row : SemanticRow) : Bool :=
  row.guideAtoms.all fun atom => row.sourceAtoms.contains atom

def computedEntailedIds : List Nat :=
  (semanticLedger.filter fun row => row.formalizationComplete && atomEntails row).map (·.id)

def computedRejectedIds : List Nat :=
  (semanticLedger.filter fun row => row.formalizationComplete && !atomEntails row).map (·.id)

theorem reported_entailments_exact :
    computedEntailedIds = reportedEntailedIds := by
  decide

theorem reported_rejections_exact :
    computedRejectedIds = reportedRejectedIds := by
  decide

theorem entailed_rows_are_nonvacuous :
    semanticLedger.all (fun row =>
      if row.formalizationComplete && atomEntails row then
        row.sourcePresent &&
          decide (row.guideAtoms != []) &&
          decide (row.sourceAtoms != [])
      else true) = true := by
  decide

theorem model_truth_requires_entailment :
    semanticLedger.all (fun row =>
      if row.modelTruth then
        row.formalizationComplete && row.sourcePresent && atomEntails row
      else true) = true := by
  decide

theorem controlled_formalization_is_inhabited :
    semanticLedger.any (fun row => row.formalizationComplete) = true := by
  decide

theorem semantic_atom_catalog_is_nonempty : reportedAtomCount > 0 := by
  decide

end RagEvidence.SemanticProofs

#print axioms RagEvidence.SemanticProofs.reported_entailments_exact
#print axioms RagEvidence.SemanticProofs.reported_rejections_exact
#print axioms RagEvidence.SemanticProofs.entailed_rows_are_nonvacuous
#print axioms RagEvidence.SemanticProofs.model_truth_requires_entailment
#print axioms RagEvidence.SemanticProofs.controlled_formalization_is_inhabited
#print axioms RagEvidence.SemanticProofs.semantic_atom_catalog_is_nonempty
