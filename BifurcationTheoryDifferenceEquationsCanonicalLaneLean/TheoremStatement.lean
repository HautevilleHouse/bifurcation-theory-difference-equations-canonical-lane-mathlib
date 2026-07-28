import HautevilleHouse.BifurcationTheoryDifferenceEquationsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BifurcationTheoryDifferenceEquationsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "bifurcation-theory-difference-equations-canonical-lane",
  theoremName := "BifurcationClosure",
  theoremObject := "Admissible bifurcation analysis for discrete dynamical systems",
  classicalBoundary := "unrestricted classical closure remains open",
  manifoldConstrainedStatement := "constrained bifurcation closure internalized through admissible class and bridge/gate lemmas",
  certificateLane := "manifold_constrained",
  carriedRemainder := "bifurcation-theoretic remainder carried as open boundary"
}

end BifurcationTheoryDifferenceEquationsCanonicalLaneLean
end HautevilleHouse