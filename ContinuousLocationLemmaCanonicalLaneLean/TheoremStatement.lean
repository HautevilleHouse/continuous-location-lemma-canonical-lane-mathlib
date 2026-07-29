import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

-- Admitted objects and closure definition for Continuous Location Lemma

structure ContinuousLocationAdmittedObject where
  source : Type
  topology : TopologicalSpace source
  target : Type
  targetTopology : TopologicalSpace target
  continuityCondition : Prop
  locationUniqueness : Prop
  conclusion : locationUniqueness

-- The closure condition for the lemma: the location is unique given the continuity condition

def LocationLemmaClosed (O : ContinuousLocationAdmittedObject) : Prop :=
  O.locationUniqueness

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse