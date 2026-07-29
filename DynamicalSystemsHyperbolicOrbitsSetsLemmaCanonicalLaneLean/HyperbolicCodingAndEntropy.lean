import DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean.HyperbolicOrbitStructure

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure HyperbolicCodingAndEntropyPackage (H : HyperbolicAdmittedObject)
    (S : HyperbolicShadowingPackage H) (O : HyperbolicOrbitStructurePackage H S) where
  symbolicCoding : Prop
  shiftInvariantMeasure : Prop
  topologicalEntropyPositivity : Prop
  measureEntropyEqualsLyapunov : Prop
  equilibriumStateExists : Prop

structure HyperbolicCodingAndEntropyEvidence (H : HyperbolicAdmittedObject)
    (S : HyperbolicShadowingPackage H) (O : HyperbolicOrbitStructurePackage H S)
    (C : HyperbolicCodingAndEntropyPackage H S O) where
  symbolicCodingClosed : C.symbolicCoding
  shiftInvariantMeasureClosed : C.shiftInvariantMeasure
  topologicalEntropyPositivityClosed : C.topologicalEntropyPositivity
  measureEntropyEqualsLyapunovClosed : C.measureEntropyEqualsLyapunov
  equilibriumStateExistsClosed : C.equilibriumStateExists

def HyperbolicCodingAndEntropyClosed (H : HyperbolicAdmittedObject)
    (S : HyperbolicShadowingPackage H) (O : HyperbolicOrbitStructurePackage H S)
    (C : HyperbolicCodingAndEntropyPackage H S O) : Prop :=
  C.symbolicCoding ∧ C.shiftInvariantMeasure ∧ C.topologicalEntropyPositivity ∧
  C.measureEntropyEqualsLyapunov ∧ C.equilibriumStateExists

theorem hyperbolic_coding_and_entropy_closed_from_evidence
    (H : HyperbolicAdmittedObject) (S : HyperbolicShadowingPackage H)
    (O : HyperbolicOrbitStructurePackage H S) (C : HyperbolicCodingAndEntropyPackage H S O)
    (E : HyperbolicCodingAndEntropyEvidence H S O C) : HyperbolicCodingAndEntropyClosed H S O C := by
  exact And.intro E.symbolicCodingClosed
    (And.intro E.shiftInvariantMeasureClosed
      (And.intro E.topologicalEntropyPositivityClosed
        (And.intro E.measureEntropyEqualsLyapunovClosed E.equilibriumStateExistsClosed)))

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse