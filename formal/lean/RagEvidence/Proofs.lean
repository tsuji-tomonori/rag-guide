import RagEvidence.Generated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace RagEvidence

open Generated

def hasTrustedPrimary (row : EvidenceRow) : Bool :=
  row.trustedPrimary && decide (row.sourceCount > 0)

def isDirectlyCovered (row : EvidenceRow) : Bool :=
  hasTrustedPrimary row && row.direct

def computedUncovered : List Nat :=
  (sentenceLedger.filter fun row => !hasTrustedPrimary row).map (·.id)

def computedCovered : Nat :=
  (sentenceLedger.filter hasTrustedPrimary).length

def computedDirect : Nat :=
  (sentenceLedger.filter isDirectlyCovered).length

def roundedBasisPoints (numerator denominator : Nat) : Nat :=
  if denominator = 0 then 10000
  else (numerator * 10000 + denominator / 2) / denominator

theorem reported_uncovered_exact :
    computedUncovered = reportedUncovered := by
  decide

theorem reported_required_exact :
    sentenceLedger.length = reportedRequired := by
  decide

theorem reported_covered_exact :
    computedCovered = reportedCovered := by
  decide

theorem reported_direct_exact :
    computedDirect = reportedDirect := by
  decide

theorem covered_has_positive_source :
    sentenceLedger.all (fun row =>
      if row.trustedPrimary then row.sourceCount > 0 else true) = true := by
  decide

theorem direct_is_covered :
    sentenceLedger.all (fun row =>
      if row.direct then row.trustedPrimary && row.sourceCount > 0 else true) = true := by
  decide

theorem coverage_basis_points_exact :
    roundedBasisPoints reportedCovered reportedRequired =
      reportedCoverageBasisPoints := by
  decide

theorem direct_basis_points_exact :
    roundedBasisPoints reportedDirect reportedRequired =
      reportedDirectBasisPoints := by
  decide

theorem coverage_is_bounded : reportedCovered ≤ reportedRequired := by
  decide

theorem uncovered_is_nonempty : reportedUncovered ≠ [] := by
  decide

theorem not_full_coverage : reportedCovered < reportedRequired := by
  decide

theorem all_techniques_concrete_and_sourced :
    techniqueLedger.all (fun row =>
      row.concrete && decide (row.trustedSourceCount > 0)) = true := by
  decide

theorem technique_ledger_nonempty : techniqueLedger ≠ [] := by
  decide

end RagEvidence

#print axioms RagEvidence.reported_uncovered_exact
#print axioms RagEvidence.reported_required_exact
#print axioms RagEvidence.reported_covered_exact
#print axioms RagEvidence.reported_direct_exact
#print axioms RagEvidence.covered_has_positive_source
#print axioms RagEvidence.direct_is_covered
#print axioms RagEvidence.coverage_basis_points_exact
#print axioms RagEvidence.direct_basis_points_exact
#print axioms RagEvidence.coverage_is_bounded
#print axioms RagEvidence.uncovered_is_nonempty
#print axioms RagEvidence.not_full_coverage
#print axioms RagEvidence.all_techniques_concrete_and_sourced
#print axioms RagEvidence.technique_ledger_nonempty
