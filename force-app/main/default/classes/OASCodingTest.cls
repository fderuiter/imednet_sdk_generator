@isTest
private class OASCodingTest {
    @isTest
    private static void equalsSameInstance() {
        OASCoding coding1 = OASCoding.getExample();
        OASCoding coding2 = coding1;
        OASCoding coding3 = new OASCoding();
        OASCoding coding4 = coding3;

        System.assert(coding1.equals(coding2));
        System.assert(coding2.equals(coding1));
        System.assert(coding1.equals(coding1));
        System.assert(coding3.equals(coding4));
        System.assert(coding4.equals(coding3));
        System.assert(coding3.equals(coding3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCoding coding1 = OASCoding.getExample();
        OASCoding coding2 = OASCoding.getExample();
        OASCoding coding3 = new OASCoding();
        OASCoding coding4 = new OASCoding();

        System.assert(coding1.equals(coding2));
        System.assert(coding2.equals(coding1));
        System.assert(coding3.equals(coding4));
        System.assert(coding4.equals(coding3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCoding coding1 = OASCoding.getExample();
        OASCoding coding2 = new OASCoding();

        System.assertEquals(false, coding1.equals('foo'));
        System.assertEquals(false, coding2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCoding coding1 = OASCoding.getExample();
        OASCoding coding2 = new OASCoding();
        OASCoding coding3;

        System.assertEquals(false, coding1.equals(coding3));
        System.assertEquals(false, coding2.equals(coding3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCoding coding1 = OASCoding.getExample();
        OASCoding coding2 = new OASCoding();

        System.assertEquals(coding1.hashCode(), coding1.hashCode());
        System.assertEquals(coding2.hashCode(), coding2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCoding coding1 = OASCoding.getExample();
        OASCoding coding2 = OASCoding.getExample();
        OASCoding coding3 = new OASCoding();
        OASCoding coding4 = new OASCoding();

        System.assert(coding1.equals(coding2));
        System.assert(coding3.equals(coding4));
        System.assertEquals(coding1.hashCode(), coding2.hashCode());
        System.assertEquals(coding3.hashCode(), coding4.hashCode());
    }
}
