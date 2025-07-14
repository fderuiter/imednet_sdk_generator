@isTest
private class OASIntervalListTest {
    @isTest
    private static void equalsSameInstance() {
        OASIntervalList intervalList1 = OASIntervalList.getExample();
        OASIntervalList intervalList2 = intervalList1;
        OASIntervalList intervalList3 = new OASIntervalList();
        OASIntervalList intervalList4 = intervalList3;

        System.assert(intervalList1.equals(intervalList2));
        System.assert(intervalList2.equals(intervalList1));
        System.assert(intervalList1.equals(intervalList1));
        System.assert(intervalList3.equals(intervalList4));
        System.assert(intervalList4.equals(intervalList3));
        System.assert(intervalList3.equals(intervalList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIntervalList intervalList1 = OASIntervalList.getExample();
        OASIntervalList intervalList2 = OASIntervalList.getExample();
        OASIntervalList intervalList3 = new OASIntervalList();
        OASIntervalList intervalList4 = new OASIntervalList();

        System.assert(intervalList1.equals(intervalList2));
        System.assert(intervalList2.equals(intervalList1));
        System.assert(intervalList3.equals(intervalList4));
        System.assert(intervalList4.equals(intervalList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIntervalList intervalList1 = OASIntervalList.getExample();
        OASIntervalList intervalList2 = new OASIntervalList();

        System.assertEquals(false, intervalList1.equals('foo'));
        System.assertEquals(false, intervalList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIntervalList intervalList1 = OASIntervalList.getExample();
        OASIntervalList intervalList2 = new OASIntervalList();
        OASIntervalList intervalList3;

        System.assertEquals(false, intervalList1.equals(intervalList3));
        System.assertEquals(false, intervalList2.equals(intervalList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIntervalList intervalList1 = OASIntervalList.getExample();
        OASIntervalList intervalList2 = new OASIntervalList();

        System.assertEquals(intervalList1.hashCode(), intervalList1.hashCode());
        System.assertEquals(intervalList2.hashCode(), intervalList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIntervalList intervalList1 = OASIntervalList.getExample();
        OASIntervalList intervalList2 = OASIntervalList.getExample();
        OASIntervalList intervalList3 = new OASIntervalList();
        OASIntervalList intervalList4 = new OASIntervalList();

        System.assert(intervalList1.equals(intervalList2));
        System.assert(intervalList3.equals(intervalList4));
        System.assertEquals(intervalList1.hashCode(), intervalList2.hashCode());
        System.assertEquals(intervalList3.hashCode(), intervalList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASIntervalList intervalList = new OASIntervalList();
        System.assertEquals(new List<OASInterval>(), intervalList.data);
        System.assertEquals(null, intervalList.metadata);
        System.assertEquals(null, intervalList.pagination);
    }
}
