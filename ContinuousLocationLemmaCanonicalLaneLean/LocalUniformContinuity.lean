import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure LocalUniformContinuityPackage (X : ContinuousLocationSpace) (H : LocationHypothesis X) where
  uniformContinuityOnCompacts : Prop
  lipschitzContinuityLocal : Prop
  modulusOfContinuity : Prop

structure LocalUniformContinuityEvidence (X : ContinuousLocationSpace) (H : LocationHypothesis X)
    (L : LocalUniformContinuityPackage X H) where
  uniformContinuityOnCompactsClosed : L.uniformContinuityOnCompacts
  lipschitzContinuityLocalClosed : L.lipschitzContinuityLocal
  modulusOfContinuityClosed : L.modulusOfContinuity

def LocalUniformContinuityClosed (X : ContinuousLocationSpace) (H : LocationHypothesis X)
    (L : LocalUniformContinuityPackage X H) : Prop :=
  L.uniformContinuityOnCompacts ∧ L.lipschitzContinuityLocal ∧ L.modulusOfContinuity

theorem local_uniform_continuity_closed_from_evidence (X : ContinuousLocationSpace) (H : LocationHypothesis X)
    (L : LocalUniformContinuityPackage X H) (E : LocalUniformContinuityEvidence X H L) :
    LocalUniformContinuityClosed X H L := by
  exact And.intro E.uniformContinuityOnCompactsClosed
    (And.intro E.lipschitzContinuityLocalClosed E.modulusOfContinuityClosed)

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse
