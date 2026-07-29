import HautevilleHouse.DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.GlobalStabilityCore

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure TransferOperatorPackage where
  operator : Type u → Type u
  spectralGap : Prop
  mixingProperty : Prop
  lemmaApplied : Prop

structure TransferOperatorEvidence (P : TransferOperatorPackage) where
  spectralGapClosed : P.spectralGap
  mixingPropertyClosed : P.mixingProperty
  lemmaAppliedClosed : P.lemmaApplied

def TransferOperatorClosed (P : TransferOperatorPackage) : Prop :=
  P.spectralGap ∧ P.mixingProperty ∧ P.lemmaApplied

theorem transfer_operator_closed_from_evidence (P : TransferOperatorPackage) (E : TransferOperatorEvidence P) :
    TransferOperatorClosed P := by
  exact And.intro E.spectralGapClosed (And.intro E.mixingPropertyClosed E.lemmaAppliedClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse