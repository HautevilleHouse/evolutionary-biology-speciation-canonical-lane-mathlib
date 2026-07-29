import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure SpeciationGenomicsPackage where
  genomeSize : Nat
  divergenceTime : Float
  nucleotideDiversity : Float
  fixationIndex : Float
  numberOfGenesUnderSelection : Nat
  genomicIslands : List String
  speciationGenesIdentified : List String
  genomicBasisEstablished : Prop
  geneFlowStopped : Prop

structure SpeciationGenomicsEvidence (S : SpeciationGenomicsPackage) where
  genomicBasisEstablishedClosed : S.genomicBasisEstablished
  geneFlowStoppedClosed : S.geneFlowStopped
  numberOfGenesPositive : S.numberOfGenesUnderSelection > 0

def SpeciationGenomicsClosed (S : SpeciationGenomicsPackage) : Prop :=
  S.genomicBasisEstablished ∧ S.geneFlowStopped ∧ S.numberOfGenesUnderSelection > 0

theorem speciation_genomics_closed_from_evidence
    (S : SpeciationGenomicsPackage) (E : SpeciationGenomicsEvidence S) :
    SpeciationGenomicsClosed S := by
  exact And.intro E.genomicBasisEstablishedClosed
    (And.intro E.geneFlowStoppedClosed E.numberOfGenesPositive)

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse