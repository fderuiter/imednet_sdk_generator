import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for RecordsApi
void main() {
  final instance = Openapi().getRecordsApi();

  group(RecordsApi, () {
    // Add new record or update subject/record data
    //
    //Future<RecordJobStatus> createRecords(String studyKey, BuiltList<ComponentsSchemasRecordCreateRequestItem> componentsSchemasRecordCreateRequestItem) async
    test('test createRecords', () async {
      // TODO
    });

    // List records (eCRF instances) in a study
    //
    //Future<RecordList> listRecords(String studyKey, { int page, int size, String sort, String filter, String recordDataFilter }) async
    test('test listRecords', () async {
      // TODO
    });

  });
}
