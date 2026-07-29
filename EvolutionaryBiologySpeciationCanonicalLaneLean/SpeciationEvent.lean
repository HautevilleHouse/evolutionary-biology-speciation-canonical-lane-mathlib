import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure SpeciationEventPackage where
  ancestralPopulation : Set String
  daughterPopulations : List (Set String)
  isolatingMechanism : String
  timeSinceDivergence : ℝ
  monophylyConfirmed : Prop

structure SpeciationEventEvidence (S : SpeciationEventPackage) where
  ancestralNonempty : Set.Nonempty S.ancestralPopulation
  daughterNonempty : ∀ (d : Set String), d ∈ S.daughterPopulations → Set.Nonempty d
  isolatingMechanismDefined : S.isolatingMechanism ≠ ""
  timePositive : S.timeSinceDivergence > 0
  monophylyConfirmedClosed : S.monophylyConfirmed

def SpeciationEventClosed (S : SpeciationEventPackage) : Prop :=
  Set.Nonempty S.ancestralPopulation ∧
  (∀ (d : Set String), d ∈ S.daughterPopulations → Set.Nonempty d) ∧
  S.isolatingMechanism ≠ "" ∧ S.timeSinceDivergence > 0 ∧ S.monophylyConfirmed

theorem speciation_event_closed_from_evidence (S : SpeciationEventPackage)
    (E : SpeciationEventEvidence S) : SpeciationEventClosed S := by
  exact And.intro E.ancestralNonempty
    (And.intro E.daughterNonempty
      (And.intro E.isolatingMechanismDefined
        (And.intro E.timePositive E.monophylyConfirmedClosed)))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse