import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure FictitiousDomainPDEPackage where
  physicalDomain : Type u
  fictitiousDomain : Type v
  extensionOperator : Type w
  physicalPDE : Prop
  fictitiousPDE : Prop
  boundaryCoupling : Prop
  solutionMatchOnPhysical : Prop

structure FictitiousDomainPDEEvidence (P : FictitiousDomainPDEPackage) where
  physicalPDEClosed : P.physicalPDE
  fictitiousPDEClosed : P.fictitiousPDE
  boundaryCouplingClosed : P.boundaryCoupling
  solutionMatchOnPhysicalClosed : P.solutionMatchOnPhysical

def FictitiousDomainPDEClosed (P : FictitiousDomainPDEPackage) : Prop :=
  P.physicalPDE ∧ P.fictitiousPDE ∧ P.boundaryCoupling ∧ P.solutionMatchOnPhysical

theorem fictitious_domain_pde_closed_from_evidence (P : FictitiousDomainPDEPackage)
    (E : FictitiousDomainPDEEvidence P) : FictitiousDomainPDEClosed P :=
  And.intro E.physicalPDEClosed (And.intro E.fictitiousPDEClosed
    (And.intro E.boundaryCouplingClosed E.solutionMatchOnPhysicalClosed))

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
