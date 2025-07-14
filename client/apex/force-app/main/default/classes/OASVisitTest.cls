@isTest
private class OASVisitTest {
    @isTest
    private static void equalsSameInstance() {
        OASVisit visit1 = OASVisit.getExample();
        OASVisit visit2 = visit1;
        OASVisit visit3 = new OASVisit();
        OASVisit visit4 = visit3;

        System.assert(visit1.equals(visit2));
        System.assert(visit2.equals(visit1));
        System.assert(visit1.equals(visit1));
        System.assert(visit3.equals(visit4));
        System.assert(visit4.equals(visit3));
        System.assert(visit3.equals(visit3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASVisit visit1 = OASVisit.getExample();
        OASVisit visit2 = OASVisit.getExample();
        OASVisit visit3 = new OASVisit();
        OASVisit visit4 = new OASVisit();

        System.assert(visit1.equals(visit2));
        System.assert(visit2.equals(visit1));
        System.assert(visit3.equals(visit4));
        System.assert(visit4.equals(visit3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASVisit visit1 = OASVisit.getExample();
        OASVisit visit2 = new OASVisit();

        System.assertEquals(false, visit1.equals('foo'));
        System.assertEquals(false, visit2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASVisit visit1 = OASVisit.getExample();
        OASVisit visit2 = new OASVisit();
        OASVisit visit3;

        System.assertEquals(false, visit1.equals(visit3));
        System.assertEquals(false, visit2.equals(visit3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASVisit visit1 = OASVisit.getExample();
        OASVisit visit2 = new OASVisit();

        System.assertEquals(visit1.hashCode(), visit1.hashCode());
        System.assertEquals(visit2.hashCode(), visit2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASVisit visit1 = OASVisit.getExample();
        OASVisit visit2 = OASVisit.getExample();
        OASVisit visit3 = new OASVisit();
        OASVisit visit4 = new OASVisit();

        System.assert(visit1.equals(visit2));
        System.assert(visit3.equals(visit4));
        System.assertEquals(visit1.hashCode(), visit2.hashCode());
        System.assertEquals(visit3.hashCode(), visit4.hashCode());
    }
}
