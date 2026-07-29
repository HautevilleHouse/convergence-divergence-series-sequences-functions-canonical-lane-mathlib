import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure ConvergenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ConvergenceObject where
  space : ConvergenceSpace
  sequence : ℕ → carrier
  limit : carrier
  sequenceConverges : Prop
  seriesIndex : Type
  seriesTerm : seriesIndex → carrier
  seriesConverges : Prop
  functionDomain : Type
  functionCodomain : TopologicalSpace functionCodomain
  functionSequence : ℕ → (functionDomain → carrier)
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  conclusion : sequenceConverges ∨ seriesConverges ∨ pointwiseConvergence

def ConvergenceBridgeClosed (O : ConvergenceObject) : Prop :=
  O.conclusion

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse