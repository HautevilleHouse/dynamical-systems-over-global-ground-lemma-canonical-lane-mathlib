import HautevilleHouse.DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.FinalTheorem
import HautevilleHouse.DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.TransferOperatorFormalization

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure GroundLemmaApplicationPackage where
  invariantSet : InvariantSetPackage
  stabilityCore : GlobalStabilityCorePackage
  transferOperator : TransferOperatorPackage
  applicationConsistent : Prop

structure GroundLemmaApplicationEvidence (P : GroundLemmaApplicationPackage) where
  invariantSetClosed : InvariantSetClosed P.invariantSet
  stabilityCoreClosed : GlobalStabilityCoreClosed P.stabilityCore
  transferOperatorClosed : TransferOperatorClosed P.transferOperator
  applicationConsistentClosed : P.applicationConsistent

def GroundLemmaApplicationClosed (P : GroundLemmaApplicationPackage) : Prop :=
  InvariantSetClosed P.invariantSet ∧
  GlobalStabilityCoreClosed P.stabilityCore ∧
  TransferOperatorClosed P.transferOperator ∧
  P.applicationConsistent

theorem ground_lemma_application_closed_from_evidence (P : GroundLemmaApplicationPackage) (E : GroundLemmaApplicationEvidence P) :
    GroundLemmaApplicationClosed P := by
  exact And.intro E.invariantSetClosed
    (And.intro E.stabilityCoreClosed
      (And.intro E.transferOperatorClosed E.applicationConsistentClosed))

theorem ground_lemma_application_closes_constrained (A : AdmissibleClass) (P : GroundLemmaApplicationPackage) (E : GroundLemmaApplicationEvidence P) :
    ConstrainedGlobalGroundClosure A := by
  exact constrained_global_ground_endgame A

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse