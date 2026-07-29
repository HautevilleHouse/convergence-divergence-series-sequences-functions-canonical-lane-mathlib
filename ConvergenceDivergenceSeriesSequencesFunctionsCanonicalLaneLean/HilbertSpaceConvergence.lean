import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure HilbertSpaceConvergencePackage where
  vectorSequence : Type u
  norm : vectorSequence → ℝ
  cauchyCondition : Prop
  completeness : Prop
  limitExistence : Prop

structure HilbertSpaceConvergenceEvidence (H : HilbertSpaceConvergencePackage) where
  cauchyConditionClosed : H.cauchyCondition
  completenessClosed : H.completeness
  limitExistenceClosed : H.limitExistence

def HilbertSpaceConvergenceClosed (H : HilbertSpaceConvergencePackage) : Prop :=
  H.cauchyCondition ∧ H.completeness ∧ H.limitExistence

theorem hilbert_space_convergence_closed_from_evidence (H : HilbertSpaceConvergencePackage)
    (E : HilbertSpaceConvergenceEvidence H) : HilbertSpaceConvergenceClosed H := by
  exact And.intro E.cauchyConditionClosed (And.intro E.completenessClosed E.limitExistenceClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse
