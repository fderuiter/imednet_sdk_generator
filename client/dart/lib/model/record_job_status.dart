//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RecordJobStatus {
  /// Returns a new [RecordJobStatus] instance.
  RecordJobStatus({
    this.jobId,
    this.batchId,
    this.state,
  });

  /// Unique job identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jobId;

  /// Batch ID used to track the job (identical to jobId in most cases)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? batchId;

  /// Current state of the job (e.g., created, completed)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecordJobStatus &&
    other.jobId == jobId &&
    other.batchId == batchId &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jobId == null ? 0 : jobId!.hashCode) +
    (batchId == null ? 0 : batchId!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'RecordJobStatus[jobId=$jobId, batchId=$batchId, state=$state]';

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
    return json;
  }

  /// Returns a new [RecordJobStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecordJobStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecordJobStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecordJobStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecordJobStatus(
        jobId: mapValueOfType<String>(json, r'jobId'),
        batchId: mapValueOfType<String>(json, r'batchId'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<RecordJobStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecordJobStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecordJobStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecordJobStatus> mapFromJson(dynamic json) {
    final map = <String, RecordJobStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecordJobStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecordJobStatus-objects as value to a dart map
  static Map<String, List<RecordJobStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecordJobStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecordJobStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

