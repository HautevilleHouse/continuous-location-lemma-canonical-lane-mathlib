import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure ContinuousLocationSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  measurable : MeasurableSpace carrier

structure LocationObject where
  space : ContinuousLocationSpace
  locationFunction : space.carrier → ℝ
  measurableLocation : Measurable (locationFunction)
  boundedness : ∃ M, ∀ x, |locationFunction x| ≤ M

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse