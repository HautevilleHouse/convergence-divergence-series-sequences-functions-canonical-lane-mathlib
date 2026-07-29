import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure ConvergenceTestPackage where
  comparisonTest : Prop
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop

structure ConvergenceTestEvidence (T : ConvergenceTestPackage) where
  comparisonTestClosed : T.comparisonTest
  ratioTestClosed : T.ratioTest
  rootTestClosed : T.rootTest
  integralTestClosed : T.integralTest

def ConvergenceTestClosed (T : ConvergenceTestPackage) : Prop :=
  T.comparisonTest ∧ T.ratioTest ∧ T.rootTest ∧ T.integralTest

theorem convergence_test_closed_from_evidence (T : ConvergenceTestPackage) (E : ConvergenceTestEvidence T) : ConvergenceTestClosed T := by
  exact And.intro E.comparisonTestClosed (And.intro E.ratioTestClosed (And.intro E.rootTestClosed E.integralTestClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse