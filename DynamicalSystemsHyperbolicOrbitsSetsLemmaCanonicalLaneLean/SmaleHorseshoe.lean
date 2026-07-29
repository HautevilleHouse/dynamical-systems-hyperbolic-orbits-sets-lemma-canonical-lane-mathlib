import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure SmaleHorseshoe where
  rectangleDomain : Type u
  horseshoeMap : rectangleDomain → rectangleDomain
  stretchingContraction : Prop
  invariantCantorSet : Type v
  topologicalConjugacyToShift : Prop
  symbolicRepresentation : Type w
  chaoticDynamics : Prop

structure SmaleHorseshoeEvidence (S : SmaleHorseshoe) where
  stretchingContractionClosed : S.stretchingContraction
  topologicalConjugacyToShiftClosed : S.topologicalConjugacyToShift
  chaoticDynamicsClosed : S.chaoticDynamics

def SmaleHorseshoeClosed (S : SmaleHorseshoe) : Prop :=
  S.stretchingContraction ∧ S.topologicalConjugacyToShift ∧ S.chaoticDynamics

theorem smale_horseshoe_closed_from_evidence (S : SmaleHorseshoe)
    (E : SmaleHorseshoeEvidence S) : SmaleHorseshoeClosed S := by
  exact And.intro E.stretchingContractionClosed
    (And.intro E.topologicalConjugacyToShiftClosed E.chaoticDynamicsClosed)

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse