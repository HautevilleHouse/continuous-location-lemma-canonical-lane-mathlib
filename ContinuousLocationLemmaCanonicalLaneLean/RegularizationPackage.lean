import ContinuousLocationLemmaCanonicalLaneLean.LocalizationEstimates

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure RegularizationPackage (P : ContinuousLocationPackage) (L : LocalizationEstimates P) where
  targetSpace : Type u
  regularizingKernel : P.config.stateSpace → targetSpace
  kernelLipschitz : ℝ
  kernelLipschitzBound : ∀ x y, dist (regularizingKernel x) (regularizingKernel y) ≤ kernelLipschitz * dist x y
  approximationQuality : Prop

structure RegularizationEvidence (P : ContinuousLocationPackage) (L : LocalizationEstimates P) (R : RegularizationPackage P L) where
  approximationQualityClosed : R.approximationQuality

def RegularizationClosed (P : ContinuousLocationPackage) (L : LocalizationEstimates P) (R : RegularizationPackage P L) : Prop :=
  R.approximationQuality

theorem regularization_closed_from_evidence (P : ContinuousLocationPackage) (L : LocalizationEstimates P) (R : RegularizationPackage P L) (E : RegularizationEvidence P L R) :
    RegularizationClosed P L R := by
  exact E.approximationQualityClosed

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse