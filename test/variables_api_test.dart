import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for VariablesApi
void main() {
  final instance = Openapi().getVariablesApi();

  group(VariablesApi, () {
    // List variables (fields) in a study
    //
    //Future<VariableList> listVariables(String studyKey, { int page, int size, String sort, String filter }) async
    test('test listVariables', () async {
      // TODO
    });

  });
}
