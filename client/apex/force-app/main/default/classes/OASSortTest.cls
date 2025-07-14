@isTest
private class OASSortTest {
    @isTest
    private static void equalsSameInstance() {
        OASSort r_sort1 = OASSort.getExample();
        OASSort r_sort2 = r_sort1;
        OASSort r_sort3 = new OASSort();
        OASSort r_sort4 = r_sort3;

        System.assert(r_sort1.equals(r_sort2));
        System.assert(r_sort2.equals(r_sort1));
        System.assert(r_sort1.equals(r_sort1));
        System.assert(r_sort3.equals(r_sort4));
        System.assert(r_sort4.equals(r_sort3));
        System.assert(r_sort3.equals(r_sort3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSort r_sort1 = OASSort.getExample();
        OASSort r_sort2 = OASSort.getExample();
        OASSort r_sort3 = new OASSort();
        OASSort r_sort4 = new OASSort();

        System.assert(r_sort1.equals(r_sort2));
        System.assert(r_sort2.equals(r_sort1));
        System.assert(r_sort3.equals(r_sort4));
        System.assert(r_sort4.equals(r_sort3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSort r_sort1 = OASSort.getExample();
        OASSort r_sort2 = new OASSort();

        System.assertEquals(false, r_sort1.equals('foo'));
        System.assertEquals(false, r_sort2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSort r_sort1 = OASSort.getExample();
        OASSort r_sort2 = new OASSort();
        OASSort r_sort3;

        System.assertEquals(false, r_sort1.equals(r_sort3));
        System.assertEquals(false, r_sort2.equals(r_sort3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSort r_sort1 = OASSort.getExample();
        OASSort r_sort2 = new OASSort();

        System.assertEquals(r_sort1.hashCode(), r_sort1.hashCode());
        System.assertEquals(r_sort2.hashCode(), r_sort2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSort r_sort1 = OASSort.getExample();
        OASSort r_sort2 = OASSort.getExample();
        OASSort r_sort3 = new OASSort();
        OASSort r_sort4 = new OASSort();

        System.assert(r_sort1.equals(r_sort2));
        System.assert(r_sort3.equals(r_sort4));
        System.assertEquals(r_sort1.hashCode(), r_sort2.hashCode());
        System.assertEquals(r_sort3.hashCode(), r_sort4.hashCode());
    }
}
