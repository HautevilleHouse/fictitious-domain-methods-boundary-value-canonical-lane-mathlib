import canonicalLaneMathlib.AdmissibleClass
import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.DomainExtensionOperator

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure ConvergenceAndErrorAnalysisPackage {P : FictitiousDomainPDEPackage}
    {C : BoundaryConditionCouplingPackage P}
    {D : DomainExtensionOperatorPackage C} where
  discretizationScheme : Type u
  errorEstimates : Prop
  convergenceRate : Prop
  stabilityCondition : Prop

structure ConvergenceAndErrorAnalysisEvidence {P : FictitiousDomainPDEPackage}
    {C : BoundaryConditionCouplingPackage P}
    {D : DomainExtensionOperatorPackage C}
    (A : ConvergenceAndErrorAnalysisPackage D) where
  errorEstimatesClosed : A.errorEstimates
  convergenceRateClosed : A.convergenceRate
  stabilityConditionClosed : A.stabilityCondition

def ConvergenceAndErrorAnalysisClosed {P : FictitiousDomainPDEPackage}
    {C : BoundaryConditionCouplingPackage P}
    {D : DomainExtensionOperatorPackage C}
    (A : ConvergenceAndErrorAnalysisPackage D) : Prop :=
  A.errorEstimates ∧ A.convergenceRate ∧ A.stabilityCondition

theorem convergence_and_error_analysis_closed_from_evidence {P : FictitiousDomainPDEPackage}
    {C : BoundaryConditionCouplingPackage P}
    {D : DomainExtensionOperatorPackage C}
    (A : ConvergenceAndErrorAnalysisPackage D)
    (E : ConvergenceAndErrorAnalysisEvidence A) : ConvergenceAndErrorAnalysisClosed A :=
  And.intro E.errorEstimatesClosed
    (And.intro E.convergenceRateClosed E.stabilityConditionClosed)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
