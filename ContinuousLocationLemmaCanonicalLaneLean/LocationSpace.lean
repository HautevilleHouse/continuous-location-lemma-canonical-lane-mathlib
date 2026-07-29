import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure LocationSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  metric : carrier → carrier → ℝ
  metricNonnegative : ∀ x y, metric x y ≥ 0
  metricIdentical : ∀ x y, metric x y = 0 ↔ x = y
  metricSymmetric : ∀ x y, metric x y = metric y x
  metricTriangle : ∀ x y z, metric x z ≤ metric x y + metric y z
  separable : TopologicalSpace.IsSeparable carrier
  complete : MetricSpace.Completeness carrier

def locationSpaceClosed (L : LocationSpace) : Prop :=
  L.separable ∧ L.complete

theorem location_space_closed_from_separable_complete (L : LocationSpace) (hsep : L.separable) (hcomp : L.complete) : locationSpaceClosed L :=
  And.intro hsep hcomp

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse