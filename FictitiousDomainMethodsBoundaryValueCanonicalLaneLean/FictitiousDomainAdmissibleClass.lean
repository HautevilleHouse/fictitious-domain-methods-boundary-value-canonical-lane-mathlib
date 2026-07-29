import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure FictitiousDomainAdmittedObject where
  domain : Type
  boundary : Type
  boundaryTopology : TopologicalSpace boundary
  fictitiousExtension : Type
  extensionContinuous : Prop
  extensionSatisfiesEquation : Prop
  convergenceToSolution : Prop
  conclusion : extensionSatisfiesEquation ∧ convergenceToSolution

structure FictitiousDomainAdmissibleClass where
  object : FictitiousDomainAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : FictitiousDomainAdmissibleClass) : Prop :=
  (A.object.extensionSatisfiesEquation ∧ A.object.convergenceToSolution) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse