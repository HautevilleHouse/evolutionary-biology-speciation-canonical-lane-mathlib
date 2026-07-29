import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.hybridInviabilityOrSterility

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.hybridInviabilityOrSterility

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse