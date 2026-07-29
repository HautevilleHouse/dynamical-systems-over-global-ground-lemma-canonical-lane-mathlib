import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean

structure DynamicalSystemState where
  carrier : Type
  topology : TopologicalSpace carrier
  dynamics : carrier → carrier → carrier
  groundLemmaAdmitted : Prop
  invariantMeasure : Prop

def DynamicalSystemWitnessClosed (O : DynamicalSystemState) : Prop :=
  O.groundLemmaAdmitted

end DynamicalSystemsOverGlobalGroundLemmaCanonicalLaneLean
end HautevilleHouse