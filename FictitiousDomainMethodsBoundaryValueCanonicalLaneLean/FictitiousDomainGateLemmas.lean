import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainBridgeLemmas

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

def gateClosed (A : FictitiousDomainAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FictitiousDomainAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse