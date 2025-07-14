import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CodingsApi
void main() {
  final instance = Openapi().getCodingsApi();

  group(CodingsApi, () {
    // List coding activities in a study
    //
    //Future<CodingList> listCodings(String studyKey, { int page, int size, String sort, String filter }) async
    test('test listCodings', () async {
      // TODO
    });

  });
}
