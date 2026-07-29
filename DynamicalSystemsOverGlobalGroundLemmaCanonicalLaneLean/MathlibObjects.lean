import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Dynamics.Basic

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicalPhaseSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : MeasureTheory.Measure carrier

structure DynamicalAdmittedObject where
  space : DynamicalPhaseSpace
  dynamicalSystem : Flow ℝ space.carrier
  globalGroundLemma : Prop
  conclusion : globalGroundLemma

structure DynamicalEndgameState where
  object : DynamicalAdmittedObject

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.globalGroundLemma

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse
