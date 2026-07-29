import HautevilleHouse.DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.InvariantSetAnalysis

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure GlobalStabilityCorePackage where
  lyapunovFunction : Type u → Type u
  stabilityCondition : Prop
  asymptoticConvergence : Prop
  groundLemmaApplied : Prop

structure GlobalStabilityCoreEvidence (P : GlobalStabilityCorePackage) where
  stabilityConditionClosed : P.stabilityCondition
  asymptoticConvergenceClosed : P.asymptoticConvergence
  groundLemmaAppliedClosed : P.groundLemmaApplied

def GlobalStabilityCoreClosed (P : GlobalStabilityCorePackage) : Prop :=
  P.stabilityCondition ∧ P.asymptoticConvergence ∧ P.groundLemmaApplied

theorem global_stability_core_closed_from_evidence (P : GlobalStabilityCorePackage) (E : GlobalStabilityCoreEvidence P) :
    GlobalStabilityCoreClosed P := by
  exact And.intro E.stabilityConditionClosed (And.intro E.asymptoticConvergenceClosed E.groundLemmaAppliedClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse