@isTest
private class OASFormTest {
    @isTest
    private static void equalsSameInstance() {
        OASForm form1 = OASForm.getExample();
        OASForm form2 = form1;
        OASForm form3 = new OASForm();
        OASForm form4 = form3;

        System.assert(form1.equals(form2));
        System.assert(form2.equals(form1));
        System.assert(form1.equals(form1));
        System.assert(form3.equals(form4));
        System.assert(form4.equals(form3));
        System.assert(form3.equals(form3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASForm form1 = OASForm.getExample();
        OASForm form2 = OASForm.getExample();
        OASForm form3 = new OASForm();
        OASForm form4 = new OASForm();

        System.assert(form1.equals(form2));
        System.assert(form2.equals(form1));
        System.assert(form3.equals(form4));
        System.assert(form4.equals(form3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASForm form1 = OASForm.getExample();
        OASForm form2 = new OASForm();

        System.assertEquals(false, form1.equals('foo'));
        System.assertEquals(false, form2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASForm form1 = OASForm.getExample();
        OASForm form2 = new OASForm();
        OASForm form3;

        System.assertEquals(false, form1.equals(form3));
        System.assertEquals(false, form2.equals(form3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASForm form1 = OASForm.getExample();
        OASForm form2 = new OASForm();

        System.assertEquals(form1.hashCode(), form1.hashCode());
        System.assertEquals(form2.hashCode(), form2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASForm form1 = OASForm.getExample();
        OASForm form2 = OASForm.getExample();
        OASForm form3 = new OASForm();
        OASForm form4 = new OASForm();

        System.assert(form1.equals(form2));
        System.assert(form3.equals(form4));
        System.assertEquals(form1.hashCode(), form2.hashCode());
        System.assertEquals(form3.hashCode(), form4.hashCode());
    }
}
