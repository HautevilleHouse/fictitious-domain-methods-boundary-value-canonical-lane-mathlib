import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure FictitiousDomainExtension (Ω : Type) [TopologicalSpace Ω] where
  computationalDomain : Ω
  fictitiousDomain : Ω
  extensionOperator : (Ω → ℝ) → (Ω → ℝ)
  interfaceContinuity : Prop
  boundaryMatchOnTrueBoundary : Prop

structure ExtensionEvidence (E : FictitiousDomainExtension Ω) where
  interfaceContinuityClosed : E.interfaceContinuity
  boundaryMatchClosed : E.boundaryMatchOnTrueBoundary

def ExtensionClosed (E : FictitiousDomainExtension Ω) : Prop :=
  E.interfaceContinuity ∧ E.boundaryMatchOnTrueBoundary

theorem extension_closed_from_evidence (E : FictitiousDomainExtension Ω)
    (Ev : ExtensionEvidence E) : ExtensionClosed E :=
  And.intro Ev.interfaceContinuityClosed Ev.boundaryMatchClosed

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse