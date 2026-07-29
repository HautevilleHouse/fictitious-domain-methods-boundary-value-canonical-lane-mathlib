import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure ExtendedBVPStructure where
  originalDomain : Type u
  fictitiousDomain : Type v
  pdeOperator : (originalDomain → ℝ) → (originalDomain → ℝ)
  boundaryCondition : (originalDomain → ℝ) → Prop
  fictitiousExtension : (originalDomain → ℝ) → (fictitiousDomain → ℝ)
  penaltyParameter : ℝ
  errorFunctional : (originalDomain → ℝ) → ℝ

def ExtendedBVPClosed (E : ExtendedBVPStructure) : Prop :=
  ∀ (u : originalDomain → ℝ), E.boundaryCondition u → E.errorFunctional u = 0

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse