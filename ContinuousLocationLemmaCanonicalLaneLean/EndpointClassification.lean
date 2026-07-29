import canonicalLaneMathlib.LocationDynamics

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure EndpointClassificationPackage {L : LocationDynamicsPackage}
    (T : TimeContinuityPackage) where
  targetReached : Prop
  targetUnique : Prop
  endpointMatchesStatement : Prop

structure EndpointClassificationEvidence {L : LocationDynamicsPackage}
    {T : TimeContinuityPackage} (E : EndpointClassificationPackage T) where
  targetReachedClosed : E.targetReached
  targetUniqueClosed : E.targetUnique
  endpointMatchesStatementClosed : E.endpointMatchesStatement

def EndpointClassificationClosed {L : LocationDynamicsPackage}
    {T : TimeContinuityPackage} (E : EndpointClassificationPackage T) : Prop :=
  E.targetReached ∧ E.targetUnique ∧ E.endpointMatchesStatement

theorem endpoint_classification_closed_from_evidence
    {L : LocationDynamicsPackage} {T : TimeContinuityPackage}
    (E : EndpointClassificationPackage T)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.targetReachedClosed
    (And.intro Ev.targetUniqueClosed Ev.endpointMatchesStatementClosed)

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse