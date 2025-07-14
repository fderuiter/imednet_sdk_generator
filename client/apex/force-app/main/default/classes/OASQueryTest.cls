@isTest
private class OASQueryTest {
    @isTest
    private static void equalsSameInstance() {
        OASQuery query1 = OASQuery.getExample();
        OASQuery query2 = query1;
        OASQuery query3 = new OASQuery();
        OASQuery query4 = query3;

        System.assert(query1.equals(query2));
        System.assert(query2.equals(query1));
        System.assert(query1.equals(query1));
        System.assert(query3.equals(query4));
        System.assert(query4.equals(query3));
        System.assert(query3.equals(query3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQuery query1 = OASQuery.getExample();
        OASQuery query2 = OASQuery.getExample();
        OASQuery query3 = new OASQuery();
        OASQuery query4 = new OASQuery();

        System.assert(query1.equals(query2));
        System.assert(query2.equals(query1));
        System.assert(query3.equals(query4));
        System.assert(query4.equals(query3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQuery query1 = OASQuery.getExample();
        OASQuery query2 = new OASQuery();

        System.assertEquals(false, query1.equals('foo'));
        System.assertEquals(false, query2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQuery query1 = OASQuery.getExample();
        OASQuery query2 = new OASQuery();
        OASQuery query3;

        System.assertEquals(false, query1.equals(query3));
        System.assertEquals(false, query2.equals(query3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQuery query1 = OASQuery.getExample();
        OASQuery query2 = new OASQuery();

        System.assertEquals(query1.hashCode(), query1.hashCode());
        System.assertEquals(query2.hashCode(), query2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQuery query1 = OASQuery.getExample();
        OASQuery query2 = OASQuery.getExample();
        OASQuery query3 = new OASQuery();
        OASQuery query4 = new OASQuery();

        System.assert(query1.equals(query2));
        System.assert(query3.equals(query4));
        System.assertEquals(query1.hashCode(), query2.hashCode());
        System.assertEquals(query3.hashCode(), query4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQuery query = new OASQuery();
        System.assertEquals(new List<OASQueryComment>(), query.queryComments);
        System.assertEquals(null, query.studyKey);
        System.assertEquals(null, query.subjectId);
        System.assertEquals(null, query.subjectOid);
        System.assertEquals(null, query.annotationType);
        System.assertEquals(null, query.annotationId);
        System.assertEquals(null, query.type);
        System.assertEquals(null, query.description);
        System.assertEquals(null, query.recordId);
        System.assertEquals(null, query.variable);
        System.assertEquals(null, query.subjectKey);
        System.assertEquals(null, query.dateCreated);
        System.assertEquals(null, query.dateModified);
    }
}
