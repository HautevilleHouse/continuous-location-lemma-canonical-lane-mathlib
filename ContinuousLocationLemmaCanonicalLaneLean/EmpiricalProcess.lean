import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.LocationSpace
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.ContinuousFunctionSpace

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure EmpiricalProcess (L : LocationSpace) (C : ContinuousFunctionSpace L) where
  sampleSpace : Type u
  probabilityMeasure : Set (sampleSpace → ℝ)
  expectation : (sampleSpace → ℝ) → ℝ
  vcClass : Prop
  uniformConvergence : Prop
  boundedDifference : Prop
  vcClassClosed : vcClass
  uniformConvergenceClosed : uniformConvergence
  boundedDifferenceClosed : boundedDifference

def empiricalProcessClosed (L : LocationSpace) (C : ContinuousFunctionSpace L) (E : EmpiricalProcess L C) : Prop :=
  E.vcClass ∧ E.uniformConvergence ∧ E.boundedDifference

theorem empiricalProcess_closed_from_evidence (L : LocationSpace) (C : ContinuousFunctionSpace L) (E : EmpiricalProcess L C) (hvc : E.vcClassClosed) (huc : E.uniformConvergenceClosed) (hbd : E.boundedDifferenceClosed) : empiricalProcessClosed L C E :=
  And.intro hvc (And.intro huc hbd)

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse