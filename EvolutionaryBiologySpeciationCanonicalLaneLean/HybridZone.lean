import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure HybridZonePackage where
  parentalSpecies : List String
  hybridZoneWidth : Float
  clineShape : String
  endogenousSelection : Float
  exogenousSelection : Float
  hybridBreakdown : Prop
  reinforcementComplete : Prop
  speciationComplete : Prop

structure HybridZoneEvidence (H : HybridZonePackage) where
  hybridZoneWidthFinite : H.hybridZoneWidth < 1000
  endogenousSelectionPositive : H.endogenousSelection > 0
  hybridBreakdownClosed : H.hybridBreakdown
  speciationCompleteClosed : H.speciationComplete

def HybridZoneClosed (H : HybridZonePackage) : Prop :=
  H.hybridZoneWidth < 1000 ∧ H.endogenousSelection > 0 ∧
  H.hybridBreakdown ∧ H.speciationComplete

theorem hybrid_zone_closed_from_evidence (H : HybridZonePackage)
    (E : HybridZoneEvidence H) : HybridZoneClosed H := by
  exact And.intro E.hybridZoneWidthFinite
    (And.intro E.endogenousSelectionPositive
      (And.intro E.hybridBreakdownClosed E.speciationCompleteClosed))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse