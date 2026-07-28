import BifurcationCanonicalLaneLean.BifurcationPackage

namespace HautevilleHouse
namespace BifurcationCanonicalLaneLean

structure CenterManifoldPackage {F : FixedPointPackage} (B : BifurcationPackage F) where
  centerManifoldExists : Prop
  reductionPrinciple : Prop
  dynamicsOnCenterManifold : Prop
  approximationOrder : Nat

structure CenterManifoldEvidence {F : FixedPointPackage} {B : BifurcationPackage F} (C : CenterManifoldPackage B) where
  centerManifoldExistsClosed : C.centerManifoldExists
  reductionPrincipleClosed : C.reductionPrinciple
  dynamicsOnCenterManifoldClosed : C.dynamicsOnCenterManifold

def CenterManifoldClosed {F : FixedPointPackage} {B : BifurcationPackage F} (C : CenterManifoldPackage B) : Prop :=
  C.centerManifoldExists ∧ C.reductionPrinciple ∧ C.dynamicsOnCenterManifold

theorem center_manifold_closed_from_evidence {F : FixedPointPackage} {B : BifurcationPackage F} (C : CenterManifoldPackage B) (E : CenterManifoldEvidence C) : CenterManifoldClosed C :=
  And.intro E.centerManifoldExistsClosed (And.intro E.reductionPrincipleClosed E.dynamicsOnCenterManifoldClosed)

end BifurcationCanonicalLaneLean
end HautevilleHouse
