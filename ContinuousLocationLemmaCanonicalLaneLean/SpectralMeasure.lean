import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.SelfAdjointOperator
import Mathlib.Analysis.SpecialFunctions.SpectralTheory

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure SpectralMeasure {L : LocationObject} {P : LocationFunctionPackage L} (S : SelfAdjointOperator P) where
  projectionValuedMeasure : ProjectionValuedMeasure ℝ (S.space)
  supportInSpectrum : Set.Subset (support projectionValuedMeasure) (spectrum S.operator)
  integralReproduces : ∀ f : ℝ → ℂ, BoundedMeasurable f → (∫ x, f x ∂ projectionValuedMeasure) = f(S.operator)

structure SpectralMeasureEvidence {L : LocationObject} {P : LocationFunctionPackage L} {S : SelfAdjointOperator P} (M : SpectralMeasure S) where
  supportInSpectrumClosed : M.supportInSpectrum
  integralReproducesClosed : M.integralReproduces

def SpectralMeasureClosed {L : LocationObject} {P : LocationFunctionPackage L} {S : SelfAdjointOperator P} (M : SpectralMeasure S) : Prop :=
  M.supportInSpectrum ∧ M.integralReproduces

theorem spectral_measure_closed_from_evidence {L : LocationObject} {P : LocationFunctionPackage L} {S : SelfAdjointOperator P} (M : SpectralMeasure S) (E : SpectralMeasureEvidence M) : SpectralMeasureClosed M := by
  exact And.intro E.supportInSpectrumClosed E.integralReproducesClosed

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse