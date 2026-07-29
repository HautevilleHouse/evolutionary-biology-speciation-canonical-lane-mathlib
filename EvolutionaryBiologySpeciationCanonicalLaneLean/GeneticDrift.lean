import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure GeneticDriftPackage where
  populationSizeFinite : Prop
  alleleFrequency : Prop
  fixationProbability : Prop
  effectivePopulationSize : Prop
  wrightFisherModel : Prop
  neutralEvolution : Prop

structure GeneticDriftEvidence (G : GeneticDriftPackage) where
  populationSizeFiniteClosed : G.populationSizeFinite
  alleleFrequencyClosed : G.alleleFrequency
  fixationProbabilityClosed : G.fixationProbability
  effectivePopulationSizeClosed : G.effectivePopulationSize
  wrightFisherModelClosed : G.wrightFisherModel
  neutralEvolutionClosed : G.neutralEvolution

def GeneticDriftClosed (G : GeneticDriftPackage) : Prop :=
  G.populationSizeFinite ∧ G.alleleFrequency ∧ G.fixationProbability ∧ G.effectivePopulationSize ∧ G.wrightFisherModel ∧ G.neutralEvolution

theorem genetic_drift_closed_from_evidence (G : GeneticDriftPackage) (E : GeneticDriftEvidence G) : GeneticDriftClosed G := by
  refine And.intro E.populationSizeFiniteClosed (And.intro E.alleleFrequencyClosed (And.intro E.fixationProbabilityClosed (And.intro E.effectivePopulationSizeClosed (And.intro E.wrightFisherModelClosed E.neutralEvolutionClosed))))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse