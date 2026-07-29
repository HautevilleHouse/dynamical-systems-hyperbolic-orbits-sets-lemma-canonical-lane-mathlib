import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure HyperbolicSetPackage where
  invariantSet : Type u
  tmap : invariantSet → invariantSet
  splitting : Prop
  uniformContraction : Prop
  uniformExpansion : Prop
  shadowingProperty : Prop

structure HyperbolicSetEvidence (H : HyperbolicSetPackage) where
  splittingClosed : H.splitting
  uniformContractionClosed : H.uniformContraction
  uniformExpansionClosed : H.uniformExpansion
  shadowingPropertyClosed : H.shadowingProperty

def HyperbolicSetClosed (H : HyperbolicSetPackage) : Prop :=
  H.splitting ∧ H.uniformContraction ∧ H.uniformExpansion ∧ H.shadowingProperty

theorem hyperbolic_set_closed_from_evidence (H : HyperbolicSetPackage) (E : HyperbolicSetEvidence H) : HyperbolicSetClosed H := by
  exact And.intro E.splittingClosed (And.intro E.uniformContractionClosed (And.intro E.uniformExpansionClosed E.shadowingPropertyClosed))

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse