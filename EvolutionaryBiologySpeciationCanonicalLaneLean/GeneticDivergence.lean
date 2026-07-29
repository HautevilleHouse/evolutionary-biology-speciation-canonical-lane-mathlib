import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure GeneticDivergencePackage where
  mutationRate : ℝ
  selectionCoefficient : ℝ
  geneFlow : ℝ
  effectivePopulationSize : ℕ
  fixationIndex : ℕ

structure GeneticDivergenceEvidence (G : GeneticDivergencePackage) where
  mutationRatePositive : G.mutationRate > 0
  selectionCoefficientNonzero : G.selectionCoefficient ≠ 0
  geneFlowFinite : G.geneFlow < 1
  effectivePopulationSizePositive : G.effectivePopulationSize > 0
  fixationIndexPositive : G.fixationIndex > 0

def GeneticDivergenceClosed (G : GeneticDivergencePackage) : Prop :=
  G.mutationRate > 0 ∧ G.selectionCoefficient ≠ 0 ∧ G.geneFlow < 1 ∧
  G.effectivePopulationSize > 0 ∧ G.fixationIndex > 0

theorem genetic_divergence_closed_from_evidence (G : GeneticDivergencePackage)
    (E : GeneticDivergenceEvidence G) : GeneticDivergenceClosed G := by
  exact And.intro E.mutationRatePositive
    (And.intro E.selectionCoefficientNonzero
      (And.intro E.geneFlowFinite
        (And.intro E.effectivePopulationSizePositive E.fixationIndexPositive)))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse