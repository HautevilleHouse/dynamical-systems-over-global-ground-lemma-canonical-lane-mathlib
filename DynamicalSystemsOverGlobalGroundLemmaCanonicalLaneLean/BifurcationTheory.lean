import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure BifurcationTheoryPackage where
  localBifurcation : Prop
  hopfBifurcation : Prop
  centerBifurcation : Prop
  normalForms : Prop
  localBifurcationTerm : localBifurcation
  hopfBifurcationTerm : hopfBifurcation
  centerBifurcationTerm : centerBifurcation
  normalFormsTerm : normalForms

structure BifurcationTheoryEvidence (B : BifurcationTheoryPackage) where
  localBifurcationClosed : B.localBifurcation
  hopfBifurcationClosed : B.hopfBifurcation
  centerBifurcationClosed : B.centerBifurcation
  normalFormsClosed : B.normalForms

def BifurcationTheoryClosed (B : BifurcationTheoryPackage) : Prop :=
  B.localBifurcation ∧ B.hopfBifurcation ∧
  B.centerBifurcation ∧ B.normalForms

theorem bifurcation_theory_closed_from_evidence (B : BifurcationTheoryPackage)
    (E : BifurcationTheoryEvidence B) : BifurcationTheoryClosed B := by
  exact And.intro E.localBifurcationClosed
    (And.intro E.hopfBifurcationClosed
      (And.intro E.centerBifurcationClosed E.normalFormsClosed))

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse