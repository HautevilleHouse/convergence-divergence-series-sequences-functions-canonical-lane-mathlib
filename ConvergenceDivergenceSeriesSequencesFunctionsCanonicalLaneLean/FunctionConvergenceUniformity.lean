import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure FunctionSequence where
  functions : Nat -> ℝ -> ℝ
  pointwiseLimit : ℝ -> ℝ
  uniformLimit : ℝ -> ℝ

structure FunctionConvergencePackage where
  fnSeq : FunctionSequence
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  weierstrassMTest : Prop
  uniformLimitContinuous : Prop

structure FunctionConvergenceEvidence (F : FunctionConvergencePackage) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  weierstrassMTestClosed : F.weierstrassMTest
  uniformLimitContinuousClosed : F.uniformLimitContinuous

def FunctionConvergenceClosed (F : FunctionConvergencePackage) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergence ∧ F.weierstrassMTest ∧ F.uniformLimitContinuous

theorem function_convergence_closed_from_evidence (F : FunctionConvergencePackage)
    (E : FunctionConvergenceEvidence F) : FunctionConvergenceClosed F := by
  exact And.intro E.pointwiseConvergenceClosed (And.intro E.uniformConvergenceClosed
    (And.intro E.weierstrassMTestClosed E.uniformLimitContinuousClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse
