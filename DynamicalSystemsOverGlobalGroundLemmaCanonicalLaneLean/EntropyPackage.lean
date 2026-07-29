import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.ErgodicDecomposition

/-!
# Entropy Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure EntropyPackage {M : PhaseSpacePackage}
    {T : EvolutionOperatorPackage M} {I : InvariantMeasurePackage T}
    (E : ErgodicDecompositionPackage I) where
  kolmogorovSinaiEntropy : Type u
  entropyProduction : Prop
  largeDeviations : Prop
  entropyProductionClosed : entropyProduction
  largeDeviationsClosed : largeDeviations

theorem entropy_closed_from_package {M : PhaseSpacePackage}
    {T : EvolutionOperatorPackage M} {I : InvariantMeasurePackage T}
    {E : ErgodicDecompositionPackage I} (G : EntropyPackage E) :
    G.entropyProduction ∧ G.largeDeviations := by
  exact And.intro G.entropyProductionClosed G.largeDeviationsClosed

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse
