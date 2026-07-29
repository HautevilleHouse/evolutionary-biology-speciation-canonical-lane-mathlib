import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.reproductiveIsolationEstablished ∧ A.geneticBasisEstablished

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.reproductiveIsolationEstablished A.geneticBasisEstablished

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse