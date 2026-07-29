import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure FunctionSeriesConvergencePackage where
  functionTerms : ℕ → ℝ → ℝ
  partialSums : ℕ → ℝ → ℝ
  limitFunction : ℝ → ℝ
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  weierstrassMTest : Prop

structure FunctionSeriesConvergenceEvidence (F : FunctionSeriesConvergencePackage) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  weierstrassMTestClosed : F.weierstrassMTest

def FunctionSeriesConvergenceClosed (F : FunctionSeriesConvergencePackage) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergence ∧ F.weierstrassMTest

theorem function_series_convergence_closed_from_evidence (F : FunctionSeriesConvergencePackage)
    (E : FunctionSeriesConvergenceEvidence F) : FunctionSeriesConvergenceClosed F := by
  exact And.intro E.pointwiseConvergenceClosed (And.intro E.uniformConvergenceClosed E.weierstrassMTestClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse
