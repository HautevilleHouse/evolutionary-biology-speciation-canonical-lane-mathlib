import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure AlleleFrequencies where
  locus : String
  population1 : Float
  population2 : Float
  divergence : Float

theorem drift_divergence (pop1 pop2 : Float) (t : Nat) : Float := by
  sorry

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse