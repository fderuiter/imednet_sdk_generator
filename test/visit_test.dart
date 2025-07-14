import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for Visit
void main() {
  final instance = VisitBuilder();
  // TODO add properties to the builder and call build()

  group(Visit, () {
    // Unique study key
    // String studyKey
    test('to test the property `studyKey`', () async {
      // TODO
    });

    // Unique system identifier for the subject visit instance
    // int visitId
    test('to test the property `visitId`', () async {
      // TODO
    });

    // Unique system identifier of the interval definition for this visit
    // int intervalId
    test('to test the property `intervalId`', () async {
      // TODO
    });

    // Name of the interval (visit) for this visit instance
    // String intervalName
    test('to test the property `intervalName`', () async {
      // TODO
    });

    // Mednet subject ID of the subject
    // int subjectId
    test('to test the property `subjectId`', () async {
      // TODO
    });

    // Protocol-assigned subject identifier
    // String subjectKey
    test('to test the property `subjectKey`', () async {
      // TODO
    });

    // Start date of the visit window (in YYYY-MM-DD format)
    // String startDate
    test('to test the property `startDate`', () async {
      // TODO
    });

    // End date of the visit window (in YYYY-MM-DD format)
    // String endDate
    test('to test the property `endDate`', () async {
      // TODO
    });

    // Due date of the visit (in YYYY-MM-DD format), if applicable
    // String dueDate
    test('to test the property `dueDate`', () async {
      // TODO
    });

    // Actual date the visit took place (in YYYY-MM-DD format)
    // String visitDate
    test('to test the property `visitDate`', () async {
      // TODO
    });

    // Name of the form used to capture the actual visit date
    // String visitDateForm
    test('to test the property `visitDateForm`', () async {
      // TODO
    });

    // Variable name of the field capturing the actual visit date
    // String visitDateQuestion
    test('to test the property `visitDateQuestion`', () async {
      // TODO
    });

    // Whether the visit instance is marked as deleted
    // bool deleted
    test('to test the property `deleted`', () async {
      // TODO
    });

    // Date when this visit record was created
    // String dateCreated
    test('to test the property `dateCreated`', () async {
      // TODO
    });

    // Date when this visit record was last modified
    // String dateModified
    test('to test the property `dateModified`', () async {
      // TODO
    });

  });
}
