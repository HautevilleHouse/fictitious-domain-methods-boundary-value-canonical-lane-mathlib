import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure AdmissibleClass where
  object : FictitiousDomainAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FictitiousDomainWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
