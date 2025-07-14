import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for Query
void main() {
  final instance = QueryBuilder();
  // TODO add properties to the builder and call build()

  group(Query, () {
    // Unique study key
    // String studyKey
    test('to test the property `studyKey`', () async {
      // TODO
    });

    // Mednet subject ID associated with the query (if applicable)
    // int subjectId
    test('to test the property `subjectId`', () async {
      // TODO
    });

    // Client-assigned subject OID (if applicable)
    // String subjectOid
    test('to test the property `subjectOid`', () async {
      // TODO
    });

    // Category/type of the query (e.g., subject, record, question)
    // String annotationType
    test('to test the property `annotationType`', () async {
      // TODO
    });

    // Unique system identifier for the query
    // int annotationId
    test('to test the property `annotationId`', () async {
      // TODO
    });

    // System text identifier for the query type/location (subject, record, question)
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Description of the query (e.g., reason or context)
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Record ID associated with the query (if applicable)
    // int recordId
    test('to test the property `recordId`', () async {
      // TODO
    });

    // Variable name (field) associated with the query (if applicable)
    // String variable
    test('to test the property `variable`', () async {
      // TODO
    });

    // Subject display ID associated with the query (if applicable)
    // String subjectKey
    test('to test the property `subjectKey`', () async {
      // TODO
    });

    // Date when the query was created
    // String dateCreated
    test('to test the property `dateCreated`', () async {
      // TODO
    });

    // Date when the query was last modified
    // String dateModified
    test('to test the property `dateModified`', () async {
      // TODO
    });

    // History of comments/actions on the query
    // BuiltList<QueryComment> queryComments
    test('to test the property `queryComments`', () async {
      // TODO
    });

  });
}
