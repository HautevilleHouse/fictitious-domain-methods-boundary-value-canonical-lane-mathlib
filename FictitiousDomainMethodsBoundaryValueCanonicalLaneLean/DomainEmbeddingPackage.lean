import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainAdmissibleClass

/-!
# Domain Embedding Package
-/

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure DomainEmbeddingPackage where
  originalDomain : Type
  embeddingDomain : Type
  embeddingOperator : Type
  solutionContinuation : Prop
  boundaryTreatment : Prop
  regularity : Prop

structure DomainEmbeddingEvidence (P : DomainEmbeddingPackage) where
  solutionContinuationClosed : P.solutionContinuation
  boundaryTreatmentClosed : P.boundaryTreatment
  regularityClosed : P.regularity

def DomainEmbeddingClosed (P : DomainEmbeddingPackage) : Prop :=
  P.solutionContinuation ∧ P.boundaryTreatment ∧ P.regularity

theorem domain_embedding_closed_from_evidence
    (P : DomainEmbeddingPackage) (E : DomainEmbeddingEvidence P) :
    DomainEmbeddingClosed P := by
  exact And.intro E.solutionContinuationClosed
    (And.intro E.boundaryTreatmentClosed E.regularityClosed)

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse