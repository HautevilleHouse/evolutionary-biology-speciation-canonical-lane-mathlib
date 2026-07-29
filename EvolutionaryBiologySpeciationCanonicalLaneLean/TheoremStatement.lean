import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "evolutionary-biology-speciation-canonical-lane",
    theoremName := "Admissible Speciation Closure",
    theoremObject := "Evolutionary Biology Speciation",
    classicalBoundary := "Classical boundary carried through formalization",
    manifoldConstrainedStatement := "Speciation dynamics constrained by admissible class",
    certificateLane := "speciation_constrained",
    carriedRemainder := "Remaining open classical conditions"
  }

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse