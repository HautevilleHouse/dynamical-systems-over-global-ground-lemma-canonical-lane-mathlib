import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure ErgodicTheoryPackage where
  invariantMeasure : Prop
  ergodicDecomposition : Prop
  birkhoffErgodicTheorem : Prop
  mixingProperties : Prop
  invariantMeasureTerm : invariantMeasure
  ergodicDecompositionTerm : ergodicDecomposition
  birkhoffErgodicTheoremTerm : birkhoffErgodicTheorem
  mixingPropertiesTerm : mixingProperties

structure ErgodicTheoryEvidence (E : ErgodicTheoryPackage) where
  invariantMeasureClosed : E.invariantMeasure
  ergodicDecompositionClosed : E.ergodicDecomposition
  birkhoffErgodicTheoremClosed : E.birkhoffErgodicTheorem
  mixingPropertiesClosed : E.mixingProperties

def ErgodicTheoryClosed (E : ErgodicTheoryPackage) : Prop :=
  E.invariantMeasure ∧ E.ergodicDecomposition ∧
  E.birkhoffErgodicTheorem ∧ E.mixingProperties

theorem ergodic_theory_closed_from_evidence (E : ErgodicTheoryPackage)
    (Ev : ErgodicTheoryEvidence E) : ErgodicTheoryClosed E := by
  exact And.intro Ev.invariantMeasureClosed
    (And.intro Ev.ergodicDecompositionClosed
      (And.intro Ev.birkhoffErgodicTheoremClosed Ev.mixingPropertiesClosed))

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse