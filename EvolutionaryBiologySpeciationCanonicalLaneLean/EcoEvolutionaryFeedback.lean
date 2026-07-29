import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySpeciationCanonicalLaneLean

structure EcoEvolutionaryFeedbackPackage where
  ecologicalInteraction : String
  selectionPressure : ℝ
  populationResponse : ℝ → ℝ
  equilibriumState : ℝ
  feedbackLoopStable : Prop

structure EcoEvolutionaryFeedbackEvidence (E : EcoEvolutionaryFeedbackPackage) where
  interactionDefined : E.ecologicalInteraction ≠ ""
  selectionPressureNonzero : E.selectionPressure ≠ 0
  populationResponseSmooth : Differentiable ℝ E.populationResponse
  equilibriumPositive : E.equilibriumState > 0
  feedbackLoopStableClosed : E.feedbackLoopStable

def EcoEvolutionaryFeedbackClosed (E : EcoEvolutionaryFeedbackPackage) : Prop :=
  E.ecologicalInteraction ≠ "" ∧ E.selectionPressure ≠ 0 ∧
  Differentiable ℝ E.populationResponse ∧ E.equilibriumState > 0 ∧ E.feedbackLoopStable

theorem eco_evolutionary_feedback_closed_from_evidence (E : EcoEvolutionaryFeedbackPackage)
    (Ev : EcoEvolutionaryFeedbackEvidence E) : EcoEvolutionaryFeedbackClosed E := by
  exact And.intro Ev.interactionDefined
    (And.intro Ev.selectionPressureNonzero
      (And.intro Ev.populationResponseSmooth
        (And.intro Ev.equilibriumPositive Ev.feedbackLoopStableClosed)))

end EvolutionaryBiologySpeciationCanonicalLaneLean
end HautevilleHouse