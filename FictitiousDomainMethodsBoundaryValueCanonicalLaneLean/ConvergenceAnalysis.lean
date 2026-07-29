import canonicalLaneMathlib.AdmissibleClass
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainPDE

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure ErrorEstimatePackage where
  discretizationParameter : ℕ
  hConvergenceRate : ℝ
  exponent : ℕ
  regularityAssumption : Prop
  errorBound : Prop
  errorBoundTerm : errorBound

structure ConvergenceEvidence (E : ErrorEstimatePackage) where
  errorBoundClosed : E.errorBound
  regularityAssumptionClosed : E.regularityAssumption

def ConvergenceClosed (E : ErrorEstimatePackage) : Prop :=
  E.errorBound ∧ E.regularityAssumption

theorem convergence_closed_from_evidence
    (E : ErrorEstimatePackage) (Ev : ConvergenceEvidence E) :
    ConvergenceClosed E := by
  exact And.intro Ev.errorBoundClosed Ev.regularityAssumptionClosed

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
