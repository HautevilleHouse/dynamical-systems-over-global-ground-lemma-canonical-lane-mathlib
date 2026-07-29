import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure GlobalGroundAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  dynamics : space → space
  globalGroundLemma : Prop
  conclusion : globalGroundLemma

structure AdmissibleClass where
  object : GlobalGroundAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse