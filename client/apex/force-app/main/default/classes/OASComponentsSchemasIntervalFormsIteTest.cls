@isTest
private class OASComponentsSchemasIntervalFormsIteTest {
    @isTest
    private static void equalsSameInstance() {
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem1 = OASComponentsSchemasIntervalFormsIte.getExample();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem2 = componentsSchemasIntervalFormsItem1;
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem3 = new OASComponentsSchemasIntervalFormsIte();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem4 = componentsSchemasIntervalFormsItem3;

        System.assert(componentsSchemasIntervalFormsItem1.equals(componentsSchemasIntervalFormsItem2));
        System.assert(componentsSchemasIntervalFormsItem2.equals(componentsSchemasIntervalFormsItem1));
        System.assert(componentsSchemasIntervalFormsItem1.equals(componentsSchemasIntervalFormsItem1));
        System.assert(componentsSchemasIntervalFormsItem3.equals(componentsSchemasIntervalFormsItem4));
        System.assert(componentsSchemasIntervalFormsItem4.equals(componentsSchemasIntervalFormsItem3));
        System.assert(componentsSchemasIntervalFormsItem3.equals(componentsSchemasIntervalFormsItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem1 = OASComponentsSchemasIntervalFormsIte.getExample();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem2 = OASComponentsSchemasIntervalFormsIte.getExample();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem3 = new OASComponentsSchemasIntervalFormsIte();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem4 = new OASComponentsSchemasIntervalFormsIte();

        System.assert(componentsSchemasIntervalFormsItem1.equals(componentsSchemasIntervalFormsItem2));
        System.assert(componentsSchemasIntervalFormsItem2.equals(componentsSchemasIntervalFormsItem1));
        System.assert(componentsSchemasIntervalFormsItem3.equals(componentsSchemasIntervalFormsItem4));
        System.assert(componentsSchemasIntervalFormsItem4.equals(componentsSchemasIntervalFormsItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem1 = OASComponentsSchemasIntervalFormsIte.getExample();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem2 = new OASComponentsSchemasIntervalFormsIte();

        System.assertEquals(false, componentsSchemasIntervalFormsItem1.equals('foo'));
        System.assertEquals(false, componentsSchemasIntervalFormsItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem1 = OASComponentsSchemasIntervalFormsIte.getExample();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem2 = new OASComponentsSchemasIntervalFormsIte();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem3;

        System.assertEquals(false, componentsSchemasIntervalFormsItem1.equals(componentsSchemasIntervalFormsItem3));
        System.assertEquals(false, componentsSchemasIntervalFormsItem2.equals(componentsSchemasIntervalFormsItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem1 = OASComponentsSchemasIntervalFormsIte.getExample();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem2 = new OASComponentsSchemasIntervalFormsIte();

        System.assertEquals(componentsSchemasIntervalFormsItem1.hashCode(), componentsSchemasIntervalFormsItem1.hashCode());
        System.assertEquals(componentsSchemasIntervalFormsItem2.hashCode(), componentsSchemasIntervalFormsItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem1 = OASComponentsSchemasIntervalFormsIte.getExample();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem2 = OASComponentsSchemasIntervalFormsIte.getExample();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem3 = new OASComponentsSchemasIntervalFormsIte();
        OASComponentsSchemasIntervalFormsIte componentsSchemasIntervalFormsItem4 = new OASComponentsSchemasIntervalFormsIte();

        System.assert(componentsSchemasIntervalFormsItem1.equals(componentsSchemasIntervalFormsItem2));
        System.assert(componentsSchemasIntervalFormsItem3.equals(componentsSchemasIntervalFormsItem4));
        System.assertEquals(componentsSchemasIntervalFormsItem1.hashCode(), componentsSchemasIntervalFormsItem2.hashCode());
        System.assertEquals(componentsSchemasIntervalFormsItem3.hashCode(), componentsSchemasIntervalFormsItem4.hashCode());
    }
}
