import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SitesApi
void main() {
  final instance = Openapi().getSitesApi();

  group(SitesApi, () {
    // List sites for a study
    //
    //Future<SiteList> listSites(String studyKey, { int page, int size, String sort, String filter }) async
    test('test listSites', () async {
      // TODO
    });

  });
}
