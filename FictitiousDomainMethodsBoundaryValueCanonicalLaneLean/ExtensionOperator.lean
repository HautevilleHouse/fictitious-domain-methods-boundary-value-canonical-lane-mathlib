import canonicalLaneMathlib.AdmissibleClass
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainDomain

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure ExtensionOperatorPackage where
  sourceSpace : FictitiousDomainSpace
  targetSpace : FictitiousDomainSpace
  boundaryMap : sourceSpace.carrier -> targetSpace.carrier
  extensionMap : (sourceSpace.carrier -> ℝ) -> (targetSpace.carrier -> ℝ)
  boundedLinear : Prop
  normPreserving : Prop
  operatorNorm : ℝ
  boundedLinearTerm : boundedLinear
  normPreservingTerm : normPreserving

structure ExtensionOperatorEvidence (E : ExtensionOperatorPackage) where
  boundedLinearClosed : E.boundedLinear
  normPreservingClosed : E.normPreserving

def ExtensionOperatorClosed (E : ExtensionOperatorPackage) : Prop :=
  E.boundedLinear ∧ E.normPreserving

theorem extension_operator_closed_from_evidence
    (E : ExtensionOperatorPackage) (Ev : ExtensionOperatorEvidence E) :
    ExtensionOperatorClosed E := by
  exact And.intro Ev.boundedLinearClosed Ev.normPreservingClosed

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
