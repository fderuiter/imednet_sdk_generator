@isTest
private class OASSiteTest {
    @isTest
    private static void equalsSameInstance() {
        OASSite site1 = OASSite.getExample();
        OASSite site2 = site1;
        OASSite site3 = new OASSite();
        OASSite site4 = site3;

        System.assert(site1.equals(site2));
        System.assert(site2.equals(site1));
        System.assert(site1.equals(site1));
        System.assert(site3.equals(site4));
        System.assert(site4.equals(site3));
        System.assert(site3.equals(site3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSite site1 = OASSite.getExample();
        OASSite site2 = OASSite.getExample();
        OASSite site3 = new OASSite();
        OASSite site4 = new OASSite();

        System.assert(site1.equals(site2));
        System.assert(site2.equals(site1));
        System.assert(site3.equals(site4));
        System.assert(site4.equals(site3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSite site1 = OASSite.getExample();
        OASSite site2 = new OASSite();

        System.assertEquals(false, site1.equals('foo'));
        System.assertEquals(false, site2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSite site1 = OASSite.getExample();
        OASSite site2 = new OASSite();
        OASSite site3;

        System.assertEquals(false, site1.equals(site3));
        System.assertEquals(false, site2.equals(site3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSite site1 = OASSite.getExample();
        OASSite site2 = new OASSite();

        System.assertEquals(site1.hashCode(), site1.hashCode());
        System.assertEquals(site2.hashCode(), site2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSite site1 = OASSite.getExample();
        OASSite site2 = OASSite.getExample();
        OASSite site3 = new OASSite();
        OASSite site4 = new OASSite();

        System.assert(site1.equals(site2));
        System.assert(site3.equals(site4));
        System.assertEquals(site1.hashCode(), site2.hashCode());
        System.assertEquals(site3.hashCode(), site4.hashCode());
    }
}
