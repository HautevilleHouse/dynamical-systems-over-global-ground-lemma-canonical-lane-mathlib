import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure DynamicalCorePackage (G : GlobalGroundPackage) where
  flowMap : G.groundSet → ℝ → G.groundSet
  flowContinuity : Prop
  invariantSetStructure : Prop
  attractorBasinDecomposition : Prop

structure DynamicalCoreEvidence {G : GlobalGroundPackage}
    (D : DynamicalCorePackage G) where
  flowContinuityClosed : D.flowContinuity
  invariantSetStructureClosed : D.invariantSetStructure
  attractorBasinDecompositionClosed : D.attractorBasinDecomposition

def DynamicalCoreClosed {G : GlobalGroundPackage}
    (D : DynamicalCorePackage G) : Prop :=
  D.flowContinuity ∧ D.invariantSetStructure ∧ D.attractorBasinDecomposition

theorem dynamical_core_closed_from_evidence {G : GlobalGroundPackage}
    (D : DynamicalCorePackage G) (E : DynamicalCoreEvidence D) :
    DynamicalCoreClosed D := by
  exact And.intro E.flowContinuityClosed
    (And.intro E.invariantSetStructureClosed E.attractorBasinDecompositionClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse