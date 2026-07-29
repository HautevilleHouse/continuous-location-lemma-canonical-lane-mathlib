import canonicalLaneMathlib.AdmissibleClass

/-!
# Time Continuity Package
-/

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure TimeContinuityPackage where
  timeDomain : Type u
  flowMap : timeDomain → Type v
  continuityCondition : Prop
  semigroupProperty : Prop

structure TimeContinuityEvidence (T : TimeContinuityPackage) where
  continuityConditionClosed : T.continuityCondition
  semigroupPropertyClosed : T.semigroupProperty

def TimeContinuityClosed (T : TimeContinuityPackage) : Prop :=
  T.continuityCondition ∧ T.semigroupProperty

theorem time_continuity_closed_from_evidence (T : TimeContinuityPackage)
    (E : TimeContinuityEvidence T) : TimeContinuityClosed T := by
  exact And.intro E.continuityConditionClosed E.semigroupPropertyClosed

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse