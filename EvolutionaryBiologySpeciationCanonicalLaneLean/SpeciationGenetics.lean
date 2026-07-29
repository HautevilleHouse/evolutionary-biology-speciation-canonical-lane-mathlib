import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure SpeciationGeneticsPackage (A : AdmissibleClass) where
  geneticDrift : Prop
  geneFlow : Prop
  mutationRate : Prop
  reproductiveIsolation : Prop
  hybridFitness : Prop

structure SpeciationGeneticsEvidence {A : AdmissibleClass} (S : SpeciationGeneticsPackage A) where
  geneticDriftClosed : S.geneticDrift
  geneFlowClosed : S.geneFlow
  mutationRateClosed : S.mutationRate
  reproductiveIsolationClosed : S.reproductiveIsolation
  hybridFitnessClosed : S.hybridFitness

def SpeciationGeneticsClosed {A : AdmissibleClass} (S : SpeciationGeneticsPackage A) : Prop :=
  S.geneticDrift ∧ S.geneFlow ∧ S.mutationRate ∧ S.reproductiveIsolation ∧ S.hybridFitness

theorem speciation_genetics_closed_from_evidence {A : AdmissibleClass} (S : SpeciationGeneticsPackage A) (E : SpeciationGeneticsEvidence S) : SpeciationGeneticsClosed S := by
  exact And.intro E.geneticDriftClosed (And.intro E.geneFlowClosed (And.intro E.mutationRateClosed (And.intro E.reproductiveIsolationClosed E.hybridFitnessClosed)))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse
