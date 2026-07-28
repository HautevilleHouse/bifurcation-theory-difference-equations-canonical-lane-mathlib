import BifurcationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationCanonicalLaneLean

structure FixedPointPackage where
  phaseSpace : Type u
  topology : TopologicalSpace phaseSpace
  paramSpace : Type v
  paramTopology : TopologicalSpace paramSpace
  dynamics : paramSpace → phaseSpace → phaseSpace
  fixedPoint : paramSpace → phaseSpace → Prop
  smoothDependence : Prop
  implicitFunctionApplicable : Prop

structure FixedPointEvidence (F : FixedPointPackage) where
  smoothDependenceClosed : F.smoothDependence
  implicitFunctionApplicableClosed : F.implicitFunctionApplicable

def FixedPointClosed (F : FixedPointPackage) : Prop :=
  F.smoothDependence ∧ F.implicitFunctionApplicable

theorem fixed_point_closed_from_evidence (F : FixedPointPackage) (E : FixedPointEvidence F) : FixedPointClosed F :=
  And.intro E.smoothDependenceClosed E.implicitFunctionApplicableClosed

end BifurcationCanonicalLaneLean
end HautevilleHouse
