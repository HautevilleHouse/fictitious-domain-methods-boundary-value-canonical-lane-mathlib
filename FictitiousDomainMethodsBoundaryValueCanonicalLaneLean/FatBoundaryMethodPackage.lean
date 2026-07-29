import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainAdmissibleClass

/-!
# Fat Boundary Method Package
-/

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure FatBoundaryMethodPackage where
  originalDomain : Type
  fictitiousDomain : Type
  fatBoundaryLayer : Type
  solutionExtension : Type
  errorEstimates : Prop
  stability : Prop
  originalDomainMesh : Prop
  fictitiousDomainMesh : Prop
  couplingCondition : Prop

structure FatBoundaryMethodEvidence (P : FatBoundaryMethodPackage) where
  errorEstimatesClosed : P.errorEstimates
  stabilityClosed : P.stability
  couplingConditionClosed : P.couplingCondition

def FatBoundaryMethodClosed (P : FatBoundaryMethodPackage) : Prop :=
  P.errorEstimates ∧ P.stability ∧ P.couplingCondition

theorem fat_boundary_method_closed_from_evidence
    (P : FatBoundaryMethodPackage) (E : FatBoundaryMethodEvidence P) :
    FatBoundaryMethodClosed P := by
  exact And.intro E.errorEstimatesClosed
    (And.intro E.stabilityClosed E.couplingConditionClosed)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse