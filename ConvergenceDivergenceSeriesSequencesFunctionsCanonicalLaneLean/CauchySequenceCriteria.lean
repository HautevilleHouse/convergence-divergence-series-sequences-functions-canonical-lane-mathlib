import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure CauchySequencePackage {α : Type u} [MetricSpace α] where
  sequence : ℕ → α
  cauchyCondition : Prop
  limitExists : Prop

structure CauchySequenceEvidence {α : Type u} [MetricSpace α] (C : CauchySequencePackage α) where
  cauchyConditionClosed : C.cauchyCondition
  limitExistsClosed : C.limitExists

def CauchySequenceClosed {α : Type u} [MetricSpace α] (C : CauchySequencePackage α) : Prop :=
  C.cauchyCondition ∧ C.limitExists

theorem cauchy_sequence_closed_from_evidence {α : Type u} [MetricSpace α] (C : CauchySequencePackage α) (E : CauchySequenceEvidence C) : CauchySequenceClosed C := by
  exact And.intro E.cauchyConditionClosed E.limitExistsClosed

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse