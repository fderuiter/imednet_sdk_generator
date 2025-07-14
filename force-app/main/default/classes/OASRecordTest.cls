@isTest
private class OASRecordTest {
    @isTest
    private static void equalsSameInstance() {
        OASRecord record1 = OASRecord.getExample();
        OASRecord record2 = record1;
        OASRecord record3 = new OASRecord();
        OASRecord record4 = record3;

        System.assert(record1.equals(record2));
        System.assert(record2.equals(record1));
        System.assert(record1.equals(record1));
        System.assert(record3.equals(record4));
        System.assert(record4.equals(record3));
        System.assert(record3.equals(record3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRecord record1 = OASRecord.getExample();
        OASRecord record2 = OASRecord.getExample();
        OASRecord record3 = new OASRecord();
        OASRecord record4 = new OASRecord();

        System.assert(record1.equals(record2));
        System.assert(record2.equals(record1));
        System.assert(record3.equals(record4));
        System.assert(record4.equals(record3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRecord record1 = OASRecord.getExample();
        OASRecord record2 = new OASRecord();

        System.assertEquals(false, record1.equals('foo'));
        System.assertEquals(false, record2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRecord record1 = OASRecord.getExample();
        OASRecord record2 = new OASRecord();
        OASRecord record3;

        System.assertEquals(false, record1.equals(record3));
        System.assertEquals(false, record2.equals(record3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRecord record1 = OASRecord.getExample();
        OASRecord record2 = new OASRecord();

        System.assertEquals(record1.hashCode(), record1.hashCode());
        System.assertEquals(record2.hashCode(), record2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRecord record1 = OASRecord.getExample();
        OASRecord record2 = OASRecord.getExample();
        OASRecord record3 = new OASRecord();
        OASRecord record4 = new OASRecord();

        System.assert(record1.equals(record2));
        System.assert(record3.equals(record4));
        System.assertEquals(record1.hashCode(), record2.hashCode());
        System.assertEquals(record3.hashCode(), record4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRecord record = new OASRecord();
        System.assertEquals(new List<OASKeyword>(), record.keywords);
        System.assertEquals(new Map<String, oas_any_type_not_mapped>(), record.recordData);
        System.assertEquals(null, record.studyKey);
        System.assertEquals(null, record.intervalId);
        System.assertEquals(null, record.formId);
        System.assertEquals(null, record.formKey);
        System.assertEquals(null, record.siteId);
        System.assertEquals(null, record.recordId);
        System.assertEquals(null, record.recordOid);
        System.assertEquals(null, record.recordType);
        System.assertEquals(null, record.recordStatus);
        System.assertEquals(null, record.deleted);
        System.assertEquals(null, record.dateCreated);
        System.assertEquals(null, record.dateModified);
        System.assertEquals(null, record.subjectId);
        System.assertEquals(null, record.subjectOid);
        System.assertEquals(null, record.subjectKey);
        System.assertEquals(null, record.visitId);
        System.assertEquals(null, record.parentRecordId);
    }
}
