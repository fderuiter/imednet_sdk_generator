import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for Job
void main() {
  final instance = JobBuilder();
  // TODO add properties to the builder and call build()

  group(Job, () {
    // Unique job identifier
    // String jobId
    test('to test the property `jobId`', () async {
      // TODO
    });

    // Batch ID associated with the job (useful for linking with record creation requests)
    // String batchId
    test('to test the property `batchId`', () async {
      // TODO
    });

    // State of the job (e.g., completed, pending)
    // String state
    test('to test the property `state`', () async {
      // TODO
    });

    // Timestamp when the job was created
    // String dateCreated
    test('to test the property `dateCreated`', () async {
      // TODO
    });

    // Timestamp when the job started processing
    // String dateStarted
    test('to test the property `dateStarted`', () async {
      // TODO
    });

    // Timestamp when the job finished processing
    // String dateFinished
    test('to test the property `dateFinished`', () async {
      // TODO
    });

  });
}
