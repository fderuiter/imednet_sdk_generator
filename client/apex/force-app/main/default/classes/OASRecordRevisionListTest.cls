@isTest
private class OASRecordRevisionListTest {
    @isTest
    private static void equalsSameInstance() {
        OASRecordRevisionList recordRevisionList1 = OASRecordRevisionList.getExample();
        OASRecordRevisionList recordRevisionList2 = recordRevisionList1;
        OASRecordRevisionList recordRevisionList3 = new OASRecordRevisionList();
        OASRecordRevisionList recordRevisionList4 = recordRevisionList3;

        System.assert(recordRevisionList1.equals(recordRevisionList2));
        System.assert(recordRevisionList2.equals(recordRevisionList1));
        System.assert(recordRevisionList1.equals(recordRevisionList1));
        System.assert(recordRevisionList3.equals(recordRevisionList4));
        System.assert(recordRevisionList4.equals(recordRevisionList3));
        System.assert(recordRevisionList3.equals(recordRevisionList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRecordRevisionList recordRevisionList1 = OASRecordRevisionList.getExample();
        OASRecordRevisionList recordRevisionList2 = OASRecordRevisionList.getExample();
        OASRecordRevisionList recordRevisionList3 = new OASRecordRevisionList();
        OASRecordRevisionList recordRevisionList4 = new OASRecordRevisionList();

        System.assert(recordRevisionList1.equals(recordRevisionList2));
        System.assert(recordRevisionList2.equals(recordRevisionList1));
        System.assert(recordRevisionList3.equals(recordRevisionList4));
        System.assert(recordRevisionList4.equals(recordRevisionList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRecordRevisionList recordRevisionList1 = OASRecordRevisionList.getExample();
        OASRecordRevisionList recordRevisionList2 = new OASRecordRevisionList();

        System.assertEquals(false, recordRevisionList1.equals('foo'));
        System.assertEquals(false, recordRevisionList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRecordRevisionList recordRevisionList1 = OASRecordRevisionList.getExample();
        OASRecordRevisionList recordRevisionList2 = new OASRecordRevisionList();
        OASRecordRevisionList recordRevisionList3;

        System.assertEquals(false, recordRevisionList1.equals(recordRevisionList3));
        System.assertEquals(false, recordRevisionList2.equals(recordRevisionList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRecordRevisionList recordRevisionList1 = OASRecordRevisionList.getExample();
        OASRecordRevisionList recordRevisionList2 = new OASRecordRevisionList();

        System.assertEquals(recordRevisionList1.hashCode(), recordRevisionList1.hashCode());
        System.assertEquals(recordRevisionList2.hashCode(), recordRevisionList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRecordRevisionList recordRevisionList1 = OASRecordRevisionList.getExample();
        OASRecordRevisionList recordRevisionList2 = OASRecordRevisionList.getExample();
        OASRecordRevisionList recordRevisionList3 = new OASRecordRevisionList();
        OASRecordRevisionList recordRevisionList4 = new OASRecordRevisionList();

        System.assert(recordRevisionList1.equals(recordRevisionList2));
        System.assert(recordRevisionList3.equals(recordRevisionList4));
        System.assertEquals(recordRevisionList1.hashCode(), recordRevisionList2.hashCode());
        System.assertEquals(recordRevisionList3.hashCode(), recordRevisionList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRecordRevisionList recordRevisionList = new OASRecordRevisionList();
        System.assertEquals(new List<OASRecordRevision>(), recordRevisionList.data);
        System.assertEquals(null, recordRevisionList.metadata);
        System.assertEquals(null, recordRevisionList.pagination);
    }
}
