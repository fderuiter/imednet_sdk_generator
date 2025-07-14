@isTest
private class OASSubjectListTest {
    @isTest
    private static void equalsSameInstance() {
        OASSubjectList subjectList1 = OASSubjectList.getExample();
        OASSubjectList subjectList2 = subjectList1;
        OASSubjectList subjectList3 = new OASSubjectList();
        OASSubjectList subjectList4 = subjectList3;

        System.assert(subjectList1.equals(subjectList2));
        System.assert(subjectList2.equals(subjectList1));
        System.assert(subjectList1.equals(subjectList1));
        System.assert(subjectList3.equals(subjectList4));
        System.assert(subjectList4.equals(subjectList3));
        System.assert(subjectList3.equals(subjectList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSubjectList subjectList1 = OASSubjectList.getExample();
        OASSubjectList subjectList2 = OASSubjectList.getExample();
        OASSubjectList subjectList3 = new OASSubjectList();
        OASSubjectList subjectList4 = new OASSubjectList();

        System.assert(subjectList1.equals(subjectList2));
        System.assert(subjectList2.equals(subjectList1));
        System.assert(subjectList3.equals(subjectList4));
        System.assert(subjectList4.equals(subjectList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSubjectList subjectList1 = OASSubjectList.getExample();
        OASSubjectList subjectList2 = new OASSubjectList();

        System.assertEquals(false, subjectList1.equals('foo'));
        System.assertEquals(false, subjectList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSubjectList subjectList1 = OASSubjectList.getExample();
        OASSubjectList subjectList2 = new OASSubjectList();
        OASSubjectList subjectList3;

        System.assertEquals(false, subjectList1.equals(subjectList3));
        System.assertEquals(false, subjectList2.equals(subjectList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSubjectList subjectList1 = OASSubjectList.getExample();
        OASSubjectList subjectList2 = new OASSubjectList();

        System.assertEquals(subjectList1.hashCode(), subjectList1.hashCode());
        System.assertEquals(subjectList2.hashCode(), subjectList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSubjectList subjectList1 = OASSubjectList.getExample();
        OASSubjectList subjectList2 = OASSubjectList.getExample();
        OASSubjectList subjectList3 = new OASSubjectList();
        OASSubjectList subjectList4 = new OASSubjectList();

        System.assert(subjectList1.equals(subjectList2));
        System.assert(subjectList3.equals(subjectList4));
        System.assertEquals(subjectList1.hashCode(), subjectList2.hashCode());
        System.assertEquals(subjectList3.hashCode(), subjectList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSubjectList subjectList = new OASSubjectList();
        System.assertEquals(new List<OASSubject>(), subjectList.data);
        System.assertEquals(null, subjectList.metadata);
        System.assertEquals(null, subjectList.pagination);
    }
}
