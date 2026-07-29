import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainAdmissibleClass

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

def fictitiousDomainProjection : Projection FictitiousDomainAdmissibleClass := {
  toFun := id
  idempotent := by intro x; rfl
}

theorem projection_idempotent (x : FictitiousDomainAdmissibleClass) :
    fictitiousDomainProjection.toFun (fictitiousDomainProjection.toFun x) = fictitiousDomainProjection.toFun x := by
  rfl

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse