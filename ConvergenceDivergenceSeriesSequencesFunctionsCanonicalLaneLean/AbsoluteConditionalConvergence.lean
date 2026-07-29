import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure SeriesTwo where
  term : Nat -> ℝ
  sum : ℝ
  absSum : ℝ

struct AbsoluteConvergencePackage where
  series : SeriesTwo
  absoluteConvergence : Prop
  conditionalConvergence : Prop
  rearrangementTheorem : Prop
  alternatingSeriesTest : Prop

struct AbsoluteConvergenceEvidence (A : AbsoluteConvergencePackage) where
  absoluteConvergenceClosed : A.absoluteConvergence
  conditionalConvergenceClosed : A.conditionalConvergence
  rearrangementTheoremClosed : A.rearrangementTheorem
  alternatingSeriesTestClosed : A.alternatingSeriesTest

def AbsoluteConvergenceClosed (A : AbsoluteConvergencePackage) : Prop :=
  A.absoluteConvergence ∧ A.conditionalConvergence ∧ A.rearrangementTheorem ∧ A.alternatingSeriesTest

theorem absolute_convergence_closed_from_evidence (A : AbsoluteConvergencePackage)
    (E : AbsoluteConvergenceEvidence A) : AbsoluteConvergenceClosed A := by
  exact And.intro E.absoluteConvergenceClosed (And.intro E.conditionalConvergenceClosed
    (And.intro E.rearrangementTheoremClosed E.alternatingSeriesTestClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse
