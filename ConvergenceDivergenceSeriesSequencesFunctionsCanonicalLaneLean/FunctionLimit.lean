import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure FunctionLimitPackage (α β : Type u) [TopologicalSpace α] [TopologicalSpace β] where
  f : α → β
  point : α
  limitValue : β
  limitCondition : Prop
  existsLimit : Prop

structure FunctionLimitEvidence (α β : Type u) [TopologicalSpace α] [TopologicalSpace β] (F : FunctionLimitPackage α β) where
  limitConditionClosed : F.limitCondition
  existsLimitClosed : F.existsLimit

def FunctionLimitClosed (α β : Type u) [TopologicalSpace α] [TopologicalSpace β] (F : FunctionLimitPackage α β) : Prop :=
  F.limitCondition ∧ F.existsLimit

theorem function_limit_closed_from_evidence (α β : Type u) [TopologicalSpace α] [TopologicalSpace β] (F : FunctionLimitPackage α β) (E : FunctionLimitEvidence α β F) : FunctionLimitClosed α β F := by
  exact And.intro E.limitConditionClosed E.existsLimitClosed

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse