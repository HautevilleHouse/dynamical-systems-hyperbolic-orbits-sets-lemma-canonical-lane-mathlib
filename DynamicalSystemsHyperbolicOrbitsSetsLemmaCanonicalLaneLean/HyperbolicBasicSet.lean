import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure HyperbolicBasicSet where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  diffeomorphism : manifold → manifold
  tangentBundle : Type w
  invariantSet : Set manifold
  hyperbolicSplitting : Prop
  uniformExpansion : Prop
  uniformContraction : Prop
  invariantSetClosed : Prop
  smoothnessHyperbolic : Prop

structure HyperbolicBasicSetEvidence (H : HyperbolicBasicSet) where
  invariantSetClosedEvidence : H.invariantSetClosed
  smoothnessHyperbolicEvidence : H.smoothnessHyperbolic

def HyperbolicBasicSetClosed (H : HyperbolicBasicSet) : Prop :=
  H.invariantSetClosed ∧ H.smoothnessHyperbolic

theorem hyperbolic_basic_set_closed_from_evidence (H : HyperbolicBasicSet)
    (E : HyperbolicBasicSetEvidence H) : HyperbolicBasicSetClosed H := by
  exact And.intro E.invariantSetClosedEvidence E.smoothnessHyperbolicEvidence

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse