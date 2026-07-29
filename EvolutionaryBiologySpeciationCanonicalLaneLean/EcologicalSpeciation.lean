import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure EcologicalSpeciationPackage where
  divergentSelection : Prop
  ecologicalNicheDifference : Prop
  resourceCompetition : Prop
  habitatDifferentiation : Prop
  reproductiveCharacterDisplacement : Prop
  ecologicalReproductiveIsolation : Prop

structure EcologicalSpeciationEvidence (E : EcologicalSpeciationPackage) where
  divergentSelectionClosed : E.divergentSelection
  ecologicalNicheDifferenceClosed : E.ecologicalNicheDifference
  resourceCompetitionClosed : E.resourceCompetition
  habitatDifferentiationClosed : E.habitatDifferentiation
  reproductiveCharacterDisplacementClosed : E.reproductiveCharacterDisplacement
  ecologicalReproductiveIsolationClosed : E.ecologicalReproductiveIsolation

def EcologicalSpeciationClosed (E : EcologicalSpeciationPackage) : Prop :=
  E.divergentSelection ∧ E.ecologicalNicheDifference ∧ E.resourceCompetition ∧ E.habitatDifferentiation ∧ E.reproductiveCharacterDisplacement ∧ E.ecologicalReproductiveIsolation

theorem ecological_speciation_closed_from_evidence (E : EcologicalSpeciationPackage) (Ev : EcologicalSpeciationEvidence E) : EcologicalSpeciationClosed E := by
  refine And.intro Ev.divergentSelectionClosed (And.intro Ev.ecologicalNicheDifferenceClosed (And.intro Ev.resourceCompetitionClosed (And.intro Ev.habitatDifferentiationClosed (And.intro Ev.reproductiveCharacterDisplacementClosed Ev.ecologicalReproductiveIsolationClosed))))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse