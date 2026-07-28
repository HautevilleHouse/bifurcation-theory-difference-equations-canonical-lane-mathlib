import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

structure BifurcationParameterSpace where
  parameterType : Type u
  topology : TopologicalSpace parameterType
  connectedComponent : Prop
  bifurcationValue : parameterType

def BifurcationParameterSpaceClosed (P : BifurcationParameterSpace) : Prop :=
  P.connectedComponent

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse