@isTest
private class OASRecordJobStatusTest {
    @isTest
    private static void equalsSameInstance() {
        OASRecordJobStatus recordJobStatus1 = OASRecordJobStatus.getExample();
        OASRecordJobStatus recordJobStatus2 = recordJobStatus1;
        OASRecordJobStatus recordJobStatus3 = new OASRecordJobStatus();
        OASRecordJobStatus recordJobStatus4 = recordJobStatus3;

        System.assert(recordJobStatus1.equals(recordJobStatus2));
        System.assert(recordJobStatus2.equals(recordJobStatus1));
        System.assert(recordJobStatus1.equals(recordJobStatus1));
        System.assert(recordJobStatus3.equals(recordJobStatus4));
        System.assert(recordJobStatus4.equals(recordJobStatus3));
        System.assert(recordJobStatus3.equals(recordJobStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRecordJobStatus recordJobStatus1 = OASRecordJobStatus.getExample();
        OASRecordJobStatus recordJobStatus2 = OASRecordJobStatus.getExample();
        OASRecordJobStatus recordJobStatus3 = new OASRecordJobStatus();
        OASRecordJobStatus recordJobStatus4 = new OASRecordJobStatus();

        System.assert(recordJobStatus1.equals(recordJobStatus2));
        System.assert(recordJobStatus2.equals(recordJobStatus1));
        System.assert(recordJobStatus3.equals(recordJobStatus4));
        System.assert(recordJobStatus4.equals(recordJobStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRecordJobStatus recordJobStatus1 = OASRecordJobStatus.getExample();
        OASRecordJobStatus recordJobStatus2 = new OASRecordJobStatus();

        System.assertEquals(false, recordJobStatus1.equals('foo'));
        System.assertEquals(false, recordJobStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRecordJobStatus recordJobStatus1 = OASRecordJobStatus.getExample();
        OASRecordJobStatus recordJobStatus2 = new OASRecordJobStatus();
        OASRecordJobStatus recordJobStatus3;

        System.assertEquals(false, recordJobStatus1.equals(recordJobStatus3));
        System.assertEquals(false, recordJobStatus2.equals(recordJobStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRecordJobStatus recordJobStatus1 = OASRecordJobStatus.getExample();
        OASRecordJobStatus recordJobStatus2 = new OASRecordJobStatus();

        System.assertEquals(recordJobStatus1.hashCode(), recordJobStatus1.hashCode());
        System.assertEquals(recordJobStatus2.hashCode(), recordJobStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRecordJobStatus recordJobStatus1 = OASRecordJobStatus.getExample();
        OASRecordJobStatus recordJobStatus2 = OASRecordJobStatus.getExample();
        OASRecordJobStatus recordJobStatus3 = new OASRecordJobStatus();
        OASRecordJobStatus recordJobStatus4 = new OASRecordJobStatus();

        System.assert(recordJobStatus1.equals(recordJobStatus2));
        System.assert(recordJobStatus3.equals(recordJobStatus4));
        System.assertEquals(recordJobStatus1.hashCode(), recordJobStatus2.hashCode());
        System.assertEquals(recordJobStatus3.hashCode(), recordJobStatus4.hashCode());
    }
}
