import EvolutionaryBiologySpeciationCanonicalLaneLean.ReproductiveIsolation

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  payoffMatrix : List (List ℝ)
  strategySet : List String
  replicatorDynamics : Prop
  evolutionaryStableStrategy : Prop
  convergence : Prop

structure EvolutionaryGameTheoryEvidence (G : EvolutionaryGameTheoryPackage) where
  replicatorDynamicsClosed : G.replicatorDynamics
  evolutionaryStableStrategyClosed : G.evolutionaryStableStrategy
  convergenceClosed : G.convergence

def EvolutionaryGameTheoryClosed (G : EvolutionaryGameTheoryPackage) : Prop :=
  G.replicatorDynamics ∧ G.evolutionaryStableStrategy ∧ G.convergence

theorem evolutionary_game_theory_closed_from_evidence
    (G : EvolutionaryGameTheoryPackage) (E : EvolutionaryGameTheoryEvidence G) :
    EvolutionaryGameTheoryClosed G := by
  exact And.intro E.replicatorDynamicsClosed
    (And.intro E.evolutionaryStableStrategyClosed E.convergenceClosed)

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse