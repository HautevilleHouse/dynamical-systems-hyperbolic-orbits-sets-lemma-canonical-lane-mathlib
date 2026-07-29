import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean.HyperbolicOrbit

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure HyperbolicSetPackage (M : Type) [TopologicalSpace M] [MetricSpace M] where
  orbits : Set (HyperbolicOrbitPackage M)
  localProductStructure : Prop
  shadowingProperty : Prop
  expansivityConstant : ℝ

def HyperbolicSetClosed {M : Type} [TopologicalSpace M] [MetricSpace M] (P : HyperbolicSetPackage M) : Prop :=
  P.localProductStructure ∧ P.shadowingProperty

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse