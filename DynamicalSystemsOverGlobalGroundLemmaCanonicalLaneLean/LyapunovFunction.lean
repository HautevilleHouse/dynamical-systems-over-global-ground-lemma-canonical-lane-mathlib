import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.GroundLemmaPackage

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure LyapunovFunctionPackage {G : GroundLemmaPackage} where
  functionDefined : Prop
  monotoneAlongFlow : Prop
  strictDecayOffEquilibrium : Prop
  levelSetCompact : Prop

structure LyapunovFunctionEvidence {G : GroundLemmaPackage} (L : LyapunovFunctionPackage G) where
  functionDefinedClosed : L.functionDefined
  monotoneAlongFlowClosed : L.monotoneAlongFlow
  strictDecayOffEquilibriumClosed : L.strictDecayOffEquilibrium
  levelSetCompactClosed : L.levelSetCompact

def LyapunovFunctionClosed {G : GroundLemmaPackage} (L : LyapunovFunctionPackage G) : Prop :=
  L.functionDefined ∧ L.monotoneAlongFlow ∧ L.strictDecayOffEquilibrium ∧ L.levelSetCompact

theorem lyapunov_function_closed_from_evidence {G : GroundLemmaPackage} (L : LyapunovFunctionPackage G)
    (E : LyapunovFunctionEvidence L) : LyapunovFunctionClosed L := by
  exact And.intro E.functionDefinedClosed (And.intro E.monotoneAlongFlowClosed
    (And.intro E.strictDecayOffEquilibriumClosed E.levelSetCompactClosed))

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse