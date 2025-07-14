@isTest
private class OASSiteListTest {
    @isTest
    private static void equalsSameInstance() {
        OASSiteList siteList1 = OASSiteList.getExample();
        OASSiteList siteList2 = siteList1;
        OASSiteList siteList3 = new OASSiteList();
        OASSiteList siteList4 = siteList3;

        System.assert(siteList1.equals(siteList2));
        System.assert(siteList2.equals(siteList1));
        System.assert(siteList1.equals(siteList1));
        System.assert(siteList3.equals(siteList4));
        System.assert(siteList4.equals(siteList3));
        System.assert(siteList3.equals(siteList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSiteList siteList1 = OASSiteList.getExample();
        OASSiteList siteList2 = OASSiteList.getExample();
        OASSiteList siteList3 = new OASSiteList();
        OASSiteList siteList4 = new OASSiteList();

        System.assert(siteList1.equals(siteList2));
        System.assert(siteList2.equals(siteList1));
        System.assert(siteList3.equals(siteList4));
        System.assert(siteList4.equals(siteList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSiteList siteList1 = OASSiteList.getExample();
        OASSiteList siteList2 = new OASSiteList();

        System.assertEquals(false, siteList1.equals('foo'));
        System.assertEquals(false, siteList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSiteList siteList1 = OASSiteList.getExample();
        OASSiteList siteList2 = new OASSiteList();
        OASSiteList siteList3;

        System.assertEquals(false, siteList1.equals(siteList3));
        System.assertEquals(false, siteList2.equals(siteList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSiteList siteList1 = OASSiteList.getExample();
        OASSiteList siteList2 = new OASSiteList();

        System.assertEquals(siteList1.hashCode(), siteList1.hashCode());
        System.assertEquals(siteList2.hashCode(), siteList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSiteList siteList1 = OASSiteList.getExample();
        OASSiteList siteList2 = OASSiteList.getExample();
        OASSiteList siteList3 = new OASSiteList();
        OASSiteList siteList4 = new OASSiteList();

        System.assert(siteList1.equals(siteList2));
        System.assert(siteList3.equals(siteList4));
        System.assertEquals(siteList1.hashCode(), siteList2.hashCode());
        System.assertEquals(siteList3.hashCode(), siteList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSiteList siteList = new OASSiteList();
        System.assertEquals(new List<OASSite>(), siteList.data);
        System.assertEquals(null, siteList.metadata);
        System.assertEquals(null, siteList.pagination);
    }
}
