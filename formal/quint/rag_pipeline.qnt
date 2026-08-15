// RAG guide cross-cutting behavioral model.
// Canonical prose snapshot: 52bebecfb2a435d0e7ff2efea557c5799674ded6
//
// This is an abstraction of the contracts repeated across chapters 3-9.
// It proves properties of this finite model; it does not prove factual claims
// in papers, vendor documentation, or the natural-language guide itself.

module rag_pipeline {
  type State = {
    phase: str,
    aclAllowed: bool,
    tenantMatches: bool,
    deleted: bool,
    provenanceOk: bool,
    validAtQuestionTime: bool,
    embeddingCompatible: bool,
    queryIntentPreserved: bool,
    evidenceSelected: bool,
    evidenceSufficient: bool,
    conflictLevel: str,
    conflictDisclosed: bool,
    responseKind: str,
    claimCommitted: bool,
    grounded: bool,
    citationsValid: bool,
    retrievedInstruction: bool,
    userRequestedTool: bool,
    toolRequested: bool,
    toolReadOnly: bool,
    toolPolicyAllows: bool,
    humanApproved: bool,
    toolExecuted: bool,
    releaseGatePassed: bool,
    published: bool,
    currentRelease: int,
    lastKnownGoodRelease: int,
    auditLinked: bool,
  }

  var s: State

  action init = s' = {
    phase: "empty",
    aclAllowed: false,
    tenantMatches: false,
    deleted: false,
    provenanceOk: false,
    validAtQuestionTime: false,
    embeddingCompatible: false,
    queryIntentPreserved: false,
    evidenceSelected: false,
    evidenceSufficient: false,
    conflictLevel: "none",
    conflictDisclosed: false,
    responseKind: "none",
    claimCommitted: false,
    grounded: false,
    citationsValid: false,
    retrievedInstruction: false,
    userRequestedTool: false,
    toolRequested: false,
    toolReadOnly: true,
    toolPolicyAllows: false,
    humanApproved: false,
    toolExecuted: false,
    releaseGatePassed: false,
    published: false,
    currentRelease: 0,
    lastKnownGoodRelease: 0,
    auditLinked: false,
  }

  action catalogSafe = all {
    s.phase == "empty",
    s' = {
      ...s,
      phase: "cataloged",
      aclAllowed: true,
      tenantMatches: true,
      deleted: false,
      provenanceOk: true,
      validAtQuestionTime: true,
      embeddingCompatible: true,
    },
  }

  action catalogUnauthorized = all {
    s.phase == "empty",
    s' = {
      ...s,
      phase: "cataloged",
      aclAllowed: false,
      tenantMatches: true,
      provenanceOk: true,
      validAtQuestionTime: true,
      embeddingCompatible: true,
    },
  }

  action catalogDeleted = all {
    s.phase == "empty",
    s' = {
      ...s,
      phase: "cataloged",
      aclAllowed: true,
      tenantMatches: true,
      deleted: true,
      provenanceOk: true,
      validAtQuestionTime: true,
      embeddingCompatible: true,
    },
  }

  action catalogWrongTenant = all {
    s.phase == "empty",
    s' = {
      ...s,
      phase: "cataloged",
      aclAllowed: true,
      tenantMatches: false,
      provenanceOk: true,
      validAtQuestionTime: true,
      embeddingCompatible: true,
    },
  }

  action catalogWithoutProvenance = all {
    s.phase == "empty",
    s' = {
      ...s,
      phase: "cataloged",
      aclAllowed: true,
      tenantMatches: true,
      provenanceOk: false,
      validAtQuestionTime: true,
      embeddingCompatible: true,
    },
  }

  action catalogWrongTime = all {
    s.phase == "empty",
    s' = {
      ...s,
      phase: "cataloged",
      aclAllowed: true,
      tenantMatches: true,
      provenanceOk: true,
      validAtQuestionTime: false,
      embeddingCompatible: true,
    },
  }

  action catalogEmbeddingMismatch = all {
    s.phase == "empty",
    s' = {
      ...s,
      phase: "cataloged",
      aclAllowed: true,
      tenantMatches: true,
      provenanceOk: true,
      validAtQuestionTime: true,
      embeddingCompatible: false,
    },
  }

  action ingest = all {
    s.phase == "cataloged",
    s' = { ...s, phase: "ingested" },
  }

  action buildIndex = all {
    s.phase == "ingested",
    s' = { ...s, phase: "indexed" },
  }

  action submitQuery = all {
    s.phase == "indexed",
    s' = { ...s, phase: "queried" },
  }

  action rewritePreservingIntent = all {
    s.phase == "queried",
    s' = { ...s, phase: "planned", queryIntentPreserved: true },
  }

  action rewriteLosingIntent = all {
    s.phase == "queried",
    s' = { ...s, phase: "planned", queryIntentPreserved: false },
  }

  action selectEvidence = all {
    s.phase == "planned",
    s.aclAllowed,
    s.tenantMatches,
    not(s.deleted),
    s.provenanceOk,
    s.validAtQuestionTime,
    s.embeddingCompatible,
    s.queryIntentPreserved,
    s' = { ...s, phase: "evidence", evidenceSelected: true },
  }

  action markEvidenceSufficient = all {
    s.phase == "evidence",
    s' = { ...s, phase: "validated", evidenceSufficient: true },
  }

  action markEvidenceInsufficient = all {
    s.phase == "evidence",
    s' = { ...s, phase: "validated", evidenceSufficient: false },
  }

  action markExplainableConflict = all {
    s.phase == "validated",
    s' = { ...s, conflictLevel: "explainable" },
  }

  action markMajorConflict = all {
    s.phase == "validated",
    s' = { ...s, conflictLevel: "major" },
  }

  action produceCompleteAnswer = all {
    s.phase == "validated",
    s.evidenceSelected,
    s.evidenceSufficient,
    s.conflictLevel == "none",
    s' = {
      ...s,
      phase: "responded",
      responseKind: "complete",
      claimCommitted: true,
      grounded: true,
      citationsValid: true,
      auditLinked: true,
    },
  }

  action produceLimitedAnswer = all {
    s.phase == "validated",
    s.evidenceSelected,
    s.evidenceSufficient,
    s.conflictLevel == "explainable",
    s' = {
      ...s,
      phase: "responded",
      responseKind: "partial",
      claimCommitted: true,
      conflictDisclosed: true,
      grounded: true,
      citationsValid: true,
      auditLinked: true,
    },
  }

  action discloseConflictWithoutConclusion = all {
    s.phase == "validated",
    s.conflictLevel == "major",
    s' = {
      ...s,
      phase: "responded",
      responseKind: "conflict",
      claimCommitted: false,
      conflictDisclosed: true,
      grounded: true,
      citationsValid: true,
      auditLinked: true,
    },
  }

  action withholdForInsufficientEvidence = all {
    s.phase == "validated",
    not(s.evidenceSufficient),
    s' = {
      ...s,
      phase: "responded",
      responseKind: "withheld",
      claimCommitted: false,
      auditLinked: true,
    },
  }

  action observeInjectedToolInstruction = all {
    s' = { ...s, retrievedInstruction: true },
  }

  action requestReadOnlyTool = all {
    s' = {
      ...s,
      userRequestedTool: true,
      toolRequested: true,
      toolReadOnly: true,
      toolPolicyAllows: true,
      humanApproved: false,
      toolExecuted: false,
    },
  }

  action requestSideEffectTool = all {
    s' = {
      ...s,
      userRequestedTool: true,
      toolRequested: true,
      toolReadOnly: false,
      toolPolicyAllows: true,
      humanApproved: false,
      toolExecuted: false,
    },
  }

  action approveSideEffect = all {
    s.toolRequested,
    not(s.toolReadOnly),
    s' = { ...s, humanApproved: true },
  }

  action executeTool = all {
    s.toolRequested,
    s.userRequestedTool,
    s.toolPolicyAllows,
    s.toolReadOnly or s.humanApproved,
    s' = { ...s, toolExecuted: true, auditLinked: true },
  }

  action passReleaseGate = s' = { ...s, releaseGatePassed: true }

  action publishNextRelease = all {
    s.releaseGatePassed,
    s' = {
      ...s,
      published: true,
      lastKnownGoodRelease: s.currentRelease,
      currentRelease: s.currentRelease + 1,
      auditLinked: true,
    },
  }

  action rollback = all {
    s.published,
    s.currentRelease > s.lastKnownGoodRelease,
    s' = {
      ...s,
      currentRelease: s.lastKnownGoodRelease,
      auditLinked: true,
    },
  }

  action revokeAccess = all {
    s.aclAllowed,
    s' = {
      ...s,
      aclAllowed: false,
      evidenceSelected: false,
      evidenceSufficient: false,
      responseKind: "none",
      claimCommitted: false,
      grounded: false,
      citationsValid: false,
      auditLinked: true,
    },
  }

  action stutter = s' = s

  action step = any {
    catalogSafe,
    catalogUnauthorized,
    catalogDeleted,
    catalogWrongTenant,
    catalogWithoutProvenance,
    catalogWrongTime,
    catalogEmbeddingMismatch,
    ingest,
    buildIndex,
    submitQuery,
    rewritePreservingIntent,
    rewriteLosingIntent,
    selectEvidence,
    markEvidenceSufficient,
    markEvidenceInsufficient,
    markExplainableConflict,
    markMajorConflict,
    produceCompleteAnswer,
    produceLimitedAnswer,
    discloseConflictWithoutConclusion,
    withholdForInsufficientEvidence,
    observeInjectedToolInstruction,
    requestReadOnlyTool,
    requestSideEffectTool,
    approveSideEffect,
    executeTool,
    passReleaseGate,
    publishNextRelease,
    rollback,
    revokeAccess,
    stutter,
  }

  val phaseIsKnown = Set(
    "empty", "cataloged", "ingested", "indexed", "queried", "planned",
    "evidence", "validated", "responded"
  ).contains(s.phase)

  val conflictLevelIsKnown = Set("none", "explainable", "major").contains(s.conflictLevel)

  val responseKindIsKnown = Set(
    "none", "complete", "partial", "conflict", "withheld"
  ).contains(s.responseKind)

  val authorizedEvidenceOnly = s.evidenceSelected.implies(all {
    s.aclAllowed,
    s.tenantMatches,
    not(s.deleted),
  })

  val evidenceCompatibility = s.evidenceSelected.implies(all {
    s.provenanceOk,
    s.validAtQuestionTime,
    s.embeddingCompatible,
    s.queryIntentPreserved,
  })

  val groundedCommittedClaims = s.claimCommitted.implies(all {
    s.evidenceSelected,
    s.evidenceSufficient,
    s.grounded,
    s.citationsValid,
  })

  val conflictIsDisclosed = all {
    (s.claimCommitted and s.conflictLevel != "none").implies(s.conflictDisclosed),
    (s.conflictLevel == "major").implies(not(s.claimCommitted)),
  }

  val withholdingDoesNotCommitClaims =
    (s.responseKind == "withheld").implies(not(s.claimCommitted))

  val injectedDataCannotAuthorizeTools =
    (s.retrievedInstruction and not(s.userRequestedTool)).implies(not(s.toolExecuted))

  val toolExecutionIsAuthorized = s.toolExecuted.implies(all {
    s.userRequestedTool,
    s.toolRequested,
    s.toolPolicyAllows,
    s.toolReadOnly or s.humanApproved,
  })

  val publishRequiresGate = s.published.implies(s.releaseGatePassed)

  val releaseOrderIsSafe = all {
    s.currentRelease >= 0,
    s.lastKnownGoodRelease >= 0,
    s.lastKnownGoodRelease <= s.currentRelease,
  }

  val materialOutputsAreAudited = any {
    not(s.claimCommitted or s.toolExecuted or s.published),
    s.auditLinked,
  }

  val allInvariants = all {
    phaseIsKnown,
    conflictLevelIsKnown,
    responseKindIsKnown,
    authorizedEvidenceOnly,
    evidenceCompatibility,
    groundedCommittedClaims,
    conflictIsDisclosed,
    withholdingDoesNotCommitClaims,
    injectedDataCannotAuthorizeTools,
    toolExecutionIsAuthorized,
    publishRequiresGate,
    releaseOrderIsSafe,
    materialOutputsAreAudited,
  }

  run happyPathCurrentAnswerTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(markEvidenceSufficient)
    .then(produceCompleteAnswer)
    .expect(s.responseKind == "complete" and s.claimCommitted and allInvariants)

  run historicalVersionAnswerTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(markEvidenceSufficient)
    .then(produceCompleteAnswer)
    .expect(allInvariants)

  run unauthorizedEvidenceBlockedTest = init
    .then(catalogUnauthorized)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence.fail())

  run deletedEvidenceBlockedTest = init
    .then(catalogDeleted)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence.fail())

  run wrongTenantBlockedTest = init
    .then(catalogWrongTenant)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence.fail())

  run missingProvenanceBlockedTest = init
    .then(catalogWithoutProvenance)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence.fail())

  run wrongHistoricalVersionBlockedTest = init
    .then(catalogWrongTime)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence.fail())

  run embeddingMismatchBlockedTest = init
    .then(catalogEmbeddingMismatch)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence.fail())

  run queryIntentLossBlockedTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewriteLosingIntent)
    .then(selectEvidence.fail())

  run insufficientEvidenceWithheldTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(markEvidenceInsufficient)
    .then(withholdForInsufficientEvidence)
    .expect(s.responseKind == "withheld" and not(s.claimCommitted) and allInvariants)

  run explainableConflictLimitedAnswerTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(markEvidenceSufficient)
    .then(markExplainableConflict)
    .then(produceLimitedAnswer)
    .expect(s.responseKind == "partial" and s.conflictDisclosed and allInvariants)

  run majorConflictNoConclusionTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(markEvidenceSufficient)
    .then(markMajorConflict)
    .then(discloseConflictWithoutConclusion)
    .expect(s.responseKind == "conflict" and not(s.claimCommitted) and allInvariants)

  run injectedInstructionCannotExecuteToolTest = init
    .then(observeInjectedToolInstruction)
    .then(executeTool.fail())

  run readOnlyToolWithoutHumanApprovalTest = init
    .then(requestReadOnlyTool)
    .then(executeTool)
    .expect(s.toolExecuted and not(s.humanApproved) and allInvariants)

  run sideEffectWithoutApprovalBlockedTest = init
    .then(requestSideEffectTool)
    .then(executeTool.fail())

  run approvedSideEffectExecutesTest = init
    .then(requestSideEffectTool)
    .then(approveSideEffect)
    .then(executeTool)
    .expect(s.toolExecuted and s.humanApproved and allInvariants)

  run publishWithoutGateBlockedTest = init
    .then(publishNextRelease.fail())

  run releaseAndRollbackTest = init
    .then(passReleaseGate)
    .then(publishNextRelease.expect(s.currentRelease == 1))
    .then(rollback)
    .expect(s.currentRelease == 0 and allInvariants)

  run revocationClearsSelectedEvidenceTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(revokeAccess)
    .expect(not(s.aclAllowed) and not(s.evidenceSelected) and allInvariants)
}
