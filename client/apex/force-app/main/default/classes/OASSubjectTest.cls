@isTest
private class OASSubjectTest {
    @isTest
    private static void equalsSameInstance() {
        OASSubject subject1 = OASSubject.getExample();
        OASSubject subject2 = subject1;
        OASSubject subject3 = new OASSubject();
        OASSubject subject4 = subject3;

        System.assert(subject1.equals(subject2));
        System.assert(subject2.equals(subject1));
        System.assert(subject1.equals(subject1));
        System.assert(subject3.equals(subject4));
        System.assert(subject4.equals(subject3));
        System.assert(subject3.equals(subject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSubject subject1 = OASSubject.getExample();
        OASSubject subject2 = OASSubject.getExample();
        OASSubject subject3 = new OASSubject();
        OASSubject subject4 = new OASSubject();

        System.assert(subject1.equals(subject2));
        System.assert(subject2.equals(subject1));
        System.assert(subject3.equals(subject4));
        System.assert(subject4.equals(subject3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSubject subject1 = OASSubject.getExample();
        OASSubject subject2 = new OASSubject();

        System.assertEquals(false, subject1.equals('foo'));
        System.assertEquals(false, subject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSubject subject1 = OASSubject.getExample();
        OASSubject subject2 = new OASSubject();
        OASSubject subject3;

        System.assertEquals(false, subject1.equals(subject3));
        System.assertEquals(false, subject2.equals(subject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSubject subject1 = OASSubject.getExample();
        OASSubject subject2 = new OASSubject();

        System.assertEquals(subject1.hashCode(), subject1.hashCode());
        System.assertEquals(subject2.hashCode(), subject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSubject subject1 = OASSubject.getExample();
        OASSubject subject2 = OASSubject.getExample();
        OASSubject subject3 = new OASSubject();
        OASSubject subject4 = new OASSubject();

        System.assert(subject1.equals(subject2));
        System.assert(subject3.equals(subject4));
        System.assertEquals(subject1.hashCode(), subject2.hashCode());
        System.assertEquals(subject3.hashCode(), subject4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSubject subject = new OASSubject();
        System.assertEquals(new List<OASKeyword>(), subject.keywords);
        System.assertEquals(null, subject.studyKey);
        System.assertEquals(null, subject.subjectId);
        System.assertEquals(null, subject.subjectOid);
        System.assertEquals(null, subject.subjectKey);
        System.assertEquals(null, subject.subjectStatus);
        System.assertEquals(null, subject.siteId);
        System.assertEquals(null, subject.siteName);
        System.assertEquals(null, subject.deleted);
        System.assertEquals(null, subject.enrollmentStartDate);
        System.assertEquals(null, subject.dateCreated);
        System.assertEquals(null, subject.dateModified);
    }
}
