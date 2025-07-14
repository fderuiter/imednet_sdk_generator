import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for RecordJobStatus
void main() {
  final instance = RecordJobStatusBuilder();
  // TODO add properties to the builder and call build()

  group(RecordJobStatus, () {
    // Unique job identifier
    // String jobId
    test('to test the property `jobId`', () async {
      // TODO
    });

    // Batch ID used to track the job (identical to jobId in most cases)
    // String batchId
    test('to test the property `batchId`', () async {
      // TODO
    });

    // Current state of the job (e.g., created, completed)
    // String state
    test('to test the property `state`', () async {
      // TODO
    });

  });
}
