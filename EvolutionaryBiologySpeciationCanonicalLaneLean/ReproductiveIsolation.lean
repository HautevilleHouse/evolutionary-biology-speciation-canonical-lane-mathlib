import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure ReproductiveIsolationPackage where
  prezygoticBarriers : List String
  postzygoticBarriers : List String
  geneticDistance : Float
  hybridFitness : Float
  geneFlowReduced : Prop
  reinforcementObserved : Prop
  barriersComplete : Prop

structure ReproductiveIsolationEvidence (R : ReproductiveIsolationPackage) where
  geneticDistancePositive : R.geneticDistance > 0
  hybridFitnessLow : R.hybridFitness < 1.0
  geneFlowReducedClosed : R.geneFlowReduced
  barriersCompleteClosed : R.barriersComplete

def ReproductiveIsolationClosed (R : ReproductiveIsolationPackage) : Prop :=
  R.geneticDistance > 0 ∧ R.hybridFitness < 1.0 ∧
  R.geneFlowReduced ∧ R.barriersComplete

theorem reproductive_isolation_closed_from_evidence
    (R : ReproductiveIsolationPackage) (E : ReproductiveIsolationEvidence R) :
    ReproductiveIsolationClosed R := by
  exact And.intro E.geneticDistancePositive
    (And.intro E.hybridFitnessLow
      (And.intro E.geneFlowReducedClosed E.barriersCompleteClosed))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse