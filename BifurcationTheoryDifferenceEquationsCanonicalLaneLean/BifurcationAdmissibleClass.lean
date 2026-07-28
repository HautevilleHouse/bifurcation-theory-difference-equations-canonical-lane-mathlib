import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

structure DifferenceEquation where
  stateSpace : Type
  parameterSpace : Type
  map : stateSpace × parameterSpace → stateSpace
  fixedPoint : stateSpace × parameterSpace
  fixedPointProperty : map fixedPoint = fixedPoint.1

structure BifurcationAdmittedObject where
  equation : DifferenceEquation
  bifurcationCondition : Prop
  conclusion : bifurcationCondition

structure AdmissibleClass where
  object : BifurcationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse