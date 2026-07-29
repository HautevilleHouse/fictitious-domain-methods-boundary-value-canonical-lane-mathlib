import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure FictitiousDomainSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmissibleDomainObject where
  space : FictitiousDomainSpace
  boundaryLipschitz : Prop
  interiorRegularity : Prop
  extensionOperatorBounded : Prop
  conclusion : extensionOperatorBounded

structure FictitiousDomainEndgameState where
  object : AdmissibleDomainObject

def DomainWitnessClosed (O : AdmissibleDomainObject) : Prop :=
  O.extensionOperatorBounded

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse
