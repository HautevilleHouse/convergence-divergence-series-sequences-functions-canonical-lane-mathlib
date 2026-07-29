import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure UniformConvergencePackage where
  functionSequence : ℕ → ℝ → ℝ
  domain : Set ℝ
  limitFunction : ℝ → ℝ
  uniformCauchyCondition : Prop
  continuityPreservation : Prop

def UniformConvergenceClosed (U : UniformConvergencePackage) : Prop :=
  U.uniformCauchyCondition ∧ U.continuityPreservation

structure UniformConvergenceEvidence (U : UniformConvergencePackage) where
  uniformCauchyConditionClosed : U.uniformCauchyCondition
  continuityPreservationClosed : U.continuityPreservation

theorem uniform_convergence_closed_from_evidence (U : UniformConvergencePackage)
    (E : UniformConvergenceEvidence U) : UniformConvergenceClosed U := by
  exact And.intro E.uniformCauchyConditionClosed E.continuityPreservationClosed

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse
