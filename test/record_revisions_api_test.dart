import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for RecordRevisionsApi
void main() {
  final instance = Openapi().getRecordRevisionsApi();

  group(RecordRevisionsApi, () {
    // List record revisions (audit trail entries) in a study
    //
    //Future<RecordRevisionList> listRecordRevisions(String studyKey, { int page, int size, String sort, String filter }) async
    test('test listRecordRevisions', () async {
      // TODO
    });

  });
}
