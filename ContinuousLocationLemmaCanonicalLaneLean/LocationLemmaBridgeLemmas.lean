import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure LocationLemmaAdmissibleObject where
  continuousLocationFunction : Type u
  epsilonAdmissibilityBound : Prop
  remainderControlled : Prop
  epsilonAdmissibilityBoundTerm : epsilonAdmissibilityBound
  remainderControlledTerm : remainderControlled

def locationLemmaAdmissibilityClosed (L : LocationLemmaAdmissibleObject) : Prop :=
  L.epsilonAdmissibilityBound ∧ L.remainderControlled

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse