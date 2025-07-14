import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for Interval
void main() {
  final instance = IntervalBuilder();
  // TODO add properties to the builder and call build()

  group(Interval, () {
    // Unique study key
    // String studyKey
    test('to test the property `studyKey`', () async {
      // TODO
    });

    // Unique system identifier for the interval (visit definition)
    // int intervalId
    test('to test the property `intervalId`', () async {
      // TODO
    });

    // Name of the interval (visit) as defined in the study
    // String intervalName
    test('to test the property `intervalName`', () async {
      // TODO
    });

    // Description of the interval (visit)
    // String intervalDescription
    test('to test the property `intervalDescription`', () async {
      // TODO
    });

    // Sequence number of the interval in the schedule
    // int intervalSequence
    test('to test the property `intervalSequence`', () async {
      // TODO
    });

    // Identifier for the interval group (if intervals are grouped)
    // int intervalGroupId
    test('to test the property `intervalGroupId`', () async {
      // TODO
    });

    // Name of the interval group
    // String intervalGroupName
    test('to test the property `intervalGroupName`', () async {
      // TODO
    });

    // Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
    // String timeline
    test('to test the property `timeline`', () async {
      // TODO
    });

    // Baseline interval used for calculating this interval’s dates
    // String definedUsingInterval
    test('to test the property `definedUsingInterval`', () async {
      // TODO
    });

    // Baseline form (name) from which the calculation date is taken
    // String windowCalculationForm
    test('to test the property `windowCalculationForm`', () async {
      // TODO
    });

    // Baseline field (variable name) from which the calculation date is taken
    // String windowCalculationDate
    test('to test the property `windowCalculationDate`', () async {
      // TODO
    });

    // Form used to capture the actual date for this interval
    // String actualDateForm
    test('to test the property `actualDateForm`', () async {
      // TODO
    });

    // Field (variable name) used to capture the actual date for this interval
    // String actualDate
    test('to test the property `actualDate`', () async {
      // TODO
    });

    // Number of days from the calculation date when the interval is due
    // int dueDateWillBeIn
    test('to test the property `dueDateWillBeIn`', () async {
      // TODO
    });

    // Number of days before the due date that are allowed (negative window)
    // int negativeSlack
    test('to test the property `negativeSlack`', () async {
      // TODO
    });

    // Number of days after the due date that are allowed (positive window)
    // int positiveSlack
    test('to test the property `positiveSlack`', () async {
      // TODO
    });

    // Number of days of grace period for ePRO completion after due date
    // int eproGracePeriod
    test('to test the property `eproGracePeriod`', () async {
      // TODO
    });

    // List of forms that are scheduled in this interval
    // BuiltList<ComponentsSchemasIntervalFormsItem> forms
    test('to test the property `forms`', () async {
      // TODO
    });

    // Whether the interval is soft-deleted (disabled)
    // bool disabled
    test('to test the property `disabled`', () async {
      // TODO
    });

    // Date when this interval was created
    // String dateCreated
    test('to test the property `dateCreated`', () async {
      // TODO
    });

    // Date when this interval was last modified
    // String dateModified
    test('to test the property `dateModified`', () async {
      // TODO
    });

  });
}
