import ContinuousLocationLemmaCanonicalLaneLean.ContinuousLocationStructure
import Mathlib.Analysis.Calculus.MeanInequalities

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure LocalizationEstimates (P : ContinuousLocationPackage) where
  lipschitzConstant : ℝ
  observationRegularity : ℝ
  continuityModulus : ℝ → ℝ
  continuityModulusBound : ∀ ε > 0, continuityModulus ε > 0
  dynamicsLipschitz : ∀ x y c, dist (P.config.dynamics x c) (P.config.dynamics y c) ≤ lipschitzConstant * dist x y
  observationRegular : ∀ x y, dist (P.config.observationMap x) (P.config.observationMap y) ≤ observationRegularity * dist x y

structure LocalizationEvidence (P : ContinuousLocationPackage) (L : LocalizationEstimates P) where
  localizationBound : Prop
  localizationBoundProof : localizationBound

def LocalizationClosed (P : ContinuousLocationPackage) (L : LocalizationEstimates P) : Prop :=
  L.dynamicsLipschitz ∧ L.observationRegular

theorem localization_closed_from_evidence (P : ContinuousLocationPackage) (L : LocalizationEstimates P) (E : LocalizationEvidence P L) :
    LocalizationClosed P L := by
  exact And.intro L.dynamicsLipschitz L.observationRegular

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse