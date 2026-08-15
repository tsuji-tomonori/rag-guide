namespace RagEvidence.RetrievalTruth

/-- A symbolic fraction.  We keep numerator and denominator separate so the
    kernel checks the formula structure without trusting floating-point code. -/
structure FractionExpression where
  numerator : Nat
  denominator : Nat
  deriving Repr, DecidableEq

/-- Natural-number abstraction of one BM25 term contribution.

The primary source supplies the BM25 formula.  This Lean definition records its
term-frequency, IDF, saturation-parameter, and length-normalization positions;
it does not assert that any empirical retrieval result is true.
-/
structure BM25TermInput where
  idf : Nat
  termFrequency : Nat
  k1 : Nat
  lengthNorm : Nat
  deriving Repr, DecidableEq

def bm25TermFraction (input : BM25TermInput) : FractionExpression :=
  {
    numerator := input.idf * input.termFrequency * (input.k1 + 1)
    denominator := input.termFrequency + input.k1 * input.lengthNorm
  }

theorem bm25_zero_term_frequency_zero_numerator
    (idf k1 lengthNorm : Nat) :
    (bm25TermFraction {
      idf := idf,
      termFrequency := 0,
      k1 := k1,
      lengthNorm := lengthNorm
    }).numerator = 0 := by
  change idf * 0 * (k1 + 1) = 0
  rw [Nat.mul_zero, Nat.zero_mul]

theorem bm25_zero_idf_zero_numerator
    (termFrequency k1 lengthNorm : Nat) :
    (bm25TermFraction {
      idf := 0,
      termFrequency := termFrequency,
      k1 := k1,
      lengthNorm := lengthNorm
    }).numerator = 0 := by
  change 0 * termFrequency * (k1 + 1) = 0
  rw [Nat.zero_mul, Nat.zero_mul]

theorem bm25_denominator_tracks_length_normalization
    (idf termFrequency k1 lengthNorm : Nat) :
    (bm25TermFraction {
      idf := idf,
      termFrequency := termFrequency,
      k1 := k1,
      lengthNorm := lengthNorm
    }).denominator = termFrequency + k1 * lengthNorm := by
  rfl

theorem bm25_formula_is_inhabited :
    ∃ input : BM25TermInput, (bm25TermFraction input).denominator > 0 := by
  refine ⟨{
    idf := 1,
    termFrequency := 1,
    k1 := 1,
    lengthNorm := 1
  }, ?_⟩
  decide

/-- RRF contribution as a symbolic fraction.  Raw retriever scores are absent
    from the input type; only the rank and positive-offset parameter occur. -/
def rrfContribution (k rank : Nat) : FractionExpression :=
  { numerator := 1, denominator := k + rank }

theorem rrf_numerator_is_one (k rank : Nat) :
    (rrfContribution k rank).numerator = 1 := by
  rfl

theorem rrf_denominator_uses_rank (k rank : Nat) :
    (rrfContribution k rank).denominator = k + rank := by
  rfl

theorem rrf_formula_is_inhabited :
    ∃ k rank : Nat, (rrfContribution k rank).denominator > 0 := by
  exact ⟨1, 1, by decide⟩

end RagEvidence.RetrievalTruth

#print axioms RagEvidence.RetrievalTruth.bm25_zero_term_frequency_zero_numerator
#print axioms RagEvidence.RetrievalTruth.bm25_zero_idf_zero_numerator
#print axioms RagEvidence.RetrievalTruth.bm25_denominator_tracks_length_normalization
#print axioms RagEvidence.RetrievalTruth.bm25_formula_is_inhabited
#print axioms RagEvidence.RetrievalTruth.rrf_numerator_is_one
#print axioms RagEvidence.RetrievalTruth.rrf_denominator_uses_rank
#print axioms RagEvidence.RetrievalTruth.rrf_formula_is_inhabited
