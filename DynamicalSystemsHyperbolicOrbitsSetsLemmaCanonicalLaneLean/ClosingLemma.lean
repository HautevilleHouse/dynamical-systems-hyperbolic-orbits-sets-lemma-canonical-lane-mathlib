import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure ClosingLemmaPackage where
  hyperbolicOrbit : HyperbolicOrbitSet
  closingProperty : Prop
  epsilon : ℝ
  epsilon > 0

structure ClosingLemmaEvidence (C : ClosingLemmaPackage) where
  closingPropertyClosed : C.closingProperty
  epsilonPositive : C.epsilon > 0

def ClosingLemmaClosed (C : ClosingLemmaPackage) : Prop :=
  C.closingProperty ∧ C.epsilon > 0

theorem closing_lemma_closed_from_evidence (C : ClosingLemmaPackage)
    (E : ClosingLemmaEvidence C) : ClosingLemmaClosed C := by
  exact And.intro E.closingPropertyClosed E.epsilonPositive

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse