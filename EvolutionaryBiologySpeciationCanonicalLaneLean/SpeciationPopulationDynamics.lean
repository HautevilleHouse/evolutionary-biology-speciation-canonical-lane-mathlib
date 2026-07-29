import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure PopulationDynamicsPackage where
  populationSize : Nat
  selectionCoefficient : Float
  mutationRate : Float
  migrationRate : Float
  carryingCapacity : Nat
  initialGenotypeFrequencies : List Float
  fitnessLandscape : List Float
  evolutionaryEquilibrium : Prop
  equilibriumReached : equilibriumReached

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  carryingCapacityPositive : P.carryingCapacity > 0
  selectionCoefficientFinite : P.selectionCoefficient < Float.inf
  mutationRateNonnegative : P.mutationRate ≥ 0
  equilibriumReachedClosed : P.equilibriumReached

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.carryingCapacity > 0 ∧ P.selectionCoefficient < Float.inf ∧
  P.mutationRate ≥ 0 ∧ P.equilibriumReached

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.carryingCapacityPositive
    (And.intro E.selectionCoefficientFinite
      (And.intro E.mutationRateNonnegative E.equilibriumReachedClosed))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse