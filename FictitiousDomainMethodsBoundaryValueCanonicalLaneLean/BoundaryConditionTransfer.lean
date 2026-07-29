import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.ExtendedBVPStructure

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure BoundaryConditionTransfer {E : ExtendedBVPStructure} where
  compatibleExtension : Prop
  traceMatchesOriginal : Prop
  liftingOperatorDefined : Prop
  extensionPreservesBC : Prop
  compatibleExtensionClosed : compatibleExtension
  traceMatchesOriginalClosed : traceMatchesOriginal
  liftingOperatorDefinedClosed : liftingOperatorDefined
  extensionPreservesBCClosed : extensionPreservesBC

def TransferClosed {E : ExtendedBVPStructure} (T : BoundaryConditionTransfer E) : Prop :=
  T.compatibleExtension ∧ T.traceMatchesOriginal ∧ T.liftingOperatorDefined ∧ T.extensionPreservesBC

theorem transfer_closed_from_evidence {E : ExtendedBVPStructure}
    (T : BoundaryConditionTransfer E) : TransferClosed T := by
  exact And.intro T.compatibleExtensionClosed
    (And.intro T.traceMatchesOriginalClosed
      (And.intro T.liftingOperatorDefinedClosed T.extensionPreservesBCClosed))

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse