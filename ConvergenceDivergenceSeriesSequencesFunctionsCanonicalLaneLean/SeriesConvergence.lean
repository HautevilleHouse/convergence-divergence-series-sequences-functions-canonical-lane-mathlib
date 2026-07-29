import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean.SequenceConvergence

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean

structure SeriesPackage where
  termSequence : ℕ → ℝ
  partialSums : ℕ → ℝ
  seriesConverges : ∃ L, ∀ ε > 0, ∃ N, ∀ n ≥ N, |partialSums n - L| < ε

def SeriesConvergenceClosed (S : SeriesPackage) : Prop :=
  S.seriesConverges

theorem series_convergence_closed_from_evidence (S : SeriesPackage) (h : S.seriesConverges) :
    SeriesConvergenceClosed S := h

end ConvergenceDivergenceSeriesSequencesFunctionsCanonicalLaneLean
end HautevilleHouse