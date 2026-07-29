import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean.HyperbolicOrbit

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure StableUnstableManifoldPackage (M : Type) [TopologicalSpace M] [MetricSpace M] where
  orbit : HyperbolicOrbitPackage M
  stableManifold : Set M
  unstableManifold : Set M
  invarianceUnderFlow : Prop
  tangentSplitting : Prop
  contractionExpansionRates : ℝ × ℝ

def StableUnstableManifoldClosed {M : Type} [TopologicalSpace M] [MetricSpace M] (P : StableUnstableManifoldPackage M) : Prop :=
  P.invarianceUnderFlow ∧ P.tangentSplitting

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse