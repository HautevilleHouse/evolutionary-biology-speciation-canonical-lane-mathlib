import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure SpeciationRateModel where
  extinctionRate : Float
  speciationRate : Float
  netDiversification : Float
  carryingCapacity : Nat

theorem diversification_rate (speciation extinction : Float) : Float := by
  exact speciation - extinction

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse