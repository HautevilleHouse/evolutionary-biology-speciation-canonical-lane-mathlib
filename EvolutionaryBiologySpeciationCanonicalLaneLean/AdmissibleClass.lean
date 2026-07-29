import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure AdmissibleClass where
  speciesPair : (String × String)
  reproductiveIsolationEstablished : Prop
  ecologicalDivergenceEstablished : Prop
  geneticBasisEstablished : Prop
  hybridInviabilityOrSterility : Prop
  gatewayWitness : reproductiveIsolationEstablished ∨ ecologicalDivergenceEstablished

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse