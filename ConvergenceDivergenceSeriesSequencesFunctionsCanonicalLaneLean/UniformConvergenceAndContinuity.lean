import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure UniformConvergencePackage where
  functionSequenceType : Type u
  pointwiseConvergenceDef : Prop
  uniformConvergenceDef : Prop
  continuityPreservation : Prop
  uniformLimitContinuous : Prop
  cauchyCriterionUniform : Prop
  pointwiseConvergenceDefTerm : pointwiseConvergenceDef
  uniformConvergenceDefTerm : uniformConvergenceDef
  continuityPreservationTerm : continuityPreservation
  uniformLimitContinuousTerm : uniformLimitContinuous
  cauchyCriterionUniformTerm : cauchyCriterionUniform

structure UniformConvergenceEvidence (P : UniformConvergencePackage) where
  pointwiseConvergenceDefClosed : P.pointwiseConvergenceDef
  uniformConvergenceDefClosed : P.uniformConvergenceDef
  continuityPreservationClosed : P.continuityPreservation
  uniformLimitContinuousClosed : P.uniformLimitContinuous
  cauchyCriterionUniformClosed : P.cauchyCriterionUniform

def UniformConvergenceClosed (P : UniformConvergencePackage) : Prop :=
  P.pointwiseConvergenceDef ∧ P.uniformConvergenceDef ∧
  P.continuityPreservation ∧ P.uniformLimitContinuous ∧ P.cauchyCriterionUniform

theorem uniform_convergence_closed_from_evidence
    (P : UniformConvergencePackage) (E : UniformConvergenceEvidence P) :
    UniformConvergenceClosed P := by
  exact And.intro E.pointwiseConvergenceDefClosed
    (And.intro E.uniformConvergenceDefClosed
      (And.intro E.continuityPreservationClosed
        (And.intro E.uniformLimitContinuousClosed E.cauchyCriterionUniformClosed)))

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse