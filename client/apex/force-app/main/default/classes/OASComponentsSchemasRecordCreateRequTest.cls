@isTest
private class OASComponentsSchemasRecordCreateRequTest {
    @isTest
    private static void equalsSameInstance() {
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem1 = OASComponentsSchemasRecordCreateRequ.getExample();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem2 = componentsSchemasRecordCreateRequestItem1;
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem3 = new OASComponentsSchemasRecordCreateRequ();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem4 = componentsSchemasRecordCreateRequestItem3;

        System.assert(componentsSchemasRecordCreateRequestItem1.equals(componentsSchemasRecordCreateRequestItem2));
        System.assert(componentsSchemasRecordCreateRequestItem2.equals(componentsSchemasRecordCreateRequestItem1));
        System.assert(componentsSchemasRecordCreateRequestItem1.equals(componentsSchemasRecordCreateRequestItem1));
        System.assert(componentsSchemasRecordCreateRequestItem3.equals(componentsSchemasRecordCreateRequestItem4));
        System.assert(componentsSchemasRecordCreateRequestItem4.equals(componentsSchemasRecordCreateRequestItem3));
        System.assert(componentsSchemasRecordCreateRequestItem3.equals(componentsSchemasRecordCreateRequestItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem1 = OASComponentsSchemasRecordCreateRequ.getExample();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem2 = OASComponentsSchemasRecordCreateRequ.getExample();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem3 = new OASComponentsSchemasRecordCreateRequ();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem4 = new OASComponentsSchemasRecordCreateRequ();

        System.assert(componentsSchemasRecordCreateRequestItem1.equals(componentsSchemasRecordCreateRequestItem2));
        System.assert(componentsSchemasRecordCreateRequestItem2.equals(componentsSchemasRecordCreateRequestItem1));
        System.assert(componentsSchemasRecordCreateRequestItem3.equals(componentsSchemasRecordCreateRequestItem4));
        System.assert(componentsSchemasRecordCreateRequestItem4.equals(componentsSchemasRecordCreateRequestItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem1 = OASComponentsSchemasRecordCreateRequ.getExample();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem2 = new OASComponentsSchemasRecordCreateRequ();

        System.assertEquals(false, componentsSchemasRecordCreateRequestItem1.equals('foo'));
        System.assertEquals(false, componentsSchemasRecordCreateRequestItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem1 = OASComponentsSchemasRecordCreateRequ.getExample();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem2 = new OASComponentsSchemasRecordCreateRequ();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem3;

        System.assertEquals(false, componentsSchemasRecordCreateRequestItem1.equals(componentsSchemasRecordCreateRequestItem3));
        System.assertEquals(false, componentsSchemasRecordCreateRequestItem2.equals(componentsSchemasRecordCreateRequestItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem1 = OASComponentsSchemasRecordCreateRequ.getExample();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem2 = new OASComponentsSchemasRecordCreateRequ();

        System.assertEquals(componentsSchemasRecordCreateRequestItem1.hashCode(), componentsSchemasRecordCreateRequestItem1.hashCode());
        System.assertEquals(componentsSchemasRecordCreateRequestItem2.hashCode(), componentsSchemasRecordCreateRequestItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem1 = OASComponentsSchemasRecordCreateRequ.getExample();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem2 = OASComponentsSchemasRecordCreateRequ.getExample();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem3 = new OASComponentsSchemasRecordCreateRequ();
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem4 = new OASComponentsSchemasRecordCreateRequ();

        System.assert(componentsSchemasRecordCreateRequestItem1.equals(componentsSchemasRecordCreateRequestItem2));
        System.assert(componentsSchemasRecordCreateRequestItem3.equals(componentsSchemasRecordCreateRequestItem4));
        System.assertEquals(componentsSchemasRecordCreateRequestItem1.hashCode(), componentsSchemasRecordCreateRequestItem2.hashCode());
        System.assertEquals(componentsSchemasRecordCreateRequestItem3.hashCode(), componentsSchemasRecordCreateRequestItem4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASComponentsSchemasRecordCreateRequ componentsSchemasRecordCreateRequestItem = new OASComponentsSchemasRecordCreateRequ();
        System.assertEquals(new Map<String, oas_any_type_not_mapped>(), componentsSchemasRecordCreateRequestItem.data);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.formKey);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.formId);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.siteName);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.siteId);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.subjectKey);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.subjectId);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.subjectOid);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.intervalName);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.intervalId);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.recordId);
        System.assertEquals(null, componentsSchemasRecordCreateRequestItem.recordOid);
    }
}
