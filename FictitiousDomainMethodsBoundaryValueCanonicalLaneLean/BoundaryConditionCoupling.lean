import canonicalLaneMathlib.AdmissibleClass
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainPDE

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure BoundaryConditionCouplingPackage {P : FictitiousDomainPDEPackage}
    (Q : FictitiousDomainPDEPackage) where
  physicalBoundaryCondition : Prop
  fictitiousBoundaryCondition : Prop
  couplingLaw : Prop
  consistencyAcrossDomains : Prop

structure BoundaryConditionCouplingEvidence {P : FictitiousDomainPDEPackage}
    {Q : FictitiousDomainPDEPackage} (C : BoundaryConditionCouplingPackage Q) where
  physicalBoundaryConditionClosed : C.physicalBoundaryCondition
  fictitiousBoundaryConditionClosed : C.fictitiousBoundaryCondition
  couplingLawClosed : C.couplingLaw
  consistencyAcrossDomainsClosed : C.consistencyAcrossDomains

def BoundaryConditionCouplingClosed {P : FictitiousDomainPDEPackage}
    {Q : FictitiousDomainPDEPackage} (C : BoundaryConditionCouplingPackage Q) : Prop :=
  C.physicalBoundaryCondition ∧ C.fictitiousBoundaryCondition ∧
  C.couplingLaw ∧ C.consistencyAcrossDomains

theorem boundary_condition_coupling_closed_from_evidence {P : FictitiousDomainPDEPackage}
    {Q : FictitiousDomainPDEPackage} (C : BoundaryConditionCouplingPackage Q)
    (E : BoundaryConditionCouplingEvidence C) : BoundaryConditionCouplingClosed C :=
  And.intro E.physicalBoundaryConditionClosed
    (And.intro E.fictitiousBoundaryConditionClosed
      (And.intro E.couplingLawClosed E.consistencyAcrossDomainsClosed))

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
