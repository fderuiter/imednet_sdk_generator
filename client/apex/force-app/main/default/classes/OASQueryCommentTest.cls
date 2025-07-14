@isTest
private class OASQueryCommentTest {
    @isTest
    private static void equalsSameInstance() {
        OASQueryComment queryComment1 = OASQueryComment.getExample();
        OASQueryComment queryComment2 = queryComment1;
        OASQueryComment queryComment3 = new OASQueryComment();
        OASQueryComment queryComment4 = queryComment3;

        System.assert(queryComment1.equals(queryComment2));
        System.assert(queryComment2.equals(queryComment1));
        System.assert(queryComment1.equals(queryComment1));
        System.assert(queryComment3.equals(queryComment4));
        System.assert(queryComment4.equals(queryComment3));
        System.assert(queryComment3.equals(queryComment3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQueryComment queryComment1 = OASQueryComment.getExample();
        OASQueryComment queryComment2 = OASQueryComment.getExample();
        OASQueryComment queryComment3 = new OASQueryComment();
        OASQueryComment queryComment4 = new OASQueryComment();

        System.assert(queryComment1.equals(queryComment2));
        System.assert(queryComment2.equals(queryComment1));
        System.assert(queryComment3.equals(queryComment4));
        System.assert(queryComment4.equals(queryComment3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQueryComment queryComment1 = OASQueryComment.getExample();
        OASQueryComment queryComment2 = new OASQueryComment();

        System.assertEquals(false, queryComment1.equals('foo'));
        System.assertEquals(false, queryComment2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQueryComment queryComment1 = OASQueryComment.getExample();
        OASQueryComment queryComment2 = new OASQueryComment();
        OASQueryComment queryComment3;

        System.assertEquals(false, queryComment1.equals(queryComment3));
        System.assertEquals(false, queryComment2.equals(queryComment3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQueryComment queryComment1 = OASQueryComment.getExample();
        OASQueryComment queryComment2 = new OASQueryComment();

        System.assertEquals(queryComment1.hashCode(), queryComment1.hashCode());
        System.assertEquals(queryComment2.hashCode(), queryComment2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQueryComment queryComment1 = OASQueryComment.getExample();
        OASQueryComment queryComment2 = OASQueryComment.getExample();
        OASQueryComment queryComment3 = new OASQueryComment();
        OASQueryComment queryComment4 = new OASQueryComment();

        System.assert(queryComment1.equals(queryComment2));
        System.assert(queryComment3.equals(queryComment4));
        System.assertEquals(queryComment1.hashCode(), queryComment2.hashCode());
        System.assertEquals(queryComment3.hashCode(), queryComment4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQueryComment queryComment = new OASQueryComment();
        Map<String, String> x-property-mappings = queryComment.getx-property-mappings();
        System.assertEquals('r_date', x-property-mappings.get('date'));
    }
}
