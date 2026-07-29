import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean.ConvergenceDefinitions

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure FunctionSequencePackage where
  functionType : Type
  domain : Type
  norm : functionType → ℝ
  sequence : ℕ → functionType
  pointwiseLimit : functionType
  uniformConvergence : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x, norm (sequence n x - pointwiseLimit x) < ε

def FunctionConvergenceClosed (F : FunctionSequencePackage) : Prop :=
  F.uniformConvergence

theorem function_convergence_closed_from_evidence (F : FunctionSequencePackage) (h : F.uniformConvergence) :
    FunctionConvergenceClosed F := h

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse