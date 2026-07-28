import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

structure NormalFormPackage (A : AdmissibleClass) where
  centerManifoldReduction : Prop
  resonanceCondition : Prop
  normalFormComputed : Prop

def NormalFormClosed (N : NormalFormPackage A) : Prop :=
  N.centerManifoldReduction ∧ N.resonanceCondition ∧ N.normalFormComputed

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse