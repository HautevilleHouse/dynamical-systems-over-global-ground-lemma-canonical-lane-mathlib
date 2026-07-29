import DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DynamicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse
