@isTest
private class OASVisitListTest {
    @isTest
    private static void equalsSameInstance() {
        OASVisitList visitList1 = OASVisitList.getExample();
        OASVisitList visitList2 = visitList1;
        OASVisitList visitList3 = new OASVisitList();
        OASVisitList visitList4 = visitList3;

        System.assert(visitList1.equals(visitList2));
        System.assert(visitList2.equals(visitList1));
        System.assert(visitList1.equals(visitList1));
        System.assert(visitList3.equals(visitList4));
        System.assert(visitList4.equals(visitList3));
        System.assert(visitList3.equals(visitList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASVisitList visitList1 = OASVisitList.getExample();
        OASVisitList visitList2 = OASVisitList.getExample();
        OASVisitList visitList3 = new OASVisitList();
        OASVisitList visitList4 = new OASVisitList();

        System.assert(visitList1.equals(visitList2));
        System.assert(visitList2.equals(visitList1));
        System.assert(visitList3.equals(visitList4));
        System.assert(visitList4.equals(visitList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASVisitList visitList1 = OASVisitList.getExample();
        OASVisitList visitList2 = new OASVisitList();

        System.assertEquals(false, visitList1.equals('foo'));
        System.assertEquals(false, visitList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASVisitList visitList1 = OASVisitList.getExample();
        OASVisitList visitList2 = new OASVisitList();
        OASVisitList visitList3;

        System.assertEquals(false, visitList1.equals(visitList3));
        System.assertEquals(false, visitList2.equals(visitList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASVisitList visitList1 = OASVisitList.getExample();
        OASVisitList visitList2 = new OASVisitList();

        System.assertEquals(visitList1.hashCode(), visitList1.hashCode());
        System.assertEquals(visitList2.hashCode(), visitList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASVisitList visitList1 = OASVisitList.getExample();
        OASVisitList visitList2 = OASVisitList.getExample();
        OASVisitList visitList3 = new OASVisitList();
        OASVisitList visitList4 = new OASVisitList();

        System.assert(visitList1.equals(visitList2));
        System.assert(visitList3.equals(visitList4));
        System.assertEquals(visitList1.hashCode(), visitList2.hashCode());
        System.assertEquals(visitList3.hashCode(), visitList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASVisitList visitList = new OASVisitList();
        System.assertEquals(new List<OASVisit>(), visitList.data);
        System.assertEquals(null, visitList.metadata);
        System.assertEquals(null, visitList.pagination);
    }
}
