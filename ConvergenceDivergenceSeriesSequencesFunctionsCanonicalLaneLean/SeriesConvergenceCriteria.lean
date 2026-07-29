import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure SeriesConvergenceCriteriaPackage where
  sequenceType : Type u
  seriesConvergenceDefinition : Prop
  cauchyCriterion : Prop
  comparisonTest : Prop
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop
  seriesConvergenceDefinitionTerm : seriesConvergenceDefinition
  cauchyCriterionTerm : cauchyCriterion
  comparisonTestTerm : comparisonTest
  ratioTestTerm : ratioTest
  rootTestTerm : rootTest
  integralTestTerm : integralTest

structure SeriesConvergenceCriteriaEvidence (P : SeriesConvergenceCriteriaPackage) where
  seriesConvergenceDefinitionClosed : P.seriesConvergenceDefinition
  cauchyCriterionClosed : P.cauchyCriterion
  comparisonTestClosed : P.comparisonTest
  ratioTestClosed : P.ratioTest
  rootTestClosed : P.rootTest
  integralTestClosed : P.integralTest

def SeriesConvergenceCriteriaClosed (P : SeriesConvergenceCriteriaPackage) : Prop :=
  P.seriesConvergenceDefinition ∧ P.cauchyCriterion ∧ P.comparisonTest ∧
  P.ratioTest ∧ P.rootTest ∧ P.integralTest

theorem series_convergence_criteria_closed_from_evidence
    (P : SeriesConvergenceCriteriaPackage) (E : SeriesConvergenceCriteriaEvidence P) :
    SeriesConvergenceCriteriaClosed P := by
  exact And.intro E.seriesConvergenceDefinitionClosed
    (And.intro E.cauchyCriterionClosed
      (And.intro E.comparisonTestClosed
        (And.intro E.ratioTestClosed
          (And.intro E.rootTestClosed E.integralTestClosed))))

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse