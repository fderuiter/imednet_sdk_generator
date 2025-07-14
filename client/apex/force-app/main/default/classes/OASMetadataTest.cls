@isTest
private class OASMetadataTest {
    @isTest
    private static void equalsSameInstance() {
        OASMetadata metadata1 = OASMetadata.getExample();
        OASMetadata metadata2 = metadata1;
        OASMetadata metadata3 = new OASMetadata();
        OASMetadata metadata4 = metadata3;

        System.assert(metadata1.equals(metadata2));
        System.assert(metadata2.equals(metadata1));
        System.assert(metadata1.equals(metadata1));
        System.assert(metadata3.equals(metadata4));
        System.assert(metadata4.equals(metadata3));
        System.assert(metadata3.equals(metadata3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMetadata metadata1 = OASMetadata.getExample();
        OASMetadata metadata2 = OASMetadata.getExample();
        OASMetadata metadata3 = new OASMetadata();
        OASMetadata metadata4 = new OASMetadata();

        System.assert(metadata1.equals(metadata2));
        System.assert(metadata2.equals(metadata1));
        System.assert(metadata3.equals(metadata4));
        System.assert(metadata4.equals(metadata3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMetadata metadata1 = OASMetadata.getExample();
        OASMetadata metadata2 = new OASMetadata();

        System.assertEquals(false, metadata1.equals('foo'));
        System.assertEquals(false, metadata2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMetadata metadata1 = OASMetadata.getExample();
        OASMetadata metadata2 = new OASMetadata();
        OASMetadata metadata3;

        System.assertEquals(false, metadata1.equals(metadata3));
        System.assertEquals(false, metadata2.equals(metadata3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMetadata metadata1 = OASMetadata.getExample();
        OASMetadata metadata2 = new OASMetadata();

        System.assertEquals(metadata1.hashCode(), metadata1.hashCode());
        System.assertEquals(metadata2.hashCode(), metadata2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMetadata metadata1 = OASMetadata.getExample();
        OASMetadata metadata2 = OASMetadata.getExample();
        OASMetadata metadata3 = new OASMetadata();
        OASMetadata metadata4 = new OASMetadata();

        System.assert(metadata1.equals(metadata2));
        System.assert(metadata3.equals(metadata4));
        System.assertEquals(metadata1.hashCode(), metadata2.hashCode());
        System.assertEquals(metadata3.hashCode(), metadata4.hashCode());
    }
}
