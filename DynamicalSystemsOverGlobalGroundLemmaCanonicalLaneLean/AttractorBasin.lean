import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure AttractorBasinPackage {G : GlobalGroundPackage}
    (D : DynamicalCorePackage G) where
  attractorSet : Set G.groundSet
  basinSet : Set G.groundSet
  attractorInvariant : Prop
  basinAttracts : Prop
  basinOpenness : Prop

structure AttractorBasinEvidence {G : GlobalGroundPackage}
    {D : DynamicalCorePackage G} (A : AttractorBasinPackage D) where
  attractorInvariantClosed : A.attractorInvariant
  basinAttractsClosed : A.basinAttracts
  basinOpennessClosed : A.basinOpenness

def AttractorBasinClosed {G : GlobalGroundPackage}
    {D : DynamicalCorePackage G} (A : AttractorBasinPackage D) : Prop :=
  A.attractorInvariant ∧ A.basinAttracts ∧ A.basinOpenness

theorem attractor_basin_closed_from_evidence {G : GlobalGroundPackage}
    {D : DynamicalCorePackage G} (A : AttractorBasinPackage D)
    (E : AttractorBasinEvidence A) : AttractorBasinClosed A := by
  exact And.intro E.attractorInvariantClosed
    (And.intro E.basinAttractsClosed E.basinOpennessClosed)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse