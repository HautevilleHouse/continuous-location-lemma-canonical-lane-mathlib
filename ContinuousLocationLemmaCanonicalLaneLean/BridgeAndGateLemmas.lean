import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | ContinuousLocationAdmittedObject obj => obj.pathConnected

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  exact A.object.pathConnected

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse
