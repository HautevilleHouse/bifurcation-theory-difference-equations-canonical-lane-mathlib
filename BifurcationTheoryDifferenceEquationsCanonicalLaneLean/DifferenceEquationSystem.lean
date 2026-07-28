import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

structure DifferenceEquationSystem (P : BifurcationParameterSpace) where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  parameterValue : P.parameterType
  map : stateSpace → stateSpace
  fixedPoint : stateSpace
  stabilityCondition : Prop

structure DifferenceEquationEvidence (P : BifurcationParameterSpace) (D : DifferenceEquationSystem P) where
  fixedPointAttracting : D.stabilityCondition
  parameterBifurcationValue : D.parameterValue = P.bifurcationValue

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse