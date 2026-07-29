import canonicalLaneMathlib.AdmissibleClass
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FictitiousDomainWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
