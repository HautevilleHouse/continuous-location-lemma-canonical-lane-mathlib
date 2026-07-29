import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure ContinuousLocationAdmittedObject where
  space : ContinuousLocationSpace
  source : space.carrier
  target : space.carrier
  pathConnected : Prop
  conclusion : pathConnected

structure AdmissibleClass where
  object : ContinuousLocationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.pathConnected ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse
