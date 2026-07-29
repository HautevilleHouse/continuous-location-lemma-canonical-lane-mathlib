import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.LocationLemmaBridgeLemmas

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure ContinuousLocationEstimatorPackage where
  locationEstimatorType : Type u
  consistency : Prop
  rateOfConvergence : Prop
  underlyingDistribution : Prop

structure ContinuousLocationEstimatorEvidence (E : ContinuousLocationEstimatorPackage) where
  consistencyClosed : E.consistency
  rateOfConvergenceClosed : E.rateOfConvergence
  underlyingDistributionClosed : E.underlyingDistribution

def ContinuousLocationEstimatorClosed (E : ContinuousLocationEstimatorPackage) : Prop :=
  E.consistency ∧ E.rateOfConvergence ∧ E.underlyingDistribution

theorem continuous_location_estimator_closed_from_evidence
    (E : ContinuousLocationEstimatorPackage)
    (Ev : ContinuousLocationEstimatorEvidence E) :
    ContinuousLocationEstimatorClosed E := by
  exact And.intro Ev.consistencyClosed
    (And.intro Ev.rateOfConvergenceClosed Ev.underlyingDistributionClosed)

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse