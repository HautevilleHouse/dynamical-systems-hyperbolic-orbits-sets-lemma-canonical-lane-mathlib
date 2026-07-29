import DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean.HyperbolicShadowing

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure HyperbolicOrbitStructurePackage (H : HyperbolicAdmittedObject)
    (S : HyperbolicShadowingPackage H) where
  periodicOrbitDense : Prop
  hyperbolicSaddleNode : Prop
  homoclinicTangleAbsent : Prop
  markovPartition : Prop
  topologicalTransitivity : Prop

structure HyperbolicOrbitStructureEvidence (H : HyperbolicAdmittedObject)
    (S : HyperbolicShadowingPackage H) (O : HyperbolicOrbitStructurePackage H S) where
  periodicOrbitDenseClosed : O.periodicOrbitDense
  hyperbolicSaddleNodeClosed : O.hyperbolicSaddleNode
  homoclinicTangleAbsentClosed : O.homoclinicTangleAbsent
  markovPartitionClosed : O.markovPartition
  topologicalTransitivityClosed : O.topologicalTransitivity

def HyperbolicOrbitStructureClosed (H : HyperbolicAdmittedObject)
    (S : HyperbolicShadowingPackage H) (O : HyperbolicOrbitStructurePackage H S) : Prop :=
  O.periodicOrbitDense ∧ O.hyperbolicSaddleNode ∧ O.homoclinicTangleAbsent ∧
  O.markovPartition ∧ O.topologicalTransitivity

theorem hyperbolic_orbit_structure_closed_from_evidence
    (H : HyperbolicAdmittedObject) (S : HyperbolicShadowingPackage H)
    (O : HyperbolicOrbitStructurePackage H S) (E : HyperbolicOrbitStructureEvidence H S O) :
    HyperbolicOrbitStructureClosed H S O := by
  exact And.intro E.periodicOrbitDenseClosed
    (And.intro E.hyperbolicSaddleNodeClosed
      (And.intro E.homoclinicTangleAbsentClosed
        (And.intro E.markovPartitionClosed E.topologicalTransitivityClosed)))

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse