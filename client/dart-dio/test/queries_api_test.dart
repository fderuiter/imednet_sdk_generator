import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for QueriesApi
void main() {
  final instance = Openapi().getQueriesApi();

  group(QueriesApi, () {
    // List data queries in a study
    //
    //Future<QueryList> listQueries(String studyKey, { int page, int size, String sort, String filter }) async
    test('test listQueries', () async {
      // TODO
    });

  });
}
