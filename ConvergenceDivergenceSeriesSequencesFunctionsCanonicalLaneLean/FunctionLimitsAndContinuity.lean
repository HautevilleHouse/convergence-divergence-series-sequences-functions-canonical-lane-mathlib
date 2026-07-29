import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure FunctionLimitsPackage where
  functionType : Type u
  limitDefinition : Prop
  limitUniqueness : Prop
  algebraicLimitLaws : Prop
  continuityDefinition : Prop
  compositionLimit : Prop
  squeezeTheorem : Prop
  limitDefinitionTerm : limitDefinition
  limitUniquenessTerm : limitUniqueness
  algebraicLimitLawsTerm : algebraicLimitLaws
  continuityDefinitionTerm : continuityDefinition
  compositionLimitTerm : compositionLimit
  squeezeTheoremTerm : squeezeTheorem

structure FunctionLimitsEvidence (P : FunctionLimitsPackage) where
  limitDefinitionClosed : P.limitDefinition
  limitUniquenessClosed : P.limitUniqueness
  algebraicLimitLawsClosed : P.algebraicLimitLaws
  continuityDefinitionClosed : P.continuityDefinition
  compositionLimitClosed : P.compositionLimit
  squeezeTheoremClosed : P.squeezeTheorem

def FunctionLimitsClosed (P : FunctionLimitsPackage) : Prop :=
  P.limitDefinition ∧ P.limitUniqueness ∧ P.algebraicLimitLaws ∧
  P.continuityDefinition ∧ P.compositionLimit ∧ P.squeezeTheorem

theorem function_limits_closed_from_evidence
    (P : FunctionLimitsPackage) (E : FunctionLimitsEvidence P) :
    FunctionLimitsClosed P := by
  exact And.intro E.limitDefinitionClosed
    (And.intro E.limitUniquenessClosed
      (And.intro E.algebraicLimitLawsClosed
        (And.intro E.continuityDefinitionClosed
          (And.intro E.compositionLimitClosed E.squeezeTheoremClosed))))

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse