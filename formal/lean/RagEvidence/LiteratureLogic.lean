namespace RagEvidence.LiteratureLogic

inductive Formula where
  | atom : Nat → Formula
  | and : Formula → Formula → Formula
  | or : Formula → Formula → Formula
  | imp : Formula → Formula → Formula
  | neg : Formula → Formula
  deriving Repr, DecidableEq

def Formula.Holds (valuation : Nat → Prop) : Formula → Prop
  | .atom identifier => valuation identifier
  | .and left right => left.Holds valuation ∧ right.Holds valuation
  | .or left right => left.Holds valuation ∨ right.Holds valuation
  | .imp antecedent consequent => antecedent.Holds valuation → consequent.Holds valuation
  | .neg proposition => ¬ proposition.Holds valuation

def allFacts (valuation : Nat → Prop) (facts : List Nat) : Prop :=
  ∀ atom, atom ∈ facts → valuation atom

/-- A deliberately incomplete proof procedure.  Positive atoms, conjunctions,
    and disjunctions can be discharged from source facts.  Implication and
    negation require relation-preserving source formalization and return false. -/
def derivePositive (facts : List Nat) : Formula → Bool
  | .atom identifier => decide (identifier ∈ facts)
  | .and left right => derivePositive facts left && derivePositive facts right
  | .or left right => derivePositive facts left || derivePositive facts right
  | .imp _ _ => false
  | .neg _ => false

inductive Derives (facts : List Nat) : Formula → Prop where
  | atom {identifier : Nat} : identifier ∈ facts → Derives facts (.atom identifier)
  | and {left right : Formula} :
      Derives facts left → Derives facts right → Derives facts (.and left right)
  | orLeft {left right : Formula} : Derives facts left → Derives facts (.or left right)
  | orRight {left right : Formula} : Derives facts right → Derives facts (.or left right)

theorem Derives.sound
    {facts : List Nat}
    {formula : Formula}
    (proof : Derives facts formula)
    (valuation : Nat → Prop)
    (hFacts : allFacts valuation facts) :
    Formula.Holds valuation formula := by
  induction proof with
  | atom membership =>
      exact hFacts _ membership
  | and leftProof rightProof leftIH rightIH =>
      exact And.intro leftIH rightIH
  | orLeft leftProof leftIH =>
      exact Or.inl leftIH
  | orRight rightProof rightIH =>
      exact Or.inr rightIH

end RagEvidence.LiteratureLogic

#print axioms RagEvidence.LiteratureLogic.Derives.sound
