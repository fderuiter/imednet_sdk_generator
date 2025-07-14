import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for QueryComment
void main() {
  final instance = QueryCommentBuilder();
  // TODO add properties to the builder and call build()

  group(QueryComment, () {
    // Sequence number of the comment/action in the query history
    // int sequence
    test('to test the property `sequence`', () async {
      // TODO
    });

    // Status of the query after this comment (e.g., Open, Closed)
    // String annotationStatus
    test('to test the property `annotationStatus`', () async {
      // TODO
    });

    // Username of the user who made the comment or action
    // String user
    test('to test the property `user`', () async {
      // TODO
    });

    // Text of the comment
    // String comment
    test('to test the property `comment`', () async {
      // TODO
    });

    // Whether the query was marked closed at this step
    // bool closed
    test('to test the property `closed`', () async {
      // TODO
    });

    // Date of the comment or action
    // String date
    test('to test the property `date`', () async {
      // TODO
    });

  });
}
