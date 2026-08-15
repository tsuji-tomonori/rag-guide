// Concrete retrieval-technology contracts for the RAG guide.
// Canonical prose snapshot: 52bebecfb2a435d0e7ff2efea557c5799674ded6
//
// The model captures mechanism and pipeline-role contracts.  It intentionally
// does not claim that one technique is empirically better than another.

module retrieval_techniques {
  type State = {
    technique: str,
    stage: str,
    representation: str,
    lexical: bool,
    sparse: bool,
    dense: bool,
    learned: bool,
    multiVector: bool,
    invertedIndex: bool,
    ranksOnly: bool,
    readsCandidateText: bool,
    candidateGeneration: bool,
    outputSubset: bool,
    candidateIdsStable: bool,
    originalQueryRetained: bool,
    hardConstraintsPreserved: bool,
    filterBeforeExposure: bool,
    k: int,
    trustedPrimarySource: bool,
  }

  var s: State

  action init = s' = {
    technique: "none",
    stage: "none",
    representation: "none",
    lexical: false,
    sparse: false,
    dense: false,
    learned: false,
    multiVector: false,
    invertedIndex: false,
    ranksOnly: false,
    readsCandidateText: false,
    candidateGeneration: false,
    outputSubset: false,
    candidateIdsStable: true,
    originalQueryRetained: true,
    hardConstraintsPreserved: true,
    filterBeforeExposure: true,
    k: 0,
    trustedPrimarySource: false,
  }

  action chooseTfIdf = s' = {
    ...s,
    technique: "TF-IDF",
    stage: "candidate_generation",
    representation: "weighted_sparse_terms",
    lexical: true,
    sparse: true,
    invertedIndex: true,
    candidateGeneration: true,
    trustedPrimarySource: true,
  }

  action chooseBm25 = s' = {
    ...s,
    technique: "BM25",
    stage: "candidate_generation",
    representation: "probabilistic_sparse_ranking",
    lexical: true,
    sparse: true,
    invertedIndex: true,
    candidateGeneration: true,
    trustedPrimarySource: true,
  }

  action chooseSplade = s' = {
    ...s,
    technique: "SPLADE",
    stage: "candidate_generation",
    representation: "learned_sparse_vocabulary",
    lexical: true,
    sparse: true,
    learned: true,
    invertedIndex: true,
    candidateGeneration: true,
    trustedPrimarySource: true,
  }

  action chooseDpr = s' = {
    ...s,
    technique: "DPR",
    stage: "candidate_generation",
    representation: "dual_encoder_single_vector",
    dense: true,
    candidateGeneration: true,
    trustedPrimarySource: true,
  }

  action chooseColbert = s' = {
    ...s,
    technique: "ColBERT",
    stage: "candidate_generation",
    representation: "token_multi_vector_late_interaction",
    dense: true,
    multiVector: true,
    candidateGeneration: true,
    trustedPrimarySource: true,
  }

  action chooseHnsw = s' = {
    ...s,
    technique: "HNSW",
    stage: "vector_index",
    representation: "hierarchical_proximity_graph",
    dense: true,
    candidateGeneration: true,
    trustedPrimarySource: true,
  }

  action chooseRrf = s' = {
    ...s,
    technique: "RRF",
    stage: "fusion",
    representation: "rank_lists",
    ranksOnly: true,
    candidateGeneration: false,
    candidateIdsStable: true,
    k: 60,
    trustedPrimarySource: true,
  }

  action chooseQuery2doc = s' = {
    ...s,
    technique: "Query2doc",
    stage: "query_transformation",
    representation: "generated_pseudo_document",
    originalQueryRetained: true,
    hardConstraintsPreserved: true,
    trustedPrimarySource: true,
  }

  action chooseHyde = s' = {
    ...s,
    technique: "HyDE",
    stage: "query_transformation",
    representation: "hypothetical_document_vector",
    dense: true,
    originalQueryRetained: true,
    hardConstraintsPreserved: true,
    trustedPrimarySource: true,
  }

  action chooseAcorn = s' = {
    ...s,
    technique: "ACORN",
    stage: "candidate_generation",
    representation: "predicate_aware_graph_ann",
    dense: true,
    candidateGeneration: true,
    filterBeforeExposure: true,
    trustedPrimarySource: true,
  }

  action chooseMmr = s' = {
    ...s,
    technique: "MMR",
    stage: "post_retrieval",
    representation: "relevance_novelty_objective",
    candidateGeneration: false,
    outputSubset: true,
    trustedPrimarySource: true,
  }

  action chooseCrossEncoder = s' = {
    ...s,
    technique: "BERT passage reranking",
    stage: "post_retrieval",
    representation: "cross_encoder",
    learned: true,
    readsCandidateText: true,
    candidateGeneration: false,
    outputSubset: true,
    trustedPrimarySource: true,
  }

  action chooseMonoT5 = s' = {
    ...s,
    technique: "monoT5",
    stage: "post_retrieval",
    representation: "text_to_text_pointwise",
    learned: true,
    readsCandidateText: true,
    candidateGeneration: false,
    outputSubset: true,
    trustedPrimarySource: true,
  }

  action chooseListwise = s' = {
    ...s,
    technique: "LLM listwise reranking",
    stage: "post_retrieval",
    representation: "generated_candidate_order",
    learned: true,
    readsCandidateText: true,
    candidateGeneration: false,
    outputSubset: true,
    candidateIdsStable: true,
    trustedPrimarySource: true,
  }

  action stutter = s' = s

  action configureOnce = all {
    s.technique == "none",
    any {
      chooseTfIdf,
      chooseBm25,
      chooseSplade,
      chooseDpr,
      chooseColbert,
      chooseHnsw,
      chooseRrf,
      chooseQuery2doc,
      chooseHyde,
      chooseAcorn,
      chooseMmr,
      chooseCrossEncoder,
      chooseMonoT5,
      chooseListwise,
    },
  }

  action step = any {
    configureOnce,
    stutter,
  }

  val techniqueKnown = Set(
    "none", "TF-IDF", "BM25", "SPLADE", "DPR", "ColBERT", "HNSW",
    "RRF", "Query2doc", "HyDE", "ACORN", "MMR",
    "BERT passage reranking", "monoT5", "LLM listwise reranking"
  ).contains(s.technique)

  val configuredTechniqueHasPrimarySource =
    (s.technique != "none").implies(s.trustedPrimarySource)

  val tfIdfContract = (s.technique == "TF-IDF").implies(all {
    s.stage == "candidate_generation",
    s.lexical,
    s.sparse,
    s.invertedIndex,
  })

  val bm25Contract = (s.technique == "BM25").implies(all {
    s.stage == "candidate_generation",
    s.representation == "probabilistic_sparse_ranking",
    s.lexical,
    s.sparse,
    s.invertedIndex,
    not(s.dense),
  })

  val spladeContract = (s.technique == "SPLADE").implies(all {
    s.sparse,
    s.learned,
    s.invertedIndex,
  })

  val dprContract = (s.technique == "DPR").implies(all {
    s.dense,
    not(s.sparse),
    s.representation == "dual_encoder_single_vector",
    s.candidateGeneration,
  })

  val colbertContract = (s.technique == "ColBERT").implies(all {
    s.dense,
    s.multiVector,
    s.representation == "token_multi_vector_late_interaction",
  })

  val hnswContract = (s.technique == "HNSW").implies(all {
    s.stage == "vector_index",
    s.dense,
    s.representation == "hierarchical_proximity_graph",
  })

  val rrfContract = (s.technique == "RRF").implies(all {
    s.stage == "fusion",
    s.ranksOnly,
    not(s.readsCandidateText),
    not(s.candidateGeneration),
    s.candidateIdsStable,
    s.k > 0,
  })

  val queryTransformationContract =
    Set("Query2doc", "HyDE").contains(s.technique).implies(all {
      s.stage == "query_transformation",
      s.originalQueryRetained,
      s.hardConstraintsPreserved,
    })

  val filteredAnnContract = (s.technique == "ACORN").implies(all {
    s.candidateGeneration,
    s.filterBeforeExposure,
  })

  val postRetrievalCannotRecoverMissingCandidates =
    (s.stage == "post_retrieval").implies(all {
      not(s.candidateGeneration),
      s.outputSubset,
    })

  val textReadingRerankerContract =
    Set("BERT passage reranking", "monoT5", "LLM listwise reranking")
      .contains(s.technique).implies(all {
        s.readsCandidateText,
        s.outputSubset,
      })

  val allInvariants = all {
    techniqueKnown,
    configuredTechniqueHasPrimarySource,
    tfIdfContract,
    bm25Contract,
    spladeContract,
    dprContract,
    colbertContract,
    hnswContract,
    rrfContract,
    queryTransformationContract,
    filteredAnnContract,
    postRetrievalCannotRecoverMissingCandidates,
    textReadingRerankerContract,
  }

  run tfIdfContractTest = init.then(chooseTfIdf).expect(allInvariants)
  run bm25ContractTest = init.then(chooseBm25).expect(allInvariants)
  run spladeContractTest = init.then(chooseSplade).expect(allInvariants)
  run dprContractTest = init.then(chooseDpr).expect(allInvariants)
  run colbertContractTest = init.then(chooseColbert).expect(allInvariants)
  run hnswContractTest = init.then(chooseHnsw).expect(allInvariants)
  run rrfContractTest = init.then(chooseRrf).expect(allInvariants)
  run query2docContractTest = init.then(chooseQuery2doc).expect(allInvariants)
  run hydeContractTest = init.then(chooseHyde).expect(allInvariants)
  run acornContractTest = init.then(chooseAcorn).expect(allInvariants)
  run mmrContractTest = init.then(chooseMmr).expect(allInvariants)
  run crossEncoderContractTest = init.then(chooseCrossEncoder).expect(allInvariants)
  run monoT5ContractTest = init.then(chooseMonoT5).expect(allInvariants)
  run listwiseRerankerContractTest = init.then(chooseListwise).expect(allInvariants)
}
