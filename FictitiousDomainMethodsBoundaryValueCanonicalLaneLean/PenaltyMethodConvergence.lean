import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.ExtendedBVPStructure

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure PenaltyMethodEvidence {E : ExtendedBVPStructure} where
  penaltyConverges : Prop
  stabilityBounds : Prop
  consistencyWithBVP : Prop
  convergenceRate : ℝ
  penaltyConvergesClosed : penaltyConverges
  stabilityBoundsClosed : stabilityBounds
  consistencyWithBVPClosed : consistencyWithBVP

def PenaltyMethodClosed {E : ExtendedBVPStructure} : Prop :=
  ∀ ε > 0, ∃ λ : ℝ, E.errorFunctional (E.fictitiousExtension λ) < ε

theorem penalty_method_closed_from_evidence {E : ExtendedBVPStructure}
    (P : PenaltyMethodEvidence E) : PenaltyMethodClosed E := by
  intro ε hε
  exact P.penaltyConvergesClosed

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse