@isTest
private class OASFormListTest {
    @isTest
    private static void equalsSameInstance() {
        OASFormList formList1 = OASFormList.getExample();
        OASFormList formList2 = formList1;
        OASFormList formList3 = new OASFormList();
        OASFormList formList4 = formList3;

        System.assert(formList1.equals(formList2));
        System.assert(formList2.equals(formList1));
        System.assert(formList1.equals(formList1));
        System.assert(formList3.equals(formList4));
        System.assert(formList4.equals(formList3));
        System.assert(formList3.equals(formList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFormList formList1 = OASFormList.getExample();
        OASFormList formList2 = OASFormList.getExample();
        OASFormList formList3 = new OASFormList();
        OASFormList formList4 = new OASFormList();

        System.assert(formList1.equals(formList2));
        System.assert(formList2.equals(formList1));
        System.assert(formList3.equals(formList4));
        System.assert(formList4.equals(formList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFormList formList1 = OASFormList.getExample();
        OASFormList formList2 = new OASFormList();

        System.assertEquals(false, formList1.equals('foo'));
        System.assertEquals(false, formList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFormList formList1 = OASFormList.getExample();
        OASFormList formList2 = new OASFormList();
        OASFormList formList3;

        System.assertEquals(false, formList1.equals(formList3));
        System.assertEquals(false, formList2.equals(formList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFormList formList1 = OASFormList.getExample();
        OASFormList formList2 = new OASFormList();

        System.assertEquals(formList1.hashCode(), formList1.hashCode());
        System.assertEquals(formList2.hashCode(), formList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFormList formList1 = OASFormList.getExample();
        OASFormList formList2 = OASFormList.getExample();
        OASFormList formList3 = new OASFormList();
        OASFormList formList4 = new OASFormList();

        System.assert(formList1.equals(formList2));
        System.assert(formList3.equals(formList4));
        System.assertEquals(formList1.hashCode(), formList2.hashCode());
        System.assertEquals(formList3.hashCode(), formList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFormList formList = new OASFormList();
        System.assertEquals(new List<OASForm>(), formList.data);
        System.assertEquals(null, formList.metadata);
        System.assertEquals(null, formList.pagination);
    }
}
