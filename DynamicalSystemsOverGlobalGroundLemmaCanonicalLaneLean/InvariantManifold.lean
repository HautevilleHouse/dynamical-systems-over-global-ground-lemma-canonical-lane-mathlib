import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure InvariantManifoldPackage where
  centerManifold : Prop
  stableManifold : Prop
  unstableManifold : Prop
  hadamardPerronTheorem : Prop
  centerManifoldTerm : centerManifold
  stableManifoldTerm : stableManifold
  unstableManifoldTerm : unstableManifold
  hadamardPerronTheoremTerm : hadamardPerronTheorem

structure InvariantManifoldEvidence (I : InvariantManifoldPackage) where
  centerManifoldClosed : I.centerManifold
  stableManifoldClosed : I.stableManifold
  unstableManifoldClosed : I.unstableManifold
  hadamardPerronTheoremClosed : I.hadamardPerronTheorem

def InvariantManifoldClosed (I : InvariantManifoldPackage) : Prop :=
  I.centerManifold ∧ I.stableManifold ∧
  I.unstableManifold ∧ I.hadamardPerronTheorem

theorem invariant_manifold_closed_from_evidence (I : InvariantManifoldPackage)
    (E : InvariantManifoldEvidence I) : InvariantManifoldClosed I := by
  exact And.intro E.centerManifoldClosed
    (And.intro E.stableManifoldClosed
      (And.intro E.unstableManifoldClosed E.hadamardPerronTheoremClosed))

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse