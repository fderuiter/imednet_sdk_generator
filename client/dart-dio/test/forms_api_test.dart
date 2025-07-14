import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FormsApi
void main() {
  final instance = Openapi().getFormsApi();

  group(FormsApi, () {
    // List forms in a study
    //
    //Future<FormList> listForms(String studyKey, { int page, int size, String sort, String filter }) async
    test('test listForms', () async {
      // TODO
    });

  });
}
