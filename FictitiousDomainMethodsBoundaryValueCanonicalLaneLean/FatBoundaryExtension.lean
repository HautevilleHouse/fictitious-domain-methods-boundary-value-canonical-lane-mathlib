import canonicalLaneMathlib.AdmissibleClass
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainPDE

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure FatBoundaryExtensionPackage {F : FictitiousDomainPDEPackage} where
  fatBoundaryWidth : ℝ
  smoothedCoefficient : (fictitiousDomain F → ℝ) → (fictitiousDomain F → ℝ)
  regularization : Prop
  convergenceRate : Prop
  extensionConsistency : Prop

structure FatBoundaryExtensionEvidence {F : FictitiousDomainPDEPackage}
    (B : FatBoundaryExtensionPackage F) where
  regularizationClosed : B.regularization
  convergenceRateClosed : B.convergenceRate
  extensionConsistencyClosed : B.extensionConsistency

def FatBoundaryExtensionClosed {F : FictitiousDomainPDEPackage}
    (B : FatBoundaryExtensionPackage F) : Prop :=
  B.regularization ∧ B.convergenceRate ∧ B.extensionConsistency

theorem fat_boundary_extension_closed_from_evidence
    {F : FictitiousDomainPDEPackage} (B : FatBoundaryExtensionPackage F)
    (E : FatBoundaryExtensionEvidence B) : FatBoundaryExtensionClosed B := by
  exact And.intro E.regularizationClosed (And.intro E.convergenceRateClosed E.extensionConsistencyClosed)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
