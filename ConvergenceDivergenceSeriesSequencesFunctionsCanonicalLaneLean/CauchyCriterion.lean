import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean.ConvergenceObject

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure CauchyCriterionPackage where
  space : ConvergenceSpace
  cauchySequence : ℕ → carrier
  cauchyCondition : Prop
  completeSpace : Prop
  convergenceFromCauchy : Prop
  uniformCauchy : Prop
  uniformConvergenceFromCauchy : Prop

structure CauchyCriterionEvidence (C : CauchyCriterionPackage) where
  cauchyConditionClosed : C.cauchyCondition
  completeSpaceClosed : C.completeSpace
  convergenceFromCauchyClosed : C.convergenceFromCauchy
  uniformConvergenceFromCauchyClosed : C.uniformConvergenceFromCauchy

def CauchyCriterionClosed (C : CauchyCriterionPackage) : Prop :=
  C.convergenceFromCauchy ∧ C.uniformConvergenceFromCauchy

theorem cauchy_criterion_closed_from_evidence (C : CauchyCriterionPackage) (E : CauchyCriterionEvidence C) :
    CauchyCriterionClosed C := by
  exact And.intro E.convergenceFromCauchyClosed E.uniformConvergenceFromCauchyClosed

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse