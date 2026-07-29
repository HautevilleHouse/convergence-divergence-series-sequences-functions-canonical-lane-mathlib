import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure SequentialConvergencePackage where
  sequenceType : Type u
  limitDefinition : Prop
  limitUniqueness : Prop
  boundedConvergentImplies : Prop
  algebraOfLimits : Prop
  orderProperties : Prop
  subsequenceProperties : Prop
  cauchyCriterion : Prop
  limitDefinitionTerm : limitDefinition
  limitUniquenessTerm : limitUniqueness
  boundedConvergentImpliesTerm : boundedConvergentImplies
  algebraOfLimitsTerm : algebraOfLimits
  orderPropertiesTerm : orderProperties
  subsequencePropertiesTerm : subsequenceProperties
  cauchyCriterionTerm : cauchyCriterion

structure SequentialConvergenceEvidence (P : SequentialConvergencePackage) where
  limitDefinitionClosed : P.limitDefinition
  limitUniquenessClosed : P.limitUniqueness
  boundedConvergentImpliesClosed : P.boundedConvergentImplies
  algebraOfLimitsClosed : P.algebraOfLimits
  orderPropertiesClosed : P.orderProperties
  subsequencePropertiesClosed : P.subsequenceProperties
  cauchyCriterionClosed : P.cauchyCriterion

def SequentialConvergenceClosed (P : SequentialConvergencePackage) : Prop :=
  P.limitDefinition ∧ P.limitUniqueness ∧ P.boundedConvergentImplies ∧
  P.algebraOfLimits ∧ P.orderProperties ∧ P.subsequenceProperties ∧ P.cauchyCriterion

theorem sequential_convergence_closed_from_evidence
    (P : SequentialConvergencePackage) (E : SequentialConvergenceEvidence P) :
    SequentialConvergenceClosed P := by
  exact And.intro E.limitDefinitionClosed
    (And.intro E.limitUniquenessClosed
      (And.intro E.boundedConvergentImpliesClosed
        (And.intro E.algebraOfLimitsClosed
          (And.intro E.orderPropertiesClosed
            (And.intro E.subsequencePropertiesClosed E.cauchyCriterionClosed)))))

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse