import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for IntervalsApi
void main() {
  final instance = Openapi().getIntervalsApi();

  group(IntervalsApi, () {
    // List intervals (visit definitions) in a study
    //
    //Future<IntervalList> listIntervals(String studyKey, { int page, int size, String sort, String filter }) async
    test('test listIntervals', () async {
      // TODO
    });

  });
}
