import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure PowerSeries where
  coefficients : Nat -> ℝ
  center : ℝ
  radius : ℝ

structure PowerSeriesConvergencePackage where
  series : PowerSeries
  rootFormulaRadius : Prop
  ratioFormulaRadius : Prop
  analyticOnDisc : Prop
  differentiationTermwise : Prop

structure PowerSeriesConvergenceEvidence (P : PowerSeriesConvergencePackage) where
  rootFormulaRadiusClosed : P.rootFormulaRadius
  ratioFormulaRadiusClosed : P.ratioFormulaRadius
  analyticOnDiscClosed : P.analyticOnDisc
  differentiationTermwiseClosed : P.differentiationTermwise

def PowerSeriesConvergenceClosed (P : PowerSeriesConvergencePackage) : Prop :=
  P.rootFormulaRadius ∧ P.ratioFormulaRadius ∧ P.analyticOnDisc ∧ P.differentiationTermwise

theorem power_series_convergence_closed_from_evidence (P : PowerSeriesConvergencePackage)
    (E : PowerSeriesConvergenceEvidence P) : PowerSeriesConvergenceClosed P := by
  exact And.intro E.rootFormulaRadiusClosed (And.intro E.ratioFormulaRadiusClosed
    (And.intro E.analyticOnDiscClosed E.differentiationTermwiseClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse
