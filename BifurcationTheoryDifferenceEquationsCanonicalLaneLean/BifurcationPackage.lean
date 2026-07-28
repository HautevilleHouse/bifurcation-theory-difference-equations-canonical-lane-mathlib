import BifurcationCanonicalLaneLean.FixedPointPackage

namespace HautevilleHouse
namespace BifurcationCanonicalLaneLean

structure BifurcationPackage (F : FixedPointPackage) where
  bifurcationParameter : F.paramSpace
  bifurcationPoint : F.phaseSpace
  nonhyperbolicity : Prop
  transversalityCondition : Prop
  bifurcationType : String
  bifurcationEquation : Prop

structure BifurcationEvidence {F : FixedPointPackage} (B : BifurcationPackage F) where
  nonhyperbolicityClosed : B.nonhyperbolicity
  transversalityConditionClosed : B.transversalityCondition
  bifurcationEquationClosed : B.bifurcationEquation

def BifurcationClosed {F : FixedPointPackage} (B : BifurcationPackage F) : Prop :=
  B.nonhyperbolicity ∧ B.transversalityCondition ∧ B.bifurcationEquation

theorem bifurcation_closed_from_evidence {F : FixedPointPackage} (B : BifurcationPackage F) (E : BifurcationEvidence B) : BifurcationClosed B :=
  And.intro E.nonhyperbolicityClosed (And.intro E.transversalityConditionClosed E.bifurcationEquationClosed)

end BifurcationCanonicalLaneLean
end HautevilleHouse
