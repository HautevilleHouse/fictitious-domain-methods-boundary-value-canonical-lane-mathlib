import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure FictitiousDomainSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FictitiousDomainAdmittedObject where
  domain : FictitiousDomainSpace
  boundaryConditionSatisfied : Prop
  fictitiousDomainSolutionExists : Prop
  conclusion : fictitiousDomainSolutionExists

def FictitiousDomainWitnessClosed (O : FictitiousDomainAdmittedObject) : Prop :=
  O.fictitiousDomainSolutionExists

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse