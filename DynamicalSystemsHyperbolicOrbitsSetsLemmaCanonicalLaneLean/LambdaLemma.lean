import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure LambdaLemmaPackage where
  hyperbolicOrbitSet : HyperbolicOrbitSetPackage
  transversalIntersection : Prop
  persistenceUnderPerturbation : Prop

structure LambdaLemmaEvidence (L : LambdaLemmaPackage) where
  transversalIntersectionClosed : L.transversalIntersection
  persistenceUnderPerturbationClosed : L.persistenceUnderPerturbation

def LambdaLemmaClosed (L : LambdaLemmaPackage) : Prop :=
  L.transversalIntersection ∧ L.persistenceUnderPerturbation

theorem lambda_lemma_closed_from_evidence (L : LambdaLemmaPackage)
    (E : LambdaLemmaEvidence L) : LambdaLemmaClosed L := by
  exact And.intro E.transversalIntersectionClosed E.persistenceUnderPerturbationClosed

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse