import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure NaturalSelectionPackage where
  fitnessDifference : Prop
  selectionCoefficient : Prop
  adaptiveTrait : Prop
  directionalSelection : Prop
  stabilizingSelection : Prop
  disruptiveSelection : Prop
  ecologicalNiche : Prop

structure NaturalSelectionEvidence (N : NaturalSelectionPackage) where
  fitnessDifferenceClosed : N.fitnessDifference
  selectionCoefficientClosed : N.selectionCoefficient
  adaptiveTraitClosed : N.adaptiveTrait
  directionalSelectionClosed : N.directionalSelection
  stabilizingSelectionClosed : N.stabilizingSelection
  disruptiveSelectionClosed : N.disruptiveSelection
  ecologicalNicheClosed : N.ecologicalNiche

def NaturalSelectionClosed (N : NaturalSelectionPackage) : Prop :=
  N.fitnessDifference ∧ N.selectionCoefficient ∧ N.adaptiveTrait ∧ N.directionalSelection ∧ N.stabilizingSelection ∧ N.disruptiveSelection ∧ N.ecologicalNiche

theorem natural_selection_closed_from_evidence (N : NaturalSelectionPackage) (E : NaturalSelectionEvidence N) : NaturalSelectionClosed N := by
  refine And.intro E.fitnessDifferenceClosed (And.intro E.selectionCoefficientClosed (And.intro E.adaptiveTraitClosed (And.intro E.directionalSelectionClosed (And.intro E.stabilizingSelectionClosed (And.intro E.disruptiveSelectionClosed E.ecologicalNicheClosed)))))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse