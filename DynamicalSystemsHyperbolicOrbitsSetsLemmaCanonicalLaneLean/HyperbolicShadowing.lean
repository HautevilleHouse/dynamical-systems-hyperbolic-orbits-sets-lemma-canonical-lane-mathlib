import DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure HyperbolicShadowingPackage (H : HyperbolicAdmittedObject) where
  shadowingProperty : Prop
  shadowingDistance : ℝ
  orbitSegmentLength : ℕ
  hyperbolicSplitting : Prop
  stableUnstableManifoldsTransverse : Prop

structure HyperbolicShadowingEvidence (H : HyperbolicAdmittedObject) (S : HyperbolicShadowingPackage H) where
  shadowingPropertyClosed : S.shadowingProperty
  hyperbolicSplittingClosed : S.hyperbolicSplitting
  stableUnstableManifoldsTransverseClosed : S.stableUnstableManifoldsTransverse

def HyperbolicShadowingClosed (H : HyperbolicAdmittedObject) (S : HyperbolicShadowingPackage H) : Prop :=
  S.shadowingProperty ∧ S.hyperbolicSplitting ∧ S.stableUnstableManifoldsTransverse

theorem hyperbolic_shadowing_closed_from_evidence
    (H : HyperbolicAdmittedObject) (S : HyperbolicShadowingPackage H)
    (E : HyperbolicShadowingEvidence H S) : HyperbolicShadowingClosed H S := by
  exact And.intro E.shadowingPropertyClosed
    (And.intro E.hyperbolicSplittingClosed E.stableUnstableManifoldsTransverseClosed)

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse