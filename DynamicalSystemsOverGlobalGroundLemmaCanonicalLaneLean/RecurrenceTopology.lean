import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.LimitSetDecomposition

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure RecurrenceTopologyPackage {G : GroundDynamicsPackage}
    (A : GlobalAttractorPackage G.globalSemiFlow) (L : LyapunovExponentPackage A)
    (D : LimitSetDecompositionPackage A L) where
  recurrentSet : Type u
  minimalSet : Prop
  topologicalTransitivity : Prop
  mixing : Prop
  specificationProperty : Prop

def RecurrenceTopologyClosed {G : GroundDynamicsPackage}
    {A : GlobalAttractorPackage G.globalSemiFlow} {L : LyapunovExponentPackage A}
    {D : LimitSetDecompositionPackage A L} (R : RecurrenceTopologyPackage A L D) : Prop :=
  R.minimalSet ∧ R.topologicalTransitivity ∧ R.mixing ∧ R.specificationProperty

structure RecurrenceTopologyEvidence {G : GroundDynamicsPackage}
    {A : GlobalAttractorPackage G.globalSemiFlow} {L : LyapunovExponentPackage A}
    {D : LimitSetDecompositionPackage A L} (R : RecurrenceTopologyPackage A L D) where
  minimalSetClosed : R.minimalSet
  topologicalTransitivityClosed : R.topologicalTransitivity
  mixingClosed : R.mixing
  specificationPropertyClosed : R.specificationProperty

theorem recurrence_topology_closed_from_evidence {G : GroundDynamicsPackage}
    {A : GlobalAttractorPackage G.globalSemiFlow} {L : LyapunovExponentPackage A}
    {D : LimitSetDecompositionPackage A L} (R : RecurrenceTopologyPackage A L D)
    (E : RecurrenceTopologyEvidence R) : RecurrenceTopologyClosed R := by
  exact And.intro E.minimalSetClosed
    (And.intro E.topologicalTransitivityClosed
      (And.intro E.mixingClosed E.specificationPropertyClosed))

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse
