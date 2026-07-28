import canonicalLaneMathlib.AdmissibleClass
import BifurcationTheoryDifferenceEquationsCanonicalLaneLean.BifurcationFixedPointAnalysis

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

inductive BifurcationType : Type where
  | saddleNode
  | pitchfork
  | periodDoubling
  | transcritical
  | hopf
  deriving DecidableEq

structure BifurcationClassificationPackage {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} {F : DifferenceEquationFamily O}
    (FP : FixedPointPackage F) where
  bifurcationType : BifurcationType
  normalForm : Prop
  bifurcationCondition : Prop
  universalUnfolding : Prop

structure BifurcationClassificationEvidence {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} {F : DifferenceEquationFamily O}
    {FP : FixedPointPackage F} (BC : BifurcationClassificationPackage FP) where
  normalFormClosed : BC.normalForm
  bifurcationConditionClosed : BC.bifurcationCondition
  universalUnfoldingClosed : BC.universalUnfolding

def BifurcationClassificationClosed {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} {F : DifferenceEquationFamily O}
    {FP : FixedPointPackage F} (BC : BifurcationClassificationPackage FP) : Prop :=
  BC.normalForm ∧ BC.bifurcationCondition ∧ BC.universalUnfolding

theorem bifurcation_classification_closed_from_evidence
    {P : BifurcationParameterSpace} {S : BifurcationStateSpace}
    {O : BifurcationAdmittedObject P S} {F : DifferenceEquationFamily O}
    {FP : FixedPointPackage F} (BC : BifurcationClassificationPackage FP)
    (E : BifurcationClassificationEvidence BC) : BifurcationClassificationClosed BC :=
  And.intro E.normalFormClosed (And.intro E.bifurcationConditionClosed E.universalUnfoldingClosed)

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse
