import DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HyperbolicSetWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsHyperbolicOrbitsSetsLemmaCanonicalLaneLean
end HautevilleHouse