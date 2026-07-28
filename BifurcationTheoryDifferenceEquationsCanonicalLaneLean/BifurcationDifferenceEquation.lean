import canonicalLaneMathlib.AdmissibleClass
import BifurcationTheoryDifferenceEquationsCanonicalLaneLean.BifurcationParameterSpace

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

structure DifferenceEquationFamily {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    (O : BifurcationAdmittedObject P S) where
  initialCondition : S.stateType
  iterateCount : ℕ
  solution : ℕ → S.stateType
  solutionDependence : O.map O.bifurcationPoint (initialCondition) = solution 0
  iterMapDefined : ∀ n : ℕ, solution (n+1) = O.map O.bifurcationPoint (solution n)

structure DifferenceEquationEvidence {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} (F : DifferenceEquationFamily O) where
  solutionDependenceClosed : F.solutionDependence
  iterMapDefinedClosed : F.iterMapDefined

def DifferenceEquationFamilyClosed {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} (F : DifferenceEquationFamily O) : Prop :=
  F.solutionDependence ∧ F.iterMapDefined

theorem difference_equation_family_closed_from_evidence
    {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} (F : DifferenceEquationFamily O)
    (E : DifferenceEquationEvidence F) : DifferenceEquationFamilyClosed F :=
  And.intro E.solutionDependenceClosed E.iterMapDefinedClosed

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse
