import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure GlobalGroundPackage where
  groundSet : Type u
  groundTopology : TopologicalSpace groundSet
  invariantMeasure : Type v
  ergodicDecomposition : Prop
  recurrenceProperty : Prop
  limitSetStructure : Prop

def GlobalGroundClosed (G : GlobalGroundPackage) : Prop :=
  G.ergodicDecomposition ∧ G.recurrenceProperty ∧ G.limitSetStructure

structure GlobalGroundEvidence (G : GlobalGroundPackage) where
  ergodicDecompositionClosed : G.ergodicDecomposition
  recurrencePropertyClosed : G.recurrenceProperty
  limitSetStructureClosed : G.limitSetStructure

theorem global_ground_closed_from_evidence (G : GlobalGroundPackage)
    (E : GlobalGroundEvidence G) : GlobalGroundClosed G := by
  exact And.intro E.ergodicDecompositionClosed
    (And.intro E.recurrencePropertyClosed E.limitSetStructureClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse