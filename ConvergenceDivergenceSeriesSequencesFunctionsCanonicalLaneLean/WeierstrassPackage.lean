import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean.ConvergenceObject

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure WeierstrassPackage where
  monotoneSequence : ℕ → ℝ
  boundedAbove : Prop
  boundedBelow : Prop
  supremumExists : Prop
  infimumExists : Prop
  monotoneConvergence : Prop
  supremumConverges : Prop
  infimumConverges : Prop

structure WeierstrassEvidence (W : WeierstrassPackage) where
  boundedAboveClosed : W.boundedAbove
  boundedBelowClosed : W.boundedBelow
  supremumExistsClosed : W.supremumExists
  supremumConvergesClosed : W.supremumConverges
  infimumConvergesClosed : W.infimumConverges

def WeierstrassClosed (W : WeierstrassPackage) : Prop :=
  W.supremumConverges ∧ W.infimumConverges

theorem weierstrass_closed_from_evidence (W : WeierstrassPackage) (E : WeierstrassEvidence W) :
    WeierstrassClosed W := by
  exact And.intro E.supremumConvergesClosed E.infimumConvergesClosed

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse