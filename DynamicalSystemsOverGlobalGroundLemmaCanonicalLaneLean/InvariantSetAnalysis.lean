import HautevilleHouse.DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.GlobalGroundAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure InvariantSetPackage where
  flow : Type u → Type u
  invariantSet : Type u → Prop
  invariancePreserved : Prop
  globalAttractorExists : Prop
  lemmaApplied : Prop

structure InvariantSetEvidence (P : InvariantSetPackage) where
  invariancePreservedClosed : P.invariancePreserved
  globalAttractorExistsClosed : P.globalAttractorExists
  lemmaAppliedClosed : P.lemmaApplied

def InvariantSetClosed (P : InvariantSetPackage) : Prop :=
  P.invariancePreserved ∧ P.globalAttractorExists ∧ P.lemmaApplied

theorem invariant_set_closed_from_evidence (P : InvariantSetPackage) (E : InvariantSetEvidence P) :
    InvariantSetClosed P := by
  exact And.intro E.invariancePreservedClosed (And.intro E.globalAttractorExistsClosed E.lemmaAppliedClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse