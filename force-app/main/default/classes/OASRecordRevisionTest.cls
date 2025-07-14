@isTest
private class OASRecordRevisionTest {
    @isTest
    private static void equalsSameInstance() {
        OASRecordRevision recordRevision1 = OASRecordRevision.getExample();
        OASRecordRevision recordRevision2 = recordRevision1;
        OASRecordRevision recordRevision3 = new OASRecordRevision();
        OASRecordRevision recordRevision4 = recordRevision3;

        System.assert(recordRevision1.equals(recordRevision2));
        System.assert(recordRevision2.equals(recordRevision1));
        System.assert(recordRevision1.equals(recordRevision1));
        System.assert(recordRevision3.equals(recordRevision4));
        System.assert(recordRevision4.equals(recordRevision3));
        System.assert(recordRevision3.equals(recordRevision3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRecordRevision recordRevision1 = OASRecordRevision.getExample();
        OASRecordRevision recordRevision2 = OASRecordRevision.getExample();
        OASRecordRevision recordRevision3 = new OASRecordRevision();
        OASRecordRevision recordRevision4 = new OASRecordRevision();

        System.assert(recordRevision1.equals(recordRevision2));
        System.assert(recordRevision2.equals(recordRevision1));
        System.assert(recordRevision3.equals(recordRevision4));
        System.assert(recordRevision4.equals(recordRevision3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRecordRevision recordRevision1 = OASRecordRevision.getExample();
        OASRecordRevision recordRevision2 = new OASRecordRevision();

        System.assertEquals(false, recordRevision1.equals('foo'));
        System.assertEquals(false, recordRevision2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRecordRevision recordRevision1 = OASRecordRevision.getExample();
        OASRecordRevision recordRevision2 = new OASRecordRevision();
        OASRecordRevision recordRevision3;

        System.assertEquals(false, recordRevision1.equals(recordRevision3));
        System.assertEquals(false, recordRevision2.equals(recordRevision3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRecordRevision recordRevision1 = OASRecordRevision.getExample();
        OASRecordRevision recordRevision2 = new OASRecordRevision();

        System.assertEquals(recordRevision1.hashCode(), recordRevision1.hashCode());
        System.assertEquals(recordRevision2.hashCode(), recordRevision2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRecordRevision recordRevision1 = OASRecordRevision.getExample();
        OASRecordRevision recordRevision2 = OASRecordRevision.getExample();
        OASRecordRevision recordRevision3 = new OASRecordRevision();
        OASRecordRevision recordRevision4 = new OASRecordRevision();

        System.assert(recordRevision1.equals(recordRevision2));
        System.assert(recordRevision3.equals(recordRevision4));
        System.assertEquals(recordRevision1.hashCode(), recordRevision2.hashCode());
        System.assertEquals(recordRevision3.hashCode(), recordRevision4.hashCode());
    }
}
