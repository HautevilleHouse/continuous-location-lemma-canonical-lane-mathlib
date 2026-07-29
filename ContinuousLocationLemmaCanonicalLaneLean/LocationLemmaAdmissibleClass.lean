import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.ContinuousLocationEstimator

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : LocationLemmaAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  locationLemmaAdmissibilityClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse