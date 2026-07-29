import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.DynamicalSystemState

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure GroundLemmaPackage where
  state : DynamicalSystemState
  groundLemmaHolds : Prop
  globalAttractorExists : Prop
  convergenceRate : Prop

structure GroundLemmaEvidence (G : GroundLemmaPackage) where
  groundLemmaHoldsClosed : G.groundLemmaHolds
  globalAttractorExistsClosed : G.globalAttractorExists
  convergenceRateClosed : G.convergenceRate

def GroundLemmaClosed (G : GroundLemmaPackage) : Prop :=
  G.groundLemmaHolds ∧ G.globalAttractorExists ∧ G.convergenceRate

theorem ground_lemma_closed_from_evidence (G : GroundLemmaPackage) (E : GroundLemmaEvidence G) :
    GroundLemmaClosed G := by
  exact And.intro E.groundLemmaHoldsClosed (And.intro E.globalAttractorExistsClosed E.convergenceRateClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse