import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainAdmissibleClass

/-!
# Penalty Method Package
-/

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure PenaltyMethodPackage where
  originalDomain : Type
  fictitiousDomain : Type
  penaltyParameter : Prop
  approximatedSolution : Prop
  convergenceRate : Prop
  stabilityAnalysis : Prop
  penaltyFunction : Type

structure PenaltyMethodEvidence (P : PenaltyMethodPackage) where
  penaltyParameterClosed : P.penaltyParameter
  convergenceRateClosed : P.convergenceRate
  stabilityAnalysisClosed : P.stabilityAnalysis

def PenaltyMethodClosed (P : PenaltyMethodPackage) : Prop :=
  P.penaltyParameter ∧ P.convergenceRate ∧ P.stabilityAnalysis

theorem penalty_method_closed_from_evidence
    (P : PenaltyMethodPackage) (E : PenaltyMethodEvidence P) :
    PenaltyMethodClosed P := by
  exact And.intro E.penaltyParameterClosed
    (And.intro E.convergenceRateClosed E.stabilityAnalysisClosed)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse