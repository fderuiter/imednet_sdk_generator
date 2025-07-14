@isTest
private class OASStudyListTest {
    @isTest
    private static void equalsSameInstance() {
        OASStudyList studyList1 = OASStudyList.getExample();
        OASStudyList studyList2 = studyList1;
        OASStudyList studyList3 = new OASStudyList();
        OASStudyList studyList4 = studyList3;

        System.assert(studyList1.equals(studyList2));
        System.assert(studyList2.equals(studyList1));
        System.assert(studyList1.equals(studyList1));
        System.assert(studyList3.equals(studyList4));
        System.assert(studyList4.equals(studyList3));
        System.assert(studyList3.equals(studyList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASStudyList studyList1 = OASStudyList.getExample();
        OASStudyList studyList2 = OASStudyList.getExample();
        OASStudyList studyList3 = new OASStudyList();
        OASStudyList studyList4 = new OASStudyList();

        System.assert(studyList1.equals(studyList2));
        System.assert(studyList2.equals(studyList1));
        System.assert(studyList3.equals(studyList4));
        System.assert(studyList4.equals(studyList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASStudyList studyList1 = OASStudyList.getExample();
        OASStudyList studyList2 = new OASStudyList();

        System.assertEquals(false, studyList1.equals('foo'));
        System.assertEquals(false, studyList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASStudyList studyList1 = OASStudyList.getExample();
        OASStudyList studyList2 = new OASStudyList();
        OASStudyList studyList3;

        System.assertEquals(false, studyList1.equals(studyList3));
        System.assertEquals(false, studyList2.equals(studyList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASStudyList studyList1 = OASStudyList.getExample();
        OASStudyList studyList2 = new OASStudyList();

        System.assertEquals(studyList1.hashCode(), studyList1.hashCode());
        System.assertEquals(studyList2.hashCode(), studyList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASStudyList studyList1 = OASStudyList.getExample();
        OASStudyList studyList2 = OASStudyList.getExample();
        OASStudyList studyList3 = new OASStudyList();
        OASStudyList studyList4 = new OASStudyList();

        System.assert(studyList1.equals(studyList2));
        System.assert(studyList3.equals(studyList4));
        System.assertEquals(studyList1.hashCode(), studyList2.hashCode());
        System.assertEquals(studyList3.hashCode(), studyList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASStudyList studyList = new OASStudyList();
        System.assertEquals(new List<OASStudy>(), studyList.data);
        System.assertEquals(null, studyList.metadata);
        System.assertEquals(null, studyList.pagination);
    }
}
