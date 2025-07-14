@isTest
private class OASRoleTest {
    @isTest
    private static void equalsSameInstance() {
        OASRole role1 = OASRole.getExample();
        OASRole role2 = role1;
        OASRole role3 = new OASRole();
        OASRole role4 = role3;

        System.assert(role1.equals(role2));
        System.assert(role2.equals(role1));
        System.assert(role1.equals(role1));
        System.assert(role3.equals(role4));
        System.assert(role4.equals(role3));
        System.assert(role3.equals(role3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRole role1 = OASRole.getExample();
        OASRole role2 = OASRole.getExample();
        OASRole role3 = new OASRole();
        OASRole role4 = new OASRole();

        System.assert(role1.equals(role2));
        System.assert(role2.equals(role1));
        System.assert(role3.equals(role4));
        System.assert(role4.equals(role3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRole role1 = OASRole.getExample();
        OASRole role2 = new OASRole();

        System.assertEquals(false, role1.equals('foo'));
        System.assertEquals(false, role2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRole role1 = OASRole.getExample();
        OASRole role2 = new OASRole();
        OASRole role3;

        System.assertEquals(false, role1.equals(role3));
        System.assertEquals(false, role2.equals(role3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRole role1 = OASRole.getExample();
        OASRole role2 = new OASRole();

        System.assertEquals(role1.hashCode(), role1.hashCode());
        System.assertEquals(role2.hashCode(), role2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRole role1 = OASRole.getExample();
        OASRole role2 = OASRole.getExample();
        OASRole role3 = new OASRole();
        OASRole role4 = new OASRole();

        System.assert(role1.equals(role2));
        System.assert(role3.equals(role4));
        System.assertEquals(role1.hashCode(), role2.hashCode());
        System.assertEquals(role3.hashCode(), role4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRole role = new OASRole();
        System.assertEquals(new List<Integer>(), role.dateCreated);
        System.assertEquals(new List<Integer>(), role.dateModified);
        System.assertEquals(null, role.roleId);
        System.assertEquals(null, role.communityId);
        System.assertEquals(null, role.name);
        System.assertEquals(null, role.description);
        System.assertEquals(null, role.level);
        System.assertEquals(null, role.type);
        System.assertEquals(null, role.inactive);
    }
}
