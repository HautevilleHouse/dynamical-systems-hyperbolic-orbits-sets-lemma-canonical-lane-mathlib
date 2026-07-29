import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure MarkovPartition where
  hyperbolicSet : HyperbolicBasicSet
  partitionElements : Type u
  finitePartition : Prop
  markovProperty : Prop
  rectanglesClosed : Prop
  boundaryBehavior : Prop
  symbolicDynamics : Type v

structure MarkovPartitionEvidence (M : MarkovPartition) where
  finitePartitionClosed : M.finitePartition
  markovPropertyClosed : M.markovProperty
  rectanglesClosedClosed : M.rectanglesClosed
  boundaryBehaviorClosed : M.boundaryBehavior

def MarkovPartitionClosed (M : MarkovPartition) : Prop :=
  M.finitePartition ∧ M.markovProperty ∧ M.rectanglesClosed ∧ M.boundaryBehavior

theorem markov_partition_closed_from_evidence (M : MarkovPartition)
    (E : MarkovPartitionEvidence M) : MarkovPartitionClosed M := by
  exact And.intro E.finitePartitionClosed
    (And.intro E.markovPropertyClosed
      (And.intro E.rectanglesClosedClosed E.boundaryBehaviorClosed))

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse