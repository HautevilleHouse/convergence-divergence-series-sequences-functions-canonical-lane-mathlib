import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure PowerSeriesRadiusPackage where
  coefficients : ℕ → ℝ
  center : ℝ
  radius : ℝ
  convergenceInterval : Prop
  analyticFunction : Prop

structure PowerSeriesRadiusEvidence (P : PowerSeriesRadiusPackage) where
  convergenceIntervalClosed : P.convergenceInterval
  analyticFunctionClosed : P.analyticFunction

def PowerSeriesRadiusClosed (P : PowerSeriesRadiusPackage) : Prop :=
  P.convergenceInterval ∧ P.analyticFunction

theorem power_series_radius_closed_from_evidence (P : PowerSeriesRadiusPackage) (E : PowerSeriesRadiusEvidence P) : PowerSeriesRadiusClosed P := by
  exact And.intro E.convergenceIntervalClosed E.analyticFunctionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse