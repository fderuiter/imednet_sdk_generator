import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for JobsApi
void main() {
  final instance = Openapi().getJobsApi();

  group(JobsApi, () {
    // Retrieve job status by batch ID
    //
    //Future<Job> getJobStatus(String studyKey, String batchId) async
    test('test getJobStatus', () async {
      // TODO
    });

  });
}
