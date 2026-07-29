import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.LocationSpace
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.ContinuousFunctionSpace
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.EmpiricalProcess

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure ContinuousLocationLemmaPackage (L : LocationSpace) (C : ContinuousFunctionSpace L) (E : EmpiricalProcess L C) where
  expectationSmooth : Prop
  measurableSelection : Prop
  continuitySet : Set L
  locationEstimateOnContinuitySet : Prop
  empiricalMinimizerConverges : Prop
  expectationSmoothClosed : expectationSmooth
  measurableSelectionClosed : measurableSelection
  locationEstimateOnContinuitySetClosed : locationEstimateOnContinuitySet
  empiricalMinimizerConvergesClosed : empiricalMinimizerConverges

def ContinuousLocationLemmaClosed (L : LocationSpace) (C : ContinuousFunctionSpace L) (E : EmpiricalProcess L C) (P : ContinuousLocationLemmaPackage L C E) : Prop :=
  P.expectationSmooth ∧ P.measurableSelection ∧
  P.locationEstimateOnContinuitySet ∧ P.empiricalMinimizerConverges

theorem continuousLocationLemma_closed_from_evidence (L : LocationSpace) (C : ContinuousFunctionSpace L) (E : EmpiricalProcess L C) (P : ContinuousLocationLemmaPackage L C E) (hes : P.expectationSmoothClosed) (hms : P.measurableSelectionClosed) (hles : P.locationEstimateOnContinuitySetClosed) (hemc : P.empiricalMinimizerConvergesClosed) : ContinuousLocationLemmaClosed L C E P :=
  And.intro hes (And.intro hms (And.intro hles hemc))

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse