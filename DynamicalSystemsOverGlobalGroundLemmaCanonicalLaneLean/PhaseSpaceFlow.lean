import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure PhaseSpacePackage where
  phaseSpace : Type u
  topology : TopologicalSpace phaseSpace
  smoothStructure : Prop
  dimension : Nat
  smoothStructureTerm : smoothStructure

structure PhaseSpaceEvidence (P : PhaseSpacePackage) where
  smoothStructureClosed : P.smoothStructure

def PhaseSpaceClosed (P : PhaseSpacePackage) : Prop :=
  P.smoothStructure

theorem phase_space_closed_from_evidence (P : PhaseSpacePackage) (E : PhaseSpaceEvidence P) :
    PhaseSpaceClosed P := by
  exact E.smoothStructureClosed

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse