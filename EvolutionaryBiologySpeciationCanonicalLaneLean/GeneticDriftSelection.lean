import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure GeneticDriftSelectionPackage where
  effectivePopulationSize : Nat
  selectionCoefficient : Float
  dominanceCoefficient : Float
  mutationRate : Float
  initialAlleleFrequency : Float
  alleleFrequencyTrajectory : List Float
  fixationTime : Nat
  selectionDominates : Prop
  driftDominates : Prop

structure GeneticDriftSelectionEvidence (G : GeneticDriftSelectionPackage) where
  populationSizeFinite : G.effectivePopulationSize > 0
  selectionCoefficientNonzero : G.selectionCoefficient ≠ 0
  fixationTimeFinite : G.fixationTime < 1000000
  selectionOrDriftDominates : G.selectionDominates ∨ G.driftDominates

def GeneticDriftSelectionClosed (G : GeneticDriftSelectionPackage) : Prop :=
  G.effectivePopulationSize > 0 ∧ G.selectionCoefficient ≠ 0 ∧
  G.fixationTime < 1000000 ∧ (G.selectionDominates ∨ G.driftDominates)

theorem genetic_drift_selection_closed_from_evidence
    (G : GeneticDriftSelectionPackage) (E : GeneticDriftSelectionEvidence G) :
    GeneticDriftSelectionClosed G := by
  exact And.intro E.populationSizeFinite
    (And.intro E.selectionCoefficientNonzero
      (And.intro E.fixationTimeFinite E.selectionOrDriftDominates))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse