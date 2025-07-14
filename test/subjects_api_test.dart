import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SubjectsApi
void main() {
  final instance = Openapi().getSubjectsApi();

  group(SubjectsApi, () {
    // List subjects in a study
    //
    //Future<SubjectList> listSubjects(String studyKey, { int page, int size, String sort, String filter }) async
    test('test listSubjects', () async {
      // TODO
    });

  });
}
