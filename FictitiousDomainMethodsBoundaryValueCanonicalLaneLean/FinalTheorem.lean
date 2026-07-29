import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainBridgeLemmas
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainGateLemmas

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

def ConstrainedFictitiousDomainClosure (A : FictitiousDomainAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fictitious_domain_endgame (A : FictitiousDomainAdmissibleClass) :
    ConstrainedFictitiousDomainClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse