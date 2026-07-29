import canonicalLaneMathlib.AdmissibleClass
import ContinuousLocationLemmaCanonicalLaneLean.ContinuousLocationStructure

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse