import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure SpeciationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SpeciationAdmittedObject where
  space : SpeciationSpace
  populationDynamics : Prop
  reproductiveIsolation : Prop
  fitnessLandscape : Type
  selectionGradient : Type
  speciationCompleted : Prop
  conclusion : speciationCompleted

structure SpeciationEndgameState where
  object : SpeciationAdmittedObject

def SpeciationWitnessClosed (O : SpeciationAdmittedObject) : Prop :=
  O.speciationCompleted

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse