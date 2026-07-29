import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure RecurrenceStructurePackage {G : GlobalGroundPackage}
    (D : DynamicalCorePackage G) where
  recurrentPoints : Set G.groundSet
  poincareRecurrence : Prop
  minimalSetExistence : Prop
  chainRecurrentSet : Set G.groundSet

def RecurrenceStructureClosed {G : GlobalGroundPackage}
    {D : DynamicalCorePackage G} (R : RecurrenceStructurePackage D) : Prop :=
  R.poincareRecurrence ∧ R.minimalSetExistence

structure RecurrenceStructureEvidence {G : GlobalGroundPackage}
    {D : DynamicalCorePackage G} (R : RecurrenceStructurePackage D) where
  poincareRecurrenceClosed : R.poincareRecurrence
  minimalSetExistenceClosed : R.minimalSetExistence

theorem recurrence_structure_closed_from_evidence {G : GlobalGroundPackage}
    {D : DynamicalCorePackage G} (R : RecurrenceStructurePackage D)
    (E : RecurrenceStructureEvidence R) : RecurrenceStructureClosed R := by
  exact And.intro E.poincareRecurrenceClosed E.minimalSetExistenceClosed

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse