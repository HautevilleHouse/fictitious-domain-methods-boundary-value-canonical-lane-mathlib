import FictitiousDomainMethodsBoundaryValueCanonicalLaneLean.FictitiousDomainFinalTheorem

namespace HautevilleHouse
namespace FictitiousDomainMethodsBoundaryValueCanonicalLaneLean

structure VariationalFormulation (Ω : Type) [NormedAddCommGroup Ω] where
  bilinearForm : Ω → Ω → ℝ
  linearFunctional : Ω → ℝ
  coercivity : Prop
  boundedness : Prop

def VariationalFormulationClosed (V : VariationalFormulation Ω) : Prop :=
  V.coercivity ∧ V.boundedness

theorem coercivity_boundedness_and (V : VariationalFormulation Ω) :
    V.coercivity ∧ V.boundedness := by
  exact And.intro V.coercivity V.boundedness

end FictitiousDomainMethodsBoundaryValueCanonicalLaneLean
end HautevilleHouse