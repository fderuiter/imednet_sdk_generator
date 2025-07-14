@isTest
private class OASStudyTest {
    @isTest
    private static void equalsSameInstance() {
        OASStudy study1 = OASStudy.getExample();
        OASStudy study2 = study1;
        OASStudy study3 = new OASStudy();
        OASStudy study4 = study3;

        System.assert(study1.equals(study2));
        System.assert(study2.equals(study1));
        System.assert(study1.equals(study1));
        System.assert(study3.equals(study4));
        System.assert(study4.equals(study3));
        System.assert(study3.equals(study3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStudy study1 = OASStudy.getExample();
        OASStudy study2 = OASStudy.getExample();
        OASStudy study3 = new OASStudy();
        OASStudy study4 = new OASStudy();

        System.assert(study1.equals(study2));
        System.assert(study2.equals(study1));
        System.assert(study3.equals(study4));
        System.assert(study4.equals(study3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStudy study1 = OASStudy.getExample();
        OASStudy study2 = new OASStudy();

        System.assertEquals(false, study1.equals('foo'));
        System.assertEquals(false, study2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStudy study1 = OASStudy.getExample();
        OASStudy study2 = new OASStudy();
        OASStudy study3;

        System.assertEquals(false, study1.equals(study3));
        System.assertEquals(false, study2.equals(study3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStudy study1 = OASStudy.getExample();
        OASStudy study2 = new OASStudy();

        System.assertEquals(study1.hashCode(), study1.hashCode());
        System.assertEquals(study2.hashCode(), study2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStudy study1 = OASStudy.getExample();
        OASStudy study2 = OASStudy.getExample();
        OASStudy study3 = new OASStudy();
        OASStudy study4 = new OASStudy();

        System.assert(study1.equals(study2));
        System.assert(study3.equals(study4));
        System.assertEquals(study1.hashCode(), study2.hashCode());
        System.assertEquals(study3.hashCode(), study4.hashCode());
    }
}
