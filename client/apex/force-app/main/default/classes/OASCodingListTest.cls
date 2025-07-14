@isTest
private class OASCodingListTest {
    @isTest
    private static void equalsSameInstance() {
        OASCodingList codingList1 = OASCodingList.getExample();
        OASCodingList codingList2 = codingList1;
        OASCodingList codingList3 = new OASCodingList();
        OASCodingList codingList4 = codingList3;

        System.assert(codingList1.equals(codingList2));
        System.assert(codingList2.equals(codingList1));
        System.assert(codingList1.equals(codingList1));
        System.assert(codingList3.equals(codingList4));
        System.assert(codingList4.equals(codingList3));
        System.assert(codingList3.equals(codingList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCodingList codingList1 = OASCodingList.getExample();
        OASCodingList codingList2 = OASCodingList.getExample();
        OASCodingList codingList3 = new OASCodingList();
        OASCodingList codingList4 = new OASCodingList();

        System.assert(codingList1.equals(codingList2));
        System.assert(codingList2.equals(codingList1));
        System.assert(codingList3.equals(codingList4));
        System.assert(codingList4.equals(codingList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCodingList codingList1 = OASCodingList.getExample();
        OASCodingList codingList2 = new OASCodingList();

        System.assertEquals(false, codingList1.equals('foo'));
        System.assertEquals(false, codingList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCodingList codingList1 = OASCodingList.getExample();
        OASCodingList codingList2 = new OASCodingList();
        OASCodingList codingList3;

        System.assertEquals(false, codingList1.equals(codingList3));
        System.assertEquals(false, codingList2.equals(codingList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCodingList codingList1 = OASCodingList.getExample();
        OASCodingList codingList2 = new OASCodingList();

        System.assertEquals(codingList1.hashCode(), codingList1.hashCode());
        System.assertEquals(codingList2.hashCode(), codingList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCodingList codingList1 = OASCodingList.getExample();
        OASCodingList codingList2 = OASCodingList.getExample();
        OASCodingList codingList3 = new OASCodingList();
        OASCodingList codingList4 = new OASCodingList();

        System.assert(codingList1.equals(codingList2));
        System.assert(codingList3.equals(codingList4));
        System.assertEquals(codingList1.hashCode(), codingList2.hashCode());
        System.assertEquals(codingList3.hashCode(), codingList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCodingList codingList = new OASCodingList();
        System.assertEquals(new List<OASCoding>(), codingList.data);
        System.assertEquals(null, codingList.metadata);
        System.assertEquals(null, codingList.pagination);
    }
}
