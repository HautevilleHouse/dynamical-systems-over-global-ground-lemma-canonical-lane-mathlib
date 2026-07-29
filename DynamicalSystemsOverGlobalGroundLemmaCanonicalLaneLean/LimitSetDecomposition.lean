import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.LyapunovExponentPackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure LimitSetDecompositionPackage {G : GroundDynamicsPackage}
    (A : GlobalAttractorPackage G.globalSemiFlow) (L : LyapunovExponentPackage A) where
  alphaLimitSets : Type u
  omegaLimitSets : Type v
  chainRecurrentSet : Set (G.phaseSpace)
  MorseDecomposition : Prop
  spectralDecomposition : Prop

def LimitSetDecompositionClosed {G : GroundDynamicsPackage}
    {A : GlobalAttractorPackage G.globalSemiFlow} {L : LyapunovExponentPackage A}
    (D : LimitSetDecompositionPackage A L) : Prop :=
  D.MorseDecomposition ∧ D.spectralDecomposition

structure LimitSetDecompositionEvidence {G : GroundDynamicsPackage}
    {A : GlobalAttractorPackage G.globalSemiFlow} {L : LyapunovExponentPackage A}
    (D : LimitSetDecompositionPackage A L) where
  MorseDecompositionClosed : D.MorseDecomposition
  spectralDecompositionClosed : D.spectralDecomposition

theorem limit_set_decomposition_closed_from_evidence {G : GroundDynamicsPackage}
    {A : GlobalAttractorPackage G.globalSemiFlow} {L : LyapunovExponentPackage A}
    (D : LimitSetDecompositionPackage A L) (E : LimitSetDecompositionEvidence D) :
    LimitSetDecompositionClosed D := by
  exact And.intro E.MorseDecompositionClosed E.spectralDecompositionClosed

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse
