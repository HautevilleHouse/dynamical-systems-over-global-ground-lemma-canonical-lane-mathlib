import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.InvariantManifold

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure StabilityClassificationPackage {G : GroundLemmaPackage}
    {L : LyapunovFunctionPackage G} {I : InvariantManifoldPackage L} where
  stableManifoldClasified : Prop
  unstableManifoldClassified : Prop
  centerManifoldClassified : Prop
  asymptoticStabilityDetected : Prop

structure StabilityClassificationEvidence {G : GroundLemmaPackage}
    {L : LyapunovFunctionPackage G} {I : InvariantManifoldPackage L}
    (S : StabilityClassificationPackage I) where
  stableManifoldClasifiedClosed : S.stableManifoldClasified
  unstableManifoldClassifiedClosed : S.unstableManifoldClassified
  centerManifoldClassifiedClosed : S.centerManifoldClassified
  asymptoticStabilityDetectedClosed : S.asymptoticStabilityDetected

def StabilityClassificationClosed {G : GroundLemmaPackage}
    {L : LyapunovFunctionPackage G} {I : InvariantManifoldPackage L}
    (S : StabilityClassificationPackage I) : Prop :=
  S.stableManifoldClasified ∧ S.unstableManifoldClassified ∧
  S.centerManifoldClassified ∧ S.asymptoticStabilityDetected

theorem stability_classification_closed_from_evidence {G : GroundLemmaPackage}
    {L : LyapunovFunctionPackage G} {I : InvariantManifoldPackage L}
    (S : StabilityClassificationPackage I) (E : StabilityClassificationEvidence S) :
    StabilityClassificationClosed S := by
  exact And.intro E.stableManifoldClasifiedClosed (And.intro E.unstableManifoldClassifiedClosed
    (And.intro E.centerManifoldClassifiedClosed E.asymptoticStabilityDetectedClosed))

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse