import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.LocationSpace

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure ContinuousFunctionSpace (L : LocationSpace) where
  carrier : Type v
  topology : TopologicalSpace carrier
  norm : carrier → ℝ
  normNonnegative : ∀ f, norm f ≥ 0
  normZero : ∀ f, norm f = 0 ↔ f = (0 : carrier)
  normScalar : ∀ (a : ℝ) (f : carrier), norm (a • f) = |a| * norm f
  normTriangle : ∀ f g : carrier, norm (f + g) ≤ norm f + norm g
  complete : MetricSpace.Completeness carrier
  pointwiseBounded : Prop
  uniformContinuity : Prop
  pointwiseBoundedClosed : pointwiseBounded
  uniformContinuityClosed : uniformContinuity

def continuousFunctionSpaceClosed (L : LocationSpace) (C : ContinuousFunctionSpace L) : Prop :=
  C.complete ∧ C.pointwiseBounded ∧ C.uniformContinuity

theorem continuousFunctionSpace_closed_from_evidence (L : LocationSpace) (C : ContinuousFunctionSpace L) (hcomp : C.complete) (hpb : C.pointwiseBoundedClosed) (huc : C.uniformContinuityClosed) : continuousFunctionSpaceClosed L C :=
  And.intro hcomp (And.intro hpb huc)

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse