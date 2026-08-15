namespace RagEvidence.CrossCuttingContracts

/-- Finite abstraction of the authorization checks performed before any body
    can reach a material output. -/
structure AuthorizationState where
  authorized : Bool
  tenantMatches : Bool
  documentActive : Bool
  policyVersionMatches : Bool
  deriving Repr, DecidableEq

def evidenceMayBeExposed (state : AuthorizationState) : Bool :=
  state.authorized && state.tenantMatches && state.documentActive && state.policyVersionMatches

theorem FND_001_unauthorized_body_is_not_exposed
    (tenantMatches documentActive policyVersionMatches : Bool) :
    evidenceMayBeExposed {
      authorized := false
      tenantMatches := tenantMatches
      documentActive := documentActive
      policyVersionMatches := policyVersionMatches
    } = false := by
  rfl

theorem FND_005_revoked_policy_invalidates_selected_evidence :
    evidenceMayBeExposed {
      authorized := true
      tenantMatches := true
      documentActive := true
      policyVersionMatches := false
    } = false := by
  rfl

inductive Answerability where
  | complete
  | partial
  | withheld
  deriving Repr, DecidableEq

/-- `known` is checked before facet coverage, so UNKNOWN never becomes a
    partial or complete answer. -/
def decideAnswerability (coreSufficient allFacetsSufficient known : Bool) : Answerability :=
  if !known || !coreSufficient then
    .withheld
  else if allFacetsSufficient then
    .complete
  else
    .partial

theorem FND_002_all_facets_complete :
    decideAnswerability true true true = .complete := by
  rfl

theorem FND_002_core_only_is_partial :
    decideAnswerability true false true = .partial := by
  rfl

theorem FND_004_unknown_core_is_withheld :
    decideAnswerability true true false = .withheld := by
  rfl

inductive ActionDecision where
  | allow
  | requireHumanApproval
  | denyAutomation
  deriving Repr, DecidableEq

structure ActionPolicy where
  sideEffect : Bool
  highRisk : Bool
  lowRisk : Bool
  reversible : Bool
  bounded : Bool
  preapproved : Bool
  humanApproved : Bool
  deriving Repr, DecidableEq

def decideAction (policy : ActionPolicy) : ActionDecision :=
  if !policy.sideEffect then
    .allow
  else if policy.highRisk && !policy.humanApproved then
    .denyAutomation
  else if policy.humanApproved then
    .allow
  else if policy.lowRisk && policy.reversible && policy.bounded && policy.preapproved then
    .allow
  else
    .requireHumanApproval

theorem FND_003_ordinary_write_requires_human_approval :
    decideAction {
      sideEffect := true
      highRisk := false
      lowRisk := true
      reversible := true
      bounded := true
      preapproved := false
      humanApproved := false
    } = .requireHumanApproval := by
  rfl

theorem FND_003_preapproved_low_risk_write_is_allowed :
    decideAction {
      sideEffect := true
      highRisk := false
      lowRisk := true
      reversible := true
      bounded := true
      preapproved := true
      humanApproved := false
    } = .allow := by
  rfl

structure ResolvedQueryPreservation where
  entities : Bool
  timeRange : Bool
  versionScope : Bool
  polarity : Bool
  tenant : Bool
  hardFilters : Bool
  deriving Repr, DecidableEq

def queryPreserved (state : ResolvedQueryPreservation) : Bool :=
  state.entities && state.timeRange && state.versionScope && state.polarity && state.tenant && state.hardFilters

theorem FND_007_lost_polarity_rejects_rewrite
    (entities timeRange versionScope tenant hardFilters : Bool) :
    queryPreserved {
      entities := entities
      timeRange := timeRange
      versionScope := versionScope
      polarity := false
      tenant := tenant
      hardFilters := hardFilters
    } = false := by
  simp [queryPreserved]

structure ReleaseCompatibility where
  embeddingMatchesIndex : Bool
  promptMatchesOutput : Bool
  retrieverMatchesPolicy : Bool
  evaluationMatchesRelease : Bool
  deriving Repr, DecidableEq

def releasePublishable (state : ReleaseCompatibility) : Bool :=
  state.embeddingMatchesIndex && state.promptMatchesOutput && state.retrieverMatchesPolicy && state.evaluationMatchesRelease

theorem FND_006_embedding_mismatch_blocks_publish
    (promptMatchesOutput retrieverMatchesPolicy evaluationMatchesRelease : Bool) :
    releasePublishable {
      embeddingMatchesIndex := false
      promptMatchesOutput := promptMatchesOutput
      retrieverMatchesPolicy := retrieverMatchesPolicy
      evaluationMatchesRelease := evaluationMatchesRelease
    } = false := by
  rfl

structure CitationTrace where
  traceId : Nat
  requestId : Nat
  releaseId : Nat
  evidenceId : Nat
  claimId : Nat
  citationId : Nat
  deriving Repr, DecidableEq

def citationTraceValid (trace : CitationTrace) : Bool :=
  trace.traceId > 0 && trace.requestId > 0 && trace.releaseId > 0 &&
    trace.evidenceId > 0 && trace.claimId > 0 && trace.citationId > 0

theorem FND_008_orphan_citation_is_invalid
    (traceId requestId releaseId claimId citationId : Nat) :
    citationTraceValid {
      traceId := traceId
      requestId := requestId
      releaseId := releaseId
      evidenceId := 0
      claimId := claimId
      citationId := citationId
    } = false := by
  simp [citationTraceValid]

theorem cross_cutting_contracts_are_inhabited :
    ∃ state : AuthorizationState, evidenceMayBeExposed state = true := by
  exact ⟨{
    authorized := true
    tenantMatches := true
    documentActive := true
    policyVersionMatches := true
  }, rfl⟩

end RagEvidence.CrossCuttingContracts

#print axioms RagEvidence.CrossCuttingContracts.FND_001_unauthorized_body_is_not_exposed
#print axioms RagEvidence.CrossCuttingContracts.FND_005_revoked_policy_invalidates_selected_evidence
#print axioms RagEvidence.CrossCuttingContracts.FND_002_all_facets_complete
#print axioms RagEvidence.CrossCuttingContracts.FND_002_core_only_is_partial
#print axioms RagEvidence.CrossCuttingContracts.FND_004_unknown_core_is_withheld
#print axioms RagEvidence.CrossCuttingContracts.FND_003_ordinary_write_requires_human_approval
#print axioms RagEvidence.CrossCuttingContracts.FND_003_preapproved_low_risk_write_is_allowed
#print axioms RagEvidence.CrossCuttingContracts.FND_007_lost_polarity_rejects_rewrite
#print axioms RagEvidence.CrossCuttingContracts.FND_006_embedding_mismatch_blocks_publish
#print axioms RagEvidence.CrossCuttingContracts.FND_008_orphan_citation_is_invalid
#print axioms RagEvidence.CrossCuttingContracts.cross_cutting_contracts_are_inhabited
