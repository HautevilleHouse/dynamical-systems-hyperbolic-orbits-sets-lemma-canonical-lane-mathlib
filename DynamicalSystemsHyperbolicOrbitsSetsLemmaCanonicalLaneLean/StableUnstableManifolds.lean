import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure StableUnstableManifolds where
  hyperbolicSet : HyperbolicBasicSet
  stableManifoldFamily : Type u
  unstableManifoldFamily : Type v
  stableFoliation : Prop
  unstableFoliation : Prop
  tangentSpaceSplittingContinuous : Prop
  exponentialContractionStable : Prop
  exponentialContractionUnstable : Prop
  leavesSmooth : Prop

structure StableUnstableManifoldsEvidence (S : StableUnstableManifolds) where
  stableFoliationClosed : S.stableFoliation
  unstableFoliationClosed : S.unstableFoliation
  tangentSpaceSplittingContinuousClosed : S.tangentSpaceSplittingContinuous
  exponentialContractionStableClosed : S.exponentialContractionStable
  exponentialContractionUnstableClosed : S.exponentialContractionUnstable
  leavesSmoothClosed : S.leavesSmooth

def StableUnstableManifoldsClosed (S : StableUnstableManifolds) : Prop :=
  S.stableFoliation ∧ S.unstableFoliation ∧ S.tangentSpaceSplittingContinuous ∧
  S.exponentialContractionStable ∧ S.exponentialContractionUnstable ∧ S.leavesSmooth

theorem stable_unstable_manifolds_closed_from_evidence (S : StableUnstableManifolds)
    (E : StableUnstableManifoldsEvidence S) : StableUnstableManifoldsClosed S := by
  exact And.intro E.stableFoliationClosed
    (And.intro E.unstableFoliationClosed
      (And.intro E.tangentSpaceSplittingContinuousClosed
        (And.intro E.exponentialContractionStableClosed
          (And.intro E.exponentialContractionUnstableClosed
            E.leavesSmoothClosed))))

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse