import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.GroundDynamics

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure GlobalAttractorPackage {G : GroundDynamicsPackage} (H : G.globalSemiFlow) where
  attractorSet : Set (G.phaseSpace)
  absorbingNeighborhood : Set (G.phaseSpace)
  forwardInvariance : Prop
  uniformAttraction : Prop
  LyapunovStability : Prop

def GlobalAttractorClosed {G : GroundDynamicsPackage} {H : G.globalSemiFlow}
    (A : GlobalAttractorPackage H) : Prop :=
  A.forwardInvariance ∧ A.uniformAttraction ∧ A.LyapunovStability

structure GlobalAttractorEvidence {G : GroundDynamicsPackage} {H : G.globalSemiFlow}
    (A : GlobalAttractorPackage H) where
  forwardInvarianceClosed : A.forwardInvariance
  uniformAttractionClosed : A.uniformAttraction
  LyapunovStabilityClosed : A.LyapunovStability

theorem global_attractor_closed_from_evidence {G : GroundDynamicsPackage}
    {H : G.globalSemiFlow} (A : GlobalAttractorPackage H)
    (E : GlobalAttractorEvidence A) : GlobalAttractorClosed A := by
  exact And.intro E.forwardInvarianceClosed
    (And.intro E.uniformAttractionClosed E.LyapunovStabilityClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse
