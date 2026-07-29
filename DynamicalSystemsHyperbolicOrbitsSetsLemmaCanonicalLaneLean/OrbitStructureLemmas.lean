import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure OrbitStructurePackage (H : HyperbolicSetPackage) where
  periodicOrbitsDense : Prop
  transversalIntersections : Prop
  shadowingProperty : Prop
  specificationProperty : Prop

structure OrbitStructureEvidence (H : HyperbolicSetPackage) (O : OrbitStructurePackage H) where
  periodicOrbitsDenseClosed : O.periodicOrbitsDense
  transversalIntersectionsClosed : O.transversalIntersections
  shadowingPropertyClosed : O.shadowingProperty
  specificationPropertyClosed : O.specificationProperty

def OrbitStructureClosed (H : HyperbolicSetPackage) (O : OrbitStructurePackage H) : Prop :=
  O.periodicOrbitsDense ∧ O.transversalIntersections ∧ O.shadowingProperty ∧ O.specificationProperty

theorem orbit_structure_closed_from_evidence (H : HyperbolicSetPackage) (O : OrbitStructurePackage H) (E : OrbitStructureEvidence H O) : OrbitStructureClosed H O := by
  exact And.intro E.periodicOrbitsDenseClosed
    (And.intro E.transversalIntersectionsClosed
      (And.intro E.shadowingPropertyClosed E.specificationPropertyClosed))

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse
