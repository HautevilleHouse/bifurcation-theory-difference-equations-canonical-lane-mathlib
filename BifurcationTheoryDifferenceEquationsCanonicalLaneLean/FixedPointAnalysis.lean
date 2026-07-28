import canonicalLaneMathlib.AdmissibleClass
import BifurcationTheoryDifferenceEquationsCanonicalLaneLean.DifferenceEquationSystem

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

structure FixedPointAnalysisPackage {S : DifferenceEquationSystem} where
  fixedPointExists : Prop
  stabilityType : Prop
  eigenvalueCondition : Prop

structure FixedPointAnalysisEvidence {S : DifferenceEquationSystem}
    (F : FixedPointAnalysisPackage S) where
  fixedPointExistsClosed : F.fixedPointExists
  stabilityTypeClosed : F.stabilityType
  eigenvalueConditionClosed : F.eigenvalueCondition

def FixedPointAnalysisClosed {S : DifferenceEquationSystem}
    (F : FixedPointAnalysisPackage S) : Prop :=
  F.fixedPointExists ∧ F.stabilityType ∧ F.eigenvalueCondition

theorem fixed_point_analysis_closed_from_evidence {S : DifferenceEquationSystem}
    (F : FixedPointAnalysisPackage S) (E : FixedPointAnalysisEvidence F) :
    FixedPointAnalysisClosed F := by
  exact And.intro E.fixedPointExistsClosed
    (And.intro E.stabilityTypeClosed E.eigenvalueConditionClosed)

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse