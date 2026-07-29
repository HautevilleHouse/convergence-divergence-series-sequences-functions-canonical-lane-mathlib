import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure DivergenceCriteriaPackage where
  sequence : ℕ → ℝ
  unboundedness : Prop
  noLimit : Prop
  oscillation : Prop
  seriesTermsNonZero : Prop

structure DivergenceCriteriaEvidence (D : DivergenceCriteriaPackage) where
  unboundednessClosed : D.unboundedness
  noLimitClosed : D.noLimit
  oscillationClosed : D.oscillation
  seriesTermsNonZeroClosed : D.seriesTermsNonZero

def DivergenceCriteriaClosed (D : DivergenceCriteriaPackage) : Prop :=
  D.unboundedness ∧ D.noLimit ∧ D.oscillation ∧ D.seriesTermsNonZero

theorem divergence_criteria_closed_from_evidence (D : DivergenceCriteriaPackage)
    (E : DivergenceCriteriaEvidence D) : DivergenceCriteriaClosed D := by
  exact And.intro E.unboundednessClosed (And.intro E.noLimitClosed (And.intro E.oscillationClosed E.seriesTermsNonZeroClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse
