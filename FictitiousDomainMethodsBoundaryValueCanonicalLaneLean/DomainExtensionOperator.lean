import canonicalLaneMathlib.AdmissibleClass
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.BoundaryConditionCoupling

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure DomainExtensionOperatorPackage {P : FictitiousDomainPDEPackage}
    {C : BoundaryConditionCouplingPackage P} where
  extensionMapping : Type u
  regularityPreserved : Prop
  compactSupport : Prop
  stabilityUnderDiscretization : Prop

structure DomainExtensionOperatorEvidence {P : FictitiousDomainPDEPackage}
    {C : BoundaryConditionCouplingPackage P}
    (D : DomainExtensionOperatorPackage C) where
  regularityPreservedClosed : D.regularityPreserved
  compactSupportClosed : D.compactSupport
  stabilityUnderDiscretizationClosed : D.stabilityUnderDiscretization

def DomainExtensionOperatorClosed {P : FictitiousDomainPDEPackage}
    {C : BoundaryConditionCouplingPackage P}
    (D : DomainExtensionOperatorPackage C) : Prop :=
  D.regularityPreserved ∧ D.compactSupport ∧ D.stabilityUnderDiscretization

theorem domain_extension_operator_closed_from_evidence {P : FictitiousDomainPDEPackage}
    {C : BoundaryConditionCouplingPackage P}
    (D : DomainExtensionOperatorPackage C)
    (E : DomainExtensionOperatorEvidence D) : DomainExtensionOperatorClosed D :=
  And.intro E.regularityPreservedClosed
    (And.intro E.compactSupportClosed E.stabilityUnderDiscretizationClosed)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
