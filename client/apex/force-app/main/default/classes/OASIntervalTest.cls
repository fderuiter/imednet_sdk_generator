@isTest
private class OASIntervalTest {
    @isTest
    private static void equalsSameInstance() {
        OASInterval interval1 = OASInterval.getExample();
        OASInterval interval2 = interval1;
        OASInterval interval3 = new OASInterval();
        OASInterval interval4 = interval3;

        System.assert(interval1.equals(interval2));
        System.assert(interval2.equals(interval1));
        System.assert(interval1.equals(interval1));
        System.assert(interval3.equals(interval4));
        System.assert(interval4.equals(interval3));
        System.assert(interval3.equals(interval3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInterval interval1 = OASInterval.getExample();
        OASInterval interval2 = OASInterval.getExample();
        OASInterval interval3 = new OASInterval();
        OASInterval interval4 = new OASInterval();

        System.assert(interval1.equals(interval2));
        System.assert(interval2.equals(interval1));
        System.assert(interval3.equals(interval4));
        System.assert(interval4.equals(interval3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInterval interval1 = OASInterval.getExample();
        OASInterval interval2 = new OASInterval();

        System.assertEquals(false, interval1.equals('foo'));
        System.assertEquals(false, interval2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInterval interval1 = OASInterval.getExample();
        OASInterval interval2 = new OASInterval();
        OASInterval interval3;

        System.assertEquals(false, interval1.equals(interval3));
        System.assertEquals(false, interval2.equals(interval3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInterval interval1 = OASInterval.getExample();
        OASInterval interval2 = new OASInterval();

        System.assertEquals(interval1.hashCode(), interval1.hashCode());
        System.assertEquals(interval2.hashCode(), interval2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInterval interval1 = OASInterval.getExample();
        OASInterval interval2 = OASInterval.getExample();
        OASInterval interval3 = new OASInterval();
        OASInterval interval4 = new OASInterval();

        System.assert(interval1.equals(interval2));
        System.assert(interval3.equals(interval4));
        System.assertEquals(interval1.hashCode(), interval2.hashCode());
        System.assertEquals(interval3.hashCode(), interval4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInterval interval = new OASInterval();
        System.assertEquals(new List<OASComponentsSchemasIntervalFormsIte>(), interval.forms);
        System.assertEquals(null, interval.studyKey);
        System.assertEquals(null, interval.intervalId);
        System.assertEquals(null, interval.intervalName);
        System.assertEquals(null, interval.intervalDescription);
        System.assertEquals(null, interval.intervalSequence);
        System.assertEquals(null, interval.intervalGroupId);
        System.assertEquals(null, interval.intervalGroupName);
        System.assertEquals(null, interval.timeline);
        System.assertEquals(null, interval.definedUsingInterval);
        System.assertEquals(null, interval.windowCalculationForm);
        System.assertEquals(null, interval.windowCalculationDate);
        System.assertEquals(null, interval.actualDateForm);
        System.assertEquals(null, interval.actualDate);
        System.assertEquals(null, interval.dueDateWillBeIn);
        System.assertEquals(null, interval.negativeSlack);
        System.assertEquals(null, interval.positiveSlack);
        System.assertEquals(null, interval.eproGracePeriod);
        System.assertEquals(null, interval.disabled);
        System.assertEquals(null, interval.dateCreated);
        System.assertEquals(null, interval.dateModified);
    }
}
