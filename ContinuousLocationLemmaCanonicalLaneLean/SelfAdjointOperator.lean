import HautevilleHouse.ContinuousLocationLemmaCanonicalLaneLean.LocationFunctionPackage
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace ContinuousLocationLemmaCanonicalLaneLean

structure SelfAdjointOperator {L : LocationObject} (P : LocationFunctionPackage L) where
  space : HilbertSpace ℂ
  operator : space →L[ℂ] space
  selfAdjoint : IsSelfAdjoint (operator)
  spectrumCondition : SpectrumRestricted (operator)

structure SelfAdjointEvidence {L : LocationObject} {P : LocationFunctionPackage L} (S : SelfAdjointOperator P) where
  selfAdjointClosed : S.selfAdjoint
  spectrumConditionClosed : S.spectrumCondition

def SelfAdjointClosed {L : LocationObject} {P : LocationFunctionPackage L} (S : SelfAdjointOperator P) : Prop :=
  S.selfAdjoint ∧ S.spectrumCondition

theorem self_adjoint_closed_from_evidence {L : LocationObject} {P : LocationFunctionPackage L} (S : SelfAdjointOperator P) (E : SelfAdjointEvidence S) : SelfAdjointClosed S := by
  exact And.intro E.selfAdjointClosed E.spectrumConditionClosed

end ContinuousLocationLemmaCanonicalLaneLean
end HautevilleHouse