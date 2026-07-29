import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure PopulationDynamicsPackage (A : AdmissibleClass) where
  carryingCapacity : Prop
  growthRate : Prop
  selectionPressure : Prop
  reproductionRate : Prop
  populationStability : Prop

structure PopulationDynamicsEvidence {A : AdmissibleClass} (P : PopulationDynamicsPackage A) where
  carryingCapacityClosed : P.carryingCapacity
  growthRateClosed : P.growthRate
  selectionPressureClosed : P.selectionPressure
  reproductionRateClosed : P.reproductionRate
  populationStabilityClosed : P.populationStability

def PopulationDynamicsClosed {A : AdmissibleClass} (P : PopulationDynamicsPackage A) : Prop :=
  P.carryingCapacity ∧ P.growthRate ∧ P.selectionPressure ∧ P.reproductionRate ∧ P.populationStability

theorem population_dynamics_closed_from_evidence {A : AdmissibleClass} (P : PopulationDynamicsPackage A) (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.carryingCapacityClosed (And.intro E.growthRateClosed (And.intro E.selectionPressureClosed (And.intro E.reproductionRateClosed E.populationStabilityClosed)))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse
