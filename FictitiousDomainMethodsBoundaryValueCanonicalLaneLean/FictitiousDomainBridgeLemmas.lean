import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainAdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

def bridgeClosed (A : FictitiousDomainAdmissibleClass) : Prop :=
  A.object.extensionSatisfiesEquation ∧ A.object.convergenceToSolution

theorem bridge_from_admissible_class (A : FictitiousDomainAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse