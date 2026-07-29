import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure AdaptiveLandscapePackage where
  fitnessFunction : ℝ → ℝ
  localOptima : Set ℝ
  saddlePoints : Set ℝ
  peakHeight : ℝ
  valleyDepth : ℝ

structure AdaptiveLandscapeEvidence (A : AdaptiveLandscapePackage) where
  fitnessSmooth : Differentiable ℝ A.fitnessFunction
  localOptimaNonempty : Set.Nonempty A.localOptima
  saddlePointsFinite : Set.Finite A.saddlePoints
  peakHeightPositive : A.peakHeight > 0
  valleyDepthNegative : A.valleyDepth < 0

def AdaptiveLandscapeClosed (A : AdaptiveLandscapePackage) : Prop :=
  Differentiable ℝ A.fitnessFunction ∧ Set.Nonempty A.localOptima ∧
  Set.Finite A.saddlePoints ∧ A.peakHeight > 0 ∧ A.valleyDepth < 0

theorem adaptive_landscape_closed_from_evidence (A : AdaptiveLandscapePackage)
    (E : AdaptiveLandscapeEvidence A) : AdaptiveLandscapeClosed A := by
  exact And.intro E.fitnessSmooth
    (And.intro E.localOptimaNonempty
      (And.intro E.saddlePointsFinite
        (And.intro E.peakHeightPositive E.valleyDepthNegative)))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse