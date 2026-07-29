import canonicalLaneMathlib.AdmissibleClass

/-!
# Location Dynamics Package
-/

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure LocationDynamicsPackage where
  continuousPath : Type u
  speedCondition : Prop
  boundaryAvoidance : Prop
  locationUniqueness : Prop

structure LocationDynamicsEvidence (L : LocationDynamicsPackage) where
  continuousPathClosed : L.continuousPath
  speedConditionClosed : L.speedCondition
  boundaryAvoidanceClosed : L.boundaryAvoidance
  locationUniquenessClosed : L.locationUniqueness

def LocationDynamicsClosed (L : LocationDynamicsPackage) : Prop :=
  L.continuousPath ∧ L.speedCondition ∧ L.boundaryAvoidance ∧ L.locationUniqueness

theorem location_dynamics_closed_from_evidence (L : LocationDynamicsPackage)
    (E : LocationDynamicsEvidence L) : LocationDynamicsClosed L := by
  exact And.intro E.continuousPathClosed
    (And.intro E.speedConditionClosed
      (And.intro E.boundaryAvoidanceClosed E.locationUniquenessClosed))

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse