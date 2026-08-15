// RAG guide cross-cutting behavioral model.
// Canonical prose snapshot: f0c3e0f48309e2d1c2684dd6de3a5ac66a6e3111
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
    entitiesPreserved: bool,
    timeRangePreserved: bool,
    versionScopePreserved: bool,
    polarityPreserved: bool,
    tenantConditionPreserved: bool,
    hardFiltersPreserved: bool,
    evidenceSelected: bool,
    evidenceSufficient: bool,
    coreEvidenceSufficient: bool,
    allFacetsSufficient: bool,
    sufficiencyKnown: bool,
    policyVersionMatches: bool,
    documentStatusCurrent: bool,
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
    toolLowRisk: bool,
    toolReversible: bool,
    toolBounded: bool,
    toolPreapproved: bool,
    toolPolicyAllows: bool,
    humanApproved: bool,
    toolExecuted: bool,
    releaseGatePassed: bool,
    releaseCompatible: bool,
    publishedReleaseCompatible: bool,
    published: bool,
    currentRelease: int,
    lastKnownGoodRelease: int,
    auditLinked: bool,
    traceIdsValid: bool,
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
    entitiesPreserved: false,
    timeRangePreserved: false,
    versionScopePreserved: false,
    polarityPreserved: false,
    tenantConditionPreserved: false,
    hardFiltersPreserved: false,
    evidenceSelected: false,
    evidenceSufficient: false,
    coreEvidenceSufficient: false,
    allFacetsSufficient: false,
    sufficiencyKnown: false,
    policyVersionMatches: false,
    documentStatusCurrent: false,
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
    toolLowRisk: false,
    toolReversible: false,
    toolBounded: false,
    toolPreapproved: false,
    toolPolicyAllows: false,
    humanApproved: false,
    toolExecuted: false,
    releaseGatePassed: false,
    releaseCompatible: false,
    publishedReleaseCompatible: false,
    published: false,
    currentRelease: 0,
    lastKnownGoodRelease: 0,
    auditLinked: false,
    traceIdsValid: false,
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
      policyVersionMatches: true,
      documentStatusCurrent: true,
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
      policyVersionMatches: true,
      documentStatusCurrent: true,
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
      policyVersionMatches: true,
      documentStatusCurrent: false,
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
      policyVersionMatches: true,
      documentStatusCurrent: true,
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
      policyVersionMatches: true,
      documentStatusCurrent: true,
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
      policyVersionMatches: true,
      documentStatusCurrent: true,
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
      policyVersionMatches: true,
      documentStatusCurrent: true,
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
    s' = {
      ...s,
      phase: "planned",
      queryIntentPreserved: true,
      entitiesPreserved: true,
      timeRangePreserved: true,
      versionScopePreserved: true,
      polarityPreserved: true,
      tenantConditionPreserved: true,
      hardFiltersPreserved: true,
    },
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
    s.entitiesPreserved,
    s.timeRangePreserved,
    s.versionScopePreserved,
    s.polarityPreserved,
    s.tenantConditionPreserved,
    s.hardFiltersPreserved,
    s.policyVersionMatches,
    s.documentStatusCurrent,
    s' = { ...s, phase: "evidence", evidenceSelected: true },
  }

  action classifyCompleteEvidence = all {
    s.phase == "evidence",
    s' = {
      ...s,
      phase: "validated",
      evidenceSufficient: true,
      coreEvidenceSufficient: true,
      allFacetsSufficient: true,
      sufficiencyKnown: true,
    },
  }

  action classifyPartialEvidence = all {
    s.phase == "evidence",
    s' = {
      ...s,
      phase: "validated",
      evidenceSufficient: true,
      coreEvidenceSufficient: true,
      allFacetsSufficient: false,
      sufficiencyKnown: true,
    },
  }

  action classifyWithheldEvidence = all {
    s.phase == "evidence",
    s' = {
      ...s,
      phase: "validated",
      evidenceSufficient: false,
      coreEvidenceSufficient: false,
      allFacetsSufficient: false,
      sufficiencyKnown: true,
    },
  }

  action classifyUnknownEvidence = all {
    s.phase == "evidence",
    s' = {
      ...s,
      phase: "validated",
      evidenceSufficient: false,
      coreEvidenceSufficient: false,
      allFacetsSufficient: false,
      sufficiencyKnown: false,
    },
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
    s.allFacetsSufficient,
    s.sufficiencyKnown,
    s.conflictLevel == "none",
    s' = {
      ...s,
      phase: "responded",
      responseKind: "complete",
      claimCommitted: true,
      grounded: true,
      citationsValid: true,
      auditLinked: true,
      traceIdsValid: true,
    },
  }

  action produceLimitedAnswer = all {
    s.phase == "validated",
    s.evidenceSelected,
    s.coreEvidenceSufficient,
    s.sufficiencyKnown,
    not(s.allFacetsSufficient) or s.conflictLevel == "explainable",
    s' = {
      ...s,
      phase: "responded",
      responseKind: "partial",
      claimCommitted: true,
      conflictDisclosed: true,
      grounded: true,
      citationsValid: true,
      auditLinked: true,
      traceIdsValid: true,
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
      traceIdsValid: true,
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
      traceIdsValid: true,
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
      toolLowRisk: true,
      toolReversible: true,
      toolBounded: true,
      toolPreapproved: false,
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
      toolLowRisk: false,
      toolReversible: false,
      toolBounded: false,
      toolPreapproved: false,
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

  action requestPreapprovedLowRiskTool = all {
    s' = {
      ...s,
      userRequestedTool: true,
      toolRequested: true,
      toolReadOnly: false,
      toolLowRisk: true,
      toolReversible: true,
      toolBounded: true,
      toolPreapproved: true,
      toolPolicyAllows: true,
      humanApproved: false,
      toolExecuted: false,
    },
  }

  action executeTool = all {
    s.toolRequested,
    s.userRequestedTool,
    s.toolPolicyAllows,
    s.toolReadOnly or s.humanApproved or all {
      s.toolLowRisk,
      s.toolReversible,
      s.toolBounded,
      s.toolPreapproved,
    },
    s' = { ...s, toolExecuted: true, auditLinked: true, traceIdsValid: true },
  }

  action configureCompatibleRelease =
    s' = { ...s, releaseCompatible: true, releaseGatePassed: false }

  action configureIncompatibleRelease =
    s' = { ...s, releaseCompatible: false, releaseGatePassed: false }

  action passReleaseGate = all {
    s.releaseCompatible,
    s' = { ...s, releaseGatePassed: true },
  }

  action publishNextRelease = all {
    s.releaseGatePassed,
    s' = {
      ...s,
      published: true,
      publishedReleaseCompatible: s.releaseCompatible,
      lastKnownGoodRelease: s.currentRelease,
      currentRelease: s.currentRelease + 1,
      auditLinked: true,
      traceIdsValid: true,
    },
  }

  action rollback = all {
    s.published,
    s.currentRelease > s.lastKnownGoodRelease,
    s' = {
      ...s,
      currentRelease: s.lastKnownGoodRelease,
      auditLinked: true,
      traceIdsValid: true,
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
      traceIdsValid: true,
      policyVersionMatches: false,
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
    classifyCompleteEvidence,
    classifyPartialEvidence,
    classifyWithheldEvidence,
    classifyUnknownEvidence,
    markExplainableConflict,
    markMajorConflict,
    produceCompleteAnswer,
    produceLimitedAnswer,
    discloseConflictWithoutConclusion,
    withholdForInsufficientEvidence,
    observeInjectedToolInstruction,
    requestReadOnlyTool,
    requestSideEffectTool,
    requestPreapprovedLowRiskTool,
    approveSideEffect,
    executeTool,
    configureCompatibleRelease,
    configureIncompatibleRelease,
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
    s.entitiesPreserved,
    s.timeRangePreserved,
    s.versionScopePreserved,
    s.polarityPreserved,
    s.tenantConditionPreserved,
    s.hardFiltersPreserved,
    s.policyVersionMatches,
    s.documentStatusCurrent,
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
    s.toolReadOnly or s.humanApproved or all {
      s.toolLowRisk,
      s.toolReversible,
      s.toolBounded,
      s.toolPreapproved,
    },
  })

  val publishRequiresGate = s.published.implies(s.publishedReleaseCompatible)

  val deterministicAnswerability = all {
    s.allFacetsSufficient.implies(s.coreEvidenceSufficient and s.sufficiencyKnown),
    (s.responseKind == "complete").implies(s.allFacetsSufficient),
    (s.responseKind == "partial").implies(s.coreEvidenceSufficient and s.sufficiencyKnown),
    (not(s.coreEvidenceSufficient) or not(s.sufficiencyKnown)).implies(not(s.claimCommitted)),
  }

  val releaseOrderIsSafe = all {
    s.currentRelease >= 0,
    s.lastKnownGoodRelease >= 0,
    s.lastKnownGoodRelease <= s.currentRelease,
  }

  val materialOutputsAreAudited = any {
    not(s.claimCommitted or s.toolExecuted or s.published),
    s.auditLinked and s.traceIdsValid,
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
    deterministicAnswerability,
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
    .then(classifyCompleteEvidence)
    .then(produceCompleteAnswer)
    .expect(s.responseKind == "complete" and s.claimCommitted and allInvariants)

  run historicalVersionAnswerTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(classifyCompleteEvidence)
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
    .then(classifyWithheldEvidence)
    .then(withholdForInsufficientEvidence)
    .expect(s.responseKind == "withheld" and not(s.claimCommitted) and allInvariants)

  run explainableConflictLimitedAnswerTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(classifyCompleteEvidence)
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
    .then(classifyCompleteEvidence)
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

  run preapprovedLowRiskSideEffectExecutesTest = init
    .then(requestPreapprovedLowRiskTool)
    .then(executeTool)
    .expect(s.toolExecuted and not(s.humanApproved) and allInvariants)

  run approvedSideEffectExecutesTest = init
    .then(requestSideEffectTool)
    .then(approveSideEffect)
    .then(executeTool)
    .expect(s.toolExecuted and s.humanApproved and allInvariants)

  run publishWithoutGateBlockedTest = init
    .then(publishNextRelease.fail())

  run incompatibleReleaseGateBlockedTest = init
    .then(configureIncompatibleRelease)
    .then(passReleaseGate.fail())

  run releaseAndRollbackTest = init
    .then(configureCompatibleRelease)
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

  run partialEvidenceProducesLimitedAnswerTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(classifyPartialEvidence)
    .then(produceLimitedAnswer)
    .expect(s.responseKind == "partial" and s.claimCommitted and allInvariants)

  run unknownCoreEvidenceIsWithheldTest = init
    .then(catalogSafe)
    .then(ingest)
    .then(buildIndex)
    .then(submitQuery)
    .then(rewritePreservingIntent)
    .then(selectEvidence)
    .then(classifyUnknownEvidence)
    .then(withholdForInsufficientEvidence)
    .expect(s.responseKind == "withheld" and not(s.claimCommitted) and allInvariants)
}
