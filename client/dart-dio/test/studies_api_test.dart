import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for StudiesApi
void main() {
  final instance = Openapi().getStudiesApi();

  group(StudiesApi, () {
    // List studies accessible by API key
    //
    //Future<StudyList> listStudies({ int page, int size, String sort, String filter }) async
    test('test listStudies', () async {
      // TODO
    });

  });
}
