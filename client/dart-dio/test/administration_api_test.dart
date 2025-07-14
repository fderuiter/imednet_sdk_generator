import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AdministrationApi
void main() {
  final instance = Openapi().getAdministrationApi();

  group(AdministrationApi, () {
    // List users and their roles in a study
    //
    //Future<UserList> listUsers(String studyKey, { int page, int size, String sort, bool includeInactive }) async
    test('test listUsers', () async {
      // TODO
    });

  });
}
