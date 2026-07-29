import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.GlobalAttractorStructure

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure LyapunovExponentPackage {G : GroundDynamicsPackage} (A : GlobalAttractorPackage G.globalSemiFlow) where
  tangentBundle : Type u
  linearizedFlow : Prop
  exponentialGrowthRates : Type v
  OseledetsTheorem : Prop
  multiplicativeErgodicTheorem : Prop

def LyapunovExponentClosed {G : GroundDynamicsPackage}
    {A : GlobalAttractorPackage G.globalSemiFlow} (L : LyapunovExponentPackage A) : Prop :=
  L.linearizedFlow ∧ L.OseledetsTheorem ∧ L.multiplicativeErgodicTheorem

structure LyapunovExponentEvidence {G : GroundDynamicsPackage}
    {A : GlobalAttractorPackage G.globalSemiFlow} (L : LyapunovExponentPackage A) where
  linearizedFlowClosed : L.linearizedFlow
  OseledetsTheoremClosed : L.OseledetsTheorem
  multiplicativeErgodicTheoremClosed : L.multiplicativeErgodicTheorem

theorem lyapunov_exponent_closed_from_evidence {G : GroundDynamicsPackage}
    {A : GlobalAttractorPackage G.globalSemiFlow} (L : LyapunovExponentPackage A)
    (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.linearizedFlowClosed
    (And.intro E.OseledetsTheoremClosed E.multiplicativeErgodicTheoremClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse
