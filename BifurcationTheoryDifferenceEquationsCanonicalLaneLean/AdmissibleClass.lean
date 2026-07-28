import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

structure BifurcationAdmittedObject where
  differenceEquation : Type u
  parameterSpace : Type v
  bifurcationPoint : Type w
  conclusion : Prop

structure AdmissibleClass where
  object : BifurcationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse