import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for VisitsApi
void main() {
  final instance = Openapi().getVisitsApi();

  group(VisitsApi, () {
    // List visits (subject visit instances) in a study
    //
    //Future<VisitList> listVisits(String studyKey, { int page, int size, String sort, String filter }) async
    test('test listVisits', () async {
      // TODO
    });

  });
}
