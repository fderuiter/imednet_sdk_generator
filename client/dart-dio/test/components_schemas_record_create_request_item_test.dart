import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for ComponentsSchemasRecordCreateRequestItem
void main() {
  final instance = ComponentsSchemasRecordCreateRequestItemBuilder();
  // TODO add properties to the builder and call build()

  group(ComponentsSchemasRecordCreateRequestItem, () {
    // Form key identifying the eCRF to create or update
    // String formKey
    test('to test the property `formKey`', () async {
      // TODO
    });

    // Form ID identifying the eCRF to create or update (alternative to formKey)
    // int formId
    test('to test the property `formId`', () async {
      // TODO
    });

    // Name of the site where the record should be created (for new subject registration)
    // String siteName
    test('to test the property `siteName`', () async {
      // TODO
    });

    // Site ID for the record (alternative to siteName)
    // int siteId
    test('to test the property `siteId`', () async {
      // TODO
    });

    // Subject identifier (display ID) for which to create or update the record
    // String subjectKey
    test('to test the property `subjectKey`', () async {
      // TODO
    });

    // Subject ID for which to create or update the record (alternative to subjectKey)
    // int subjectId
    test('to test the property `subjectId`', () async {
      // TODO
    });

    // Subject OID for which to create or update the record (alternative to subjectKey)
    // String subjectOid
    test('to test the property `subjectOid`', () async {
      // TODO
    });

    // Name of the interval (visit) for a scheduled record update
    // String intervalName
    test('to test the property `intervalName`', () async {
      // TODO
    });

    // Interval ID for a scheduled record update (alternative to intervalName)
    // int intervalId
    test('to test the property `intervalId`', () async {
      // TODO
    });

    // Record ID for updating an existing unscheduled record (if applicable)
    // int recordId
    test('to test the property `recordId`', () async {
      // TODO
    });

    // Record OID for updating an existing unscheduled record (if applicable)
    // String recordOid
    test('to test the property `recordOid`', () async {
      // TODO
    });

    // Key-value pairs of field names and values for the record data
    // BuiltMap<String, JsonObject> data
    test('to test the property `data`', () async {
      // TODO
    });

  });
}
