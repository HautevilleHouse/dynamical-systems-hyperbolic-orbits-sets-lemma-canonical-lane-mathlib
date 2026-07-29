import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

structure OrbitSetsLemmaPackage where
  hyperbolicSet : HyperbolicSetPackage
  periodicOrbits : Prop
  denseOrbits : Prop
  shadowing : Prop
  stability : Prop

structure OrbitSetsLemmaEvidence (O : OrbitSetsLemmaPackage) where
  periodicOrbitsClosed : O.periodicOrbits
  denseOrbitsClosed : O.denseOrbits
  shadowingClosed : O.shadowing
  stabilityClosed : O.stability

def OrbitSetsLemmaClosed (O : OrbitSetsLemmaPackage) : Prop :=
  HyperbolicSetClosed O.hyperbolicSet ∧ O.periodicOrbits ∧ O.denseOrbits ∧ O.shadowing ∧ O.stability

theorem orbit_sets_lemma_closed_from_evidence (O : OrbitSetsLemmaPackage) (E : OrbitSetsLemmaEvidence O) : OrbitSetsLemmaClosed O := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · apply hyperbolic_set_closed_from_evidence O.hyperbolicSet
    refine {
      splittingClosed := ?_
      uniformContractionClosed := ?_
      uniformExpansionClosed := ?_
      shadowingPropertyClosed := ?_
    }
    · exact E.shadowingClosed
    · exact E.stabilityClosed
    · exact E.stabilityClosed
    · exact E.shadowingClosed
  · exact E.periodicOrbitsClosed
  · exact E.denseOrbitsClosed
  · exact E.shadowingClosed
  · exact E.stabilityClosed

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse