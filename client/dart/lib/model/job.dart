//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Job {
  /// Returns a new [Job] instance.
  Job({
    this.jobId,
    this.batchId,
    this.state,
    this.dateCreated,
    this.dateStarted,
    this.dateFinished,
  });

  /// Unique job identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jobId;

  /// Batch ID associated with the job (useful for linking with record creation requests)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? batchId;

  /// State of the job (e.g., completed, pending)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Timestamp when the job was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  /// Timestamp when the job started processing
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateStarted;

  /// Timestamp when the job finished processing
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateFinished;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Job &&
    other.jobId == jobId &&
    other.batchId == batchId &&
    other.state == state &&
    other.dateCreated == dateCreated &&
    other.dateStarted == dateStarted &&
    other.dateFinished == dateFinished;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jobId == null ? 0 : jobId!.hashCode) +
    (batchId == null ? 0 : batchId!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateStarted == null ? 0 : dateStarted!.hashCode) +
    (dateFinished == null ? 0 : dateFinished!.hashCode);

  @override
  String toString() => 'Job[jobId=$jobId, batchId=$batchId, state=$state, dateCreated=$dateCreated, dateStarted=$dateStarted, dateFinished=$dateFinished]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.jobId != null) {
      json[r'jobId'] = this.jobId;
    } else {
      json[r'jobId'] = null;
    }
    if (this.batchId != null) {
      json[r'batchId'] = this.batchId;
    } else {
      json[r'batchId'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.dateCreated != null) {
      json[r'dateCreated'] = this.dateCreated;
    } else {
      json[r'dateCreated'] = null;
    }
    if (this.dateStarted != null) {
      json[r'dateStarted'] = this.dateStarted;
    } else {
      json[r'dateStarted'] = null;
    }
    if (this.dateFinished != null) {
      json[r'dateFinished'] = this.dateFinished;
    } else {
      json[r'dateFinished'] = null;
    }
    return json;
  }

  /// Returns a new [Job] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Job? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Job[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Job[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Job(
        jobId: mapValueOfType<String>(json, r'jobId'),
        batchId: mapValueOfType<String>(json, r'batchId'),
        state: mapValueOfType<String>(json, r'state'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
        dateStarted: mapValueOfType<String>(json, r'dateStarted'),
        dateFinished: mapValueOfType<String>(json, r'dateFinished'),
      );
    }
    return null;
  }

  static List<Job> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Job>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Job.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Job> mapFromJson(dynamic json) {
    final map = <String, Job>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Job.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Job-objects as value to a dart map
  static Map<String, List<Job>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Job>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Job.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

