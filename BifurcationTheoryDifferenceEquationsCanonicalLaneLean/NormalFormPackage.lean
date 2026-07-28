import BifurcationCanonicalLaneLean.CenterManifoldPackage

namespace HautevilleHouse
namespace BifurcationCanonicalLaneLean

structure NormalFormPackage {F : FixedPointPackage} {B : BifurcationPackage F} (C : CenterManifoldPackage B) where
  normalFormComputed : Prop
  resonantTerms : Prop
  topologicalEquivalence : Prop

def NormalFormClosed {F : FixedPointPackage} {B : BifurcationPackage F} {C : CenterManifoldPackage B} (N : NormalFormPackage C) : Prop :=
  N.normalFormComputed ∧ N.resonantTerms ∧ N.topologicalEquivalence

structure NormalFormEvidence {F : FixedPointPackage} {B : BifurcationPackage F} {C : CenterManifoldPackage B} (N : NormalFormPackage C) where
  normalFormComputedClosed : N.normalFormComputed
  resonantTermsClosed : N.resonantTerms
  topologicalEquivalenceClosed : N.topologicalEquivalence

theorem normal_form_closed_from_evidence {F : FixedPointPackage} {B : BifurcationPackage F} {C : CenterManifoldPackage B} (N : NormalFormPackage C) (E : NormalFormEvidence N) : NormalFormClosed N :=
  And.intro E.normalFormComputedClosed (And.intro E.resonantTermsClosed E.topologicalEquivalenceClosed)

end BifurcationCanonicalLaneLean
end HautevilleHouse
