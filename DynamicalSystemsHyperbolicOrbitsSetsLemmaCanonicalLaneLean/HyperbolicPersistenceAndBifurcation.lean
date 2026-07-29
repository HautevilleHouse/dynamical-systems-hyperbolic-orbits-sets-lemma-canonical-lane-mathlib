import DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean.HyperbolicCodingAndEntropy

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure HyperbolicPersistenceAndBifurcationPackage (H : HyperbolicAdmittedObject)
    (S : HyperbolicShadowingPackage H) (O : HyperbolicOrbitStructurePackage H S)
    (C : HyperbolicCodingAndEntropyPackage H S O) where
  structuralStabilityUnderPerturbation : Prop
  saddleNodeBifurcation : Prop
  hopfBifurcation : Prop
  invariantManifoldPersistence : Prop
  normalHyperbolicityConditions : Prop

structure HyperbolicPersistenceAndBifurcationEvidence (H : HyperbolicAdmittedObject)
    (S : HyperbolicShadowingPackage H) (O : HyperbolicOrbitStructurePackage H S)
    (C : HyperbolicCodingAndEntropyPackage H S O)
    (P : HyperbolicPersistenceAndBifurcationPackage H S O C) where
  structuralStabilityUnderPerturbationClosed : P.structuralStabilityUnderPerturbation
  saddleNodeBifurcationClosed : P.saddleNodeBifurcation
  hopfBifurcationClosed : P.hopfBifurcation
  invariantManifoldPersistenceClosed : P.invariantManifoldPersistence
  normalHyperbolicityConditionsClosed : P.normalHyperbolicityConditions

def HyperbolicPersistenceAndBifurcationClosed (H : HyperbolicAdmittedObject)
    (S : HyperbolicShadowingPackage H) (O : HyperbolicOrbitStructurePackage H S)
    (C : HyperbolicCodingAndEntropyPackage H S O)
    (P : HyperbolicPersistenceAndBifurcationPackage H S O C) : Prop :=
  P.structuralStabilityUnderPerturbation ∧ P.saddleNodeBifurcation ∧
  P.hopfBifurcation ∧ P.invariantManifoldPersistence ∧ P.normalHyperbolicityConditions

theorem hyperbolic_persistence_and_bifurcation_closed_from_evidence
    (H : HyperbolicAdmittedObject) (S : HyperbolicShadowingPackage H)
    (O : HyperbolicOrbitStructurePackage H S) (C : HyperbolicCodingAndEntropyPackage H S O)
    (P : HyperbolicPersistenceAndBifurcationPackage H S O C)
    (E : HyperbolicPersistenceAndBifurcationEvidence H S O C P) :
    HyperbolicPersistenceAndBifurcationClosed H S O C P := by
  exact And.intro E.structuralStabilityUnderPerturbationClosed
    (And.intro E.saddleNodeBifurcationClosed
      (And.intro E.hopfBifurcationClosed
        (And.intro E.invariantManifoldPersistenceClosed E.normalHyperbolicityConditionsClosed)))

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse