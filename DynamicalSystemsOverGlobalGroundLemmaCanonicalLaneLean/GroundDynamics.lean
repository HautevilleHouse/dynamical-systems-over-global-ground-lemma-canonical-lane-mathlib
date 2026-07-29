import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure GroundDynamicsPackage where
  phaseSpace : Type u
  evolutionFamily : Type v
  globalSemiFlow : Prop
  invarianceLaw : Prop
  groundEnergyFunctional : Type w
  energyDissipation : Prop

def GroundDynamicsClosed (G : GroundDynamicsPackage) : Prop :=
  G.globalSemiFlow ∧ G.invarianceLaw ∧ G.energyDissipation

structure GroundDynamicsEvidence (G : GroundDynamicsPackage) where
  globalSemiFlowClosed : G.globalSemiFlow
  invarianceLawClosed : G.invarianceLaw
  energyDissipationClosed : G.energyDissipation

theorem ground_dynamics_closed_from_evidence (G : GroundDynamicsPackage)
    (E : GroundDynamicsEvidence G) : GroundDynamicsClosed G := by
  exact And.intro E.globalSemiFlowClosed (And.intro E.invarianceLawClosed E.energyDissipationClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse
