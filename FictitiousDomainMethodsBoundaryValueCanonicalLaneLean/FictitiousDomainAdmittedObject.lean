import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure FictitiousDomainAdmittedObject where
  physicalDomain : Type u
  fictitiousDomain : Type v
  solutionExistence : Prop
  uniqueness : Prop
  stability : Prop
  conclusion : solutionExistence ∧ uniqueness ∧ stability

def FictitiousDomainWitnessClosed (O : FictitiousDomainAdmittedObject) : Prop :=
  O.solutionExistence ∧ O.uniqueness ∧ O.stability

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
