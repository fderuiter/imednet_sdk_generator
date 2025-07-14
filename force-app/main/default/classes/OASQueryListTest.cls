@isTest
private class OASQueryListTest {
    @isTest
    private static void equalsSameInstance() {
        OASQueryList queryList1 = OASQueryList.getExample();
        OASQueryList queryList2 = queryList1;
        OASQueryList queryList3 = new OASQueryList();
        OASQueryList queryList4 = queryList3;

        System.assert(queryList1.equals(queryList2));
        System.assert(queryList2.equals(queryList1));
        System.assert(queryList1.equals(queryList1));
        System.assert(queryList3.equals(queryList4));
        System.assert(queryList4.equals(queryList3));
        System.assert(queryList3.equals(queryList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQueryList queryList1 = OASQueryList.getExample();
        OASQueryList queryList2 = OASQueryList.getExample();
        OASQueryList queryList3 = new OASQueryList();
        OASQueryList queryList4 = new OASQueryList();

        System.assert(queryList1.equals(queryList2));
        System.assert(queryList2.equals(queryList1));
        System.assert(queryList3.equals(queryList4));
        System.assert(queryList4.equals(queryList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQueryList queryList1 = OASQueryList.getExample();
        OASQueryList queryList2 = new OASQueryList();

        System.assertEquals(false, queryList1.equals('foo'));
        System.assertEquals(false, queryList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQueryList queryList1 = OASQueryList.getExample();
        OASQueryList queryList2 = new OASQueryList();
        OASQueryList queryList3;

        System.assertEquals(false, queryList1.equals(queryList3));
        System.assertEquals(false, queryList2.equals(queryList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQueryList queryList1 = OASQueryList.getExample();
        OASQueryList queryList2 = new OASQueryList();

        System.assertEquals(queryList1.hashCode(), queryList1.hashCode());
        System.assertEquals(queryList2.hashCode(), queryList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQueryList queryList1 = OASQueryList.getExample();
        OASQueryList queryList2 = OASQueryList.getExample();
        OASQueryList queryList3 = new OASQueryList();
        OASQueryList queryList4 = new OASQueryList();

        System.assert(queryList1.equals(queryList2));
        System.assert(queryList3.equals(queryList4));
        System.assertEquals(queryList1.hashCode(), queryList2.hashCode());
        System.assertEquals(queryList3.hashCode(), queryList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQueryList queryList = new OASQueryList();
        System.assertEquals(new List<OASQuery>(), queryList.data);
        System.assertEquals(null, queryList.metadata);
        System.assertEquals(null, queryList.pagination);
    }
}
