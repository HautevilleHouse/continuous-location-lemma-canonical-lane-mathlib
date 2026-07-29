import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.LocationLemmaBridgeLemmas
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.ContinuousLocationEstimator
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.LocationLemmaAdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

def ConstrainedLocationLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_location_lemma_endgame (A : AdmissibleClass) :
    ConstrainedLocationLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse