import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure HyperbolicOrbitPackage (M : Type) [TopologicalSpace M] [MetricSpace M] where
  flow : ℝ → M → M
  orbitPoint : M
  hyperbolicSplitting : Prop
  contractionRate : ℝ
  expansionRate : ℝ
  invariantSplitting : Prop

def HyperbolicOrbitClosed {M : Type} [TopologicalSpace M] [MetricSpace M] (P : HyperbolicOrbitPackage M) : Prop :=
  P.hyperbolicSplitting ∧ P.invariantSplitting

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse