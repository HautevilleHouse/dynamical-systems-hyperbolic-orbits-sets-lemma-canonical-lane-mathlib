import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure ShadowingLemma where
  dynamics : HyperbolicBasicSet
  epsilonPseudoOrbit : Type u
  trueOrbitShadowing : Type v
  shadowingDistance : ℝ
  epsilonPseudoOrbitDefined : Prop
  shadowingExists : Prop
  shadowingDistanceBound : Prop
  uniformConstant : Prop

structure ShadowingLemmaEvidence (S : ShadowingLemma) where
  epsilonPseudoOrbitDefinedClosed : S.epsilonPseudoOrbitDefined
  shadowingExistsClosed : S.shadowingExists
  shadowingDistanceBoundClosed : S.shadowingDistanceBound
  uniformConstantClosed : S.uniformConstant

def ShadowingLemmaClosed (S : ShadowingLemma) : Prop :=
  S.epsilonPseudoOrbitDefined ∧ S.shadowingExists ∧ S.shadowingDistanceBound ∧ S.uniformConstant

theorem shadowing_lemma_closed_from_evidence (S : ShadowingLemma)
    (E : ShadowingLemmaEvidence S) : ShadowingLemmaClosed S := by
  exact And.intro E.epsilonPseudoOrbitDefinedClosed
    (And.intro E.shadowingExistsClosed
      (And.intro E.shadowingDistanceBoundClosed E.uniformConstantClosed))

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse