import canonicalLaneMathlib.AdmissibleClass
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainPDE

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure FiniteElementDiscretizationPackage {F : FictitiousDomainPDEPackage} where
  meshFamily : Type u
  finiteElementSpace : (mesh : meshFamily) → Type v
  discreteSystem : (mesh : meshFamily) → Prop
  stability : Prop
  errorEstimate : (mesh : meshFamily) → ℝ
  convergence : Prop

structure FiniteElementDiscretizationEvidence {F : FictitiousDomainPDEPackage}
    (D : FiniteElementDiscretizationPackage F) where
  stabilityClosed : D.stability
  convergenceClosed : D.convergence

def FiniteElementDiscretizationClosed {F : FictitiousDomainPDEPackage}
    (D : FiniteElementDiscretizationPackage F) : Prop :=
  D.stability ∧ D.convergence

theorem finite_element_discretization_closed_from_evidence
    {F : FictitiousDomainPDEPackage} (D : FiniteElementDiscretizationPackage F)
    (E : FiniteElementDiscretizationEvidence D) : FiniteElementDiscretizationClosed D := by
  exact And.intro E.stabilityClosed E.convergenceClosed

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
