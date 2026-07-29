import canonicalLaneMathlib.AdmissibleClass
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainPDE

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure GhostPenaltyPackage where
  penaltyParameter : ℝ
  stabilizationTerm : Prop
  coercivity : Prop
  consistency : Prop
  penaltyParameterPositive : penaltyParameter > 0
  stabilizationTermTerm : stabilizationTerm
  coercivityTerm : coercivity
  consistencyTerm : consistency

structure GhostPenaltyEvidence (G : GhostPenaltyPackage) where
  stabilizationClosed : G.stabilizationTerm
  coercivityClosed : G.coercivity
  consistencyClosed : G.consistency

def GhostPenaltyClosed (G : GhostPenaltyPackage) : Prop :=
  G.stabilizationTerm ∧ G.coercivity ∧ G.consistency

theorem ghost_penalty_closed_from_evidence
    (G : GhostPenaltyPackage) (Ev : GhostPenaltyEvidence G) :
    GhostPenaltyClosed G := by
  exact And.intro Ev.stabilizationClosed
    (And.intro Ev.coercivityClosed Ev.consistencyClosed)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
