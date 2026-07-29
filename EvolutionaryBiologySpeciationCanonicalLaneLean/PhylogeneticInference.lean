import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure PhylogeneticTree where
  speciesList : List String
  branchLengths : List Float
  bootstrapSupport : Float
  monophyly : Prop

theorem tree_resolved (tree : PhylogeneticTree) : Prop := by
  exact tree.monophyly

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse