import BifurcationCanonicalLaneLean.NormalFormPackage

namespace HautevilleHouse
namespace BifurcationCanonicalLaneLean

structure StabilityPackage {F : FixedPointPackage} {B : BifurcationPackage F} {C : CenterManifoldPackage B} (N : NormalFormPackage C) where
  stabilityAnalysis : Prop
  bifurcationDiagram : Prop
  genericUnfolding : Prop

def StabilityClosed {F : FixedPointPackage} {B : BifurcationPackage F} {C : CenterManifoldPackage B} {N : NormalFormPackage C} (S : StabilityPackage N) : Prop :=
  S.stabilityAnalysis ∧ S.bifurcationDiagram ∧ S.genericUnfolding

structure StabilityEvidence {F : FixedPointPackage} {B : BifurcationPackage F} {C : CenterManifoldPackage B} {N : NormalFormPackage C} (S : StabilityPackage N) where
  stabilityAnalysisClosed : S.stabilityAnalysis
  bifurcationDiagramClosed : S.bifurcationDiagram
  genericUnfoldingClosed : S.genericUnfolding

theorem stability_closed_from_evidence {F : FixedPointPackage} {B : BifurcationPackage F} {C : CenterManifoldPackage B} {N : NormalFormPackage C} (S : StabilityPackage N) (E : StabilityEvidence S) : StabilityClosed S :=
  And.intro E.stabilityAnalysisClosed (And.intro E.bifurcationDiagramClosed E.genericUnfoldingClosed)

end BifurcationCanonicalLaneLean
end HautevilleHouse
