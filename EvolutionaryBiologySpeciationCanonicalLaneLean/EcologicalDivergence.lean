import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure EcologicalDivergencePackage where
  nicheDifference : Float
  resourceCompetition : Float
  habitatPreference : List String
  morphologicalDivergence : Float
  phenotypicPlasticity : Bool
  divergentSelection : Prop
  ecologicalSpeciation : Prop

structure EcologicalDivergenceEvidence (E : EcologicalDivergencePackage) where
  nicheDifferencePositive : E.nicheDifference > 0
  resourceCompetitionHigh : E.resourceCompetition > 0.5
  divergentSelectionClosed : E.divergentSelection
  ecologicalSpeciationClosed : E.ecologicalSpeciation

def EcologicalDivergenceClosed (E : EcologicalDivergencePackage) : Prop :=
  E.nicheDifference > 0 ∧ E.resourceCompetition > 0.5 ∧
  E.divergentSelection ∧ E.ecologicalSpeciation

theorem ecological_divergence_closed_from_evidence
    (E : EcologicalDivergencePackage) (Ev : EcologicalDivergenceEvidence E) :
    EcologicalDivergenceClosed E := by
  exact And.intro Ev.nicheDifferencePositive
    (And.intro Ev.resourceCompetitionHigh
      (And.intro Ev.divergentSelectionClosed Ev.ecologicalSpeciationClosed))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse