@isTest
private class OASRecordListTest {
    @isTest
    private static void equalsSameInstance() {
        OASRecordList recordList1 = OASRecordList.getExample();
        OASRecordList recordList2 = recordList1;
        OASRecordList recordList3 = new OASRecordList();
        OASRecordList recordList4 = recordList3;

        System.assert(recordList1.equals(recordList2));
        System.assert(recordList2.equals(recordList1));
        System.assert(recordList1.equals(recordList1));
        System.assert(recordList3.equals(recordList4));
        System.assert(recordList4.equals(recordList3));
        System.assert(recordList3.equals(recordList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRecordList recordList1 = OASRecordList.getExample();
        OASRecordList recordList2 = OASRecordList.getExample();
        OASRecordList recordList3 = new OASRecordList();
        OASRecordList recordList4 = new OASRecordList();

        System.assert(recordList1.equals(recordList2));
        System.assert(recordList2.equals(recordList1));
        System.assert(recordList3.equals(recordList4));
        System.assert(recordList4.equals(recordList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRecordList recordList1 = OASRecordList.getExample();
        OASRecordList recordList2 = new OASRecordList();

        System.assertEquals(false, recordList1.equals('foo'));
        System.assertEquals(false, recordList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRecordList recordList1 = OASRecordList.getExample();
        OASRecordList recordList2 = new OASRecordList();
        OASRecordList recordList3;

        System.assertEquals(false, recordList1.equals(recordList3));
        System.assertEquals(false, recordList2.equals(recordList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRecordList recordList1 = OASRecordList.getExample();
        OASRecordList recordList2 = new OASRecordList();

        System.assertEquals(recordList1.hashCode(), recordList1.hashCode());
        System.assertEquals(recordList2.hashCode(), recordList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRecordList recordList1 = OASRecordList.getExample();
        OASRecordList recordList2 = OASRecordList.getExample();
        OASRecordList recordList3 = new OASRecordList();
        OASRecordList recordList4 = new OASRecordList();

        System.assert(recordList1.equals(recordList2));
        System.assert(recordList3.equals(recordList4));
        System.assertEquals(recordList1.hashCode(), recordList2.hashCode());
        System.assertEquals(recordList3.hashCode(), recordList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRecordList recordList = new OASRecordList();
        System.assertEquals(new List<OASRecord>(), recordList.data);
        System.assertEquals(null, recordList.metadata);
        System.assertEquals(null, recordList.pagination);
    }
}
