@isTest
private class OASUserListTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserList userList1 = OASUserList.getExample();
        OASUserList userList2 = userList1;
        OASUserList userList3 = new OASUserList();
        OASUserList userList4 = userList3;

        System.assert(userList1.equals(userList2));
        System.assert(userList2.equals(userList1));
        System.assert(userList1.equals(userList1));
        System.assert(userList3.equals(userList4));
        System.assert(userList4.equals(userList3));
        System.assert(userList3.equals(userList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserList userList1 = OASUserList.getExample();
        OASUserList userList2 = OASUserList.getExample();
        OASUserList userList3 = new OASUserList();
        OASUserList userList4 = new OASUserList();

        System.assert(userList1.equals(userList2));
        System.assert(userList2.equals(userList1));
        System.assert(userList3.equals(userList4));
        System.assert(userList4.equals(userList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserList userList1 = OASUserList.getExample();
        OASUserList userList2 = new OASUserList();

        System.assertEquals(false, userList1.equals('foo'));
        System.assertEquals(false, userList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserList userList1 = OASUserList.getExample();
        OASUserList userList2 = new OASUserList();
        OASUserList userList3;

        System.assertEquals(false, userList1.equals(userList3));
        System.assertEquals(false, userList2.equals(userList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserList userList1 = OASUserList.getExample();
        OASUserList userList2 = new OASUserList();

        System.assertEquals(userList1.hashCode(), userList1.hashCode());
        System.assertEquals(userList2.hashCode(), userList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserList userList1 = OASUserList.getExample();
        OASUserList userList2 = OASUserList.getExample();
        OASUserList userList3 = new OASUserList();
        OASUserList userList4 = new OASUserList();

        System.assert(userList1.equals(userList2));
        System.assert(userList3.equals(userList4));
        System.assertEquals(userList1.hashCode(), userList2.hashCode());
        System.assertEquals(userList3.hashCode(), userList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUserList userList = new OASUserList();
        System.assertEquals(new List<OASUser>(), userList.data);
        System.assertEquals(null, userList.metadata);
        System.assertEquals(null, userList.pagination);
    }
}
