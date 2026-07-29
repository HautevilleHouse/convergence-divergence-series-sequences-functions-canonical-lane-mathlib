import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure SeriesSummabilityPackage (α : Type u) [NormedAddCommGroup α] [CompleteSpace α] where
  terms : ℕ → α
  partialSums : ℕ → α
  sum : α
  convergenceCondition : Prop
  absoluteConvergence : Prop

structure SeriesSummabilityEvidence (α : Type u) [NormedAddCommGroup α] [CompleteSpace α] (S : SeriesSummabilityPackage α) where
  convergenceConditionClosed : S.convergenceCondition
  absoluteConvergenceClosed : S.absoluteConvergence

def SeriesSummabilityClosed (α : Type u) [NormedAddCommGroup α] [CompleteSpace α] (S : SeriesSummabilityPackage α) : Prop :=
  S.convergenceCondition ∧ S.absoluteConvergence

theorem series_summability_closed_from_evidence (α : Type u) [NormedAddCommGroup α] [CompleteSpace α] (S : SeriesSummabilityPackage α) (E : SeriesSummabilityEvidence α S) : SeriesSummabilityClosed α S := by
  exact And.intro E.convergenceConditionClosed E.absoluteConvergenceClosed

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse