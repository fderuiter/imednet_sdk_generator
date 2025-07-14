@isTest
private class OASComponentsSchemasMetadataErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASComponentsSchemasMetadataError componentsSchemasMetadataError1 = OASComponentsSchemasMetadataError.getExample();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError2 = componentsSchemasMetadataError1;
        OASComponentsSchemasMetadataError componentsSchemasMetadataError3 = new OASComponentsSchemasMetadataError();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError4 = componentsSchemasMetadataError3;

        System.assert(componentsSchemasMetadataError1.equals(componentsSchemasMetadataError2));
        System.assert(componentsSchemasMetadataError2.equals(componentsSchemasMetadataError1));
        System.assert(componentsSchemasMetadataError1.equals(componentsSchemasMetadataError1));
        System.assert(componentsSchemasMetadataError3.equals(componentsSchemasMetadataError4));
        System.assert(componentsSchemasMetadataError4.equals(componentsSchemasMetadataError3));
        System.assert(componentsSchemasMetadataError3.equals(componentsSchemasMetadataError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASComponentsSchemasMetadataError componentsSchemasMetadataError1 = OASComponentsSchemasMetadataError.getExample();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError2 = OASComponentsSchemasMetadataError.getExample();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError3 = new OASComponentsSchemasMetadataError();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError4 = new OASComponentsSchemasMetadataError();

        System.assert(componentsSchemasMetadataError1.equals(componentsSchemasMetadataError2));
        System.assert(componentsSchemasMetadataError2.equals(componentsSchemasMetadataError1));
        System.assert(componentsSchemasMetadataError3.equals(componentsSchemasMetadataError4));
        System.assert(componentsSchemasMetadataError4.equals(componentsSchemasMetadataError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASComponentsSchemasMetadataError componentsSchemasMetadataError1 = OASComponentsSchemasMetadataError.getExample();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError2 = new OASComponentsSchemasMetadataError();

        System.assertEquals(false, componentsSchemasMetadataError1.equals('foo'));
        System.assertEquals(false, componentsSchemasMetadataError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASComponentsSchemasMetadataError componentsSchemasMetadataError1 = OASComponentsSchemasMetadataError.getExample();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError2 = new OASComponentsSchemasMetadataError();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError3;

        System.assertEquals(false, componentsSchemasMetadataError1.equals(componentsSchemasMetadataError3));
        System.assertEquals(false, componentsSchemasMetadataError2.equals(componentsSchemasMetadataError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASComponentsSchemasMetadataError componentsSchemasMetadataError1 = OASComponentsSchemasMetadataError.getExample();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError2 = new OASComponentsSchemasMetadataError();

        System.assertEquals(componentsSchemasMetadataError1.hashCode(), componentsSchemasMetadataError1.hashCode());
        System.assertEquals(componentsSchemasMetadataError2.hashCode(), componentsSchemasMetadataError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASComponentsSchemasMetadataError componentsSchemasMetadataError1 = OASComponentsSchemasMetadataError.getExample();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError2 = OASComponentsSchemasMetadataError.getExample();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError3 = new OASComponentsSchemasMetadataError();
        OASComponentsSchemasMetadataError componentsSchemasMetadataError4 = new OASComponentsSchemasMetadataError();

        System.assert(componentsSchemasMetadataError1.equals(componentsSchemasMetadataError2));
        System.assert(componentsSchemasMetadataError3.equals(componentsSchemasMetadataError4));
        System.assertEquals(componentsSchemasMetadataError1.hashCode(), componentsSchemasMetadataError2.hashCode());
        System.assertEquals(componentsSchemasMetadataError3.hashCode(), componentsSchemasMetadataError4.hashCode());
    }
}
