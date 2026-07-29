import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.ContinuousLocationSpace

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure LocationFunctionPackage (L : LocationObject) where
  target : Type u
  metric : MetricSpace target
  transitionMap : L.space.carrier → target
  continuity : Continuous (transitionMap)
  locationCompatible : ∀ x : L.space.carrier, locationFunction x = transitionMap x

structure LocationFunctionEvidence {L : LocationObject} (P : LocationFunctionPackage L) where
  continuityClosed : P.continuity
  locationCompatibleClosed : P.locationCompatible

def LocationFunctionClosed {L : LocationObject} (P : LocationFunctionPackage L) : Prop :=
  P.continuity ∧ P.locationCompatible

theorem location_function_closed_from_evidence {L : LocationObject} (P : LocationFunctionPackage L) (E : LocationFunctionEvidence P) : LocationFunctionClosed P := by
  exact And.intro E.continuityClosed E.locationCompatibleClosed

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse