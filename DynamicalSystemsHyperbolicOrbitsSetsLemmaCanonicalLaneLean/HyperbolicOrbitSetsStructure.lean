import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure HyperbolicOrbitSet where
  baseSpace : Type u
  dynamics : baseSpace → baseSpace
  fixedPoint : baseSpace
  hyperbolicCondition : dynamics fixedPoint = fixedPoint ∧ (∃ (λ : ℝ), λ ≠ 0 ∧ λ ≠ 1 ∧ λ ≠ -1)

structure HyperbolicOrbitSetPackage where
  orbitPoints : Set HyperbolicOrbitSet.baseSpace
  orbitDynamics : HyperbolicOrbitSet.dynamics
  hyperbolicSplitting : Prop
  stableManifold : Prop
  unstableManifold : Prop

structure HyperbolicOrbitSetEvidence (H : HyperbolicOrbitSetPackage) where
  orbitPointsClosed : H.orbitPoints ≠ ∅
  hyperbolicSplittingClosed : H.hyperbolicSplitting
  stableManifoldClosed : H.stableManifold
  unstableManifoldClosed : H.unstableManifold

def HyperbolicOrbitSetClosed (H : HyperbolicOrbitSetPackage) : Prop :=
  H.orbitPoints ≠ ∅ ∧ H.hyperbolicSplitting ∧ H.stableManifold ∧ H.unstableManifold

theorem hyperbolic_orbit_set_closed_from_evidence (H : HyperbolicOrbitSetPackage)
    (E : HyperbolicOrbitSetEvidence H) : HyperbolicOrbitSetClosed H := by
  exact And.intro E.orbitPointsClosed
    (And.intro E.hyperbolicSplittingClosed
      (And.intro E.stableManifoldClosed E.unstableManifoldClosed))

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse