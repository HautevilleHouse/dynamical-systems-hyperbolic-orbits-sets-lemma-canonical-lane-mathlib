import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmissibleClass where
  object : PoincareAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def AdmittedClosure (A : AdmissibleClass) : Prop :=
  PoincareWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse