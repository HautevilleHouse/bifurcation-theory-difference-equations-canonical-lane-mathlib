import canonicalLaneMathlib.AdmissibleClass
import BifurcationTheoryDifferenceEquationsCanonicalLaneLean.BifurcationDifferenceEquation

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

structure FixedPointPackage {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} (F : DifferenceEquationFamily O) where
  fixedPoint : S.stateType
  fixedPointProperty : O.map O.bifurcationPoint fixedPoint = fixedPoint
  stabilityType : String
  linearization : Type
  eigenvalueCondition : Prop

structure FixedPointEvidence {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} {F : DifferenceEquationFamily O}
    (FP : FixedPointPackage F) where
  fixedPointPropertyClosed : FP.fixedPointProperty
  eigenvalueConditionClosed : FP.eigenvalueCondition

def FixedPointClosed {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} {F : DifferenceEquationFamily O}
    (FP : FixedPointPackage F) : Prop :=
  FP.fixedPointProperty ∧ FP.eigenvalueCondition

theorem fixed_point_closed_from_evidence
    {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} {F : DifferenceEquationFamily O}
    (FP : FixedPointPackage F) (E : FixedPointEvidence FP) : FixedPointClosed FP :=
  And.intro E.fixedPointPropertyClosed E.eigenvalueConditionClosed

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse
