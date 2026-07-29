import canonicalLaneMathlib.AdmissibleClass
import ContinuousLocationLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse