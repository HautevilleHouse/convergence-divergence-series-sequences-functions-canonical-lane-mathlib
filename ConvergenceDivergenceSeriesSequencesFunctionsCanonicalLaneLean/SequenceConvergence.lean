import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure Sequence where
  carrier : Nat -> ℝ
  limit : ℝ

structure SequenceConvergencePackage where
  seq : Sequence
  epsilonNdef : Prop
  boundedImpliesSubseqConvergent : Prop
  cauchyCriterion : Prop

structure SequenceConvergenceEvidence (S : SequenceConvergencePackage) where
  epsilonNdefClosed : S.epsilonNdef
  boundedImpliesSubseqConvergentClosed : S.boundedImpliesSubseqConvergent
  cauchyCriterionClosed : S.cauchyCriterion

def SequenceConvergenceClosed (S : SequenceConvergencePackage) : Prop :=
  S.epsilonNdef ∧ S.boundedImpliesSubseqConvergent ∧ S.cauchyCriterion

theorem sequence_convergence_closed_from_evidence (S : SequenceConvergencePackage)
    (E : SequenceConvergenceEvidence S) : SequenceConvergenceClosed S := by
  exact And.intro E.epsilonNdefClosed (And.intro E.boundedImpliesSubseqConvergentClosed E.cauchyCriterionClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse
