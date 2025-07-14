//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Metadata {
  /// Returns a new [Metadata] instance.
  Metadata({
    this.status,
    this.method,
    this.path,
    this.timestamp,
    this.error,
  });

  /// HTTP status of the response (e.g., OK or ERROR)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// HTTP method of the request
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// Requested URI path
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Timestamp when response was generated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ComponentsSchemasMetadataError? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Metadata &&
    other.status == status &&
    other.method == method &&
    other.path == path &&
    other.timestamp == timestamp &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status == null ? 0 : status!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'Metadata[status=$status, method=$method, path=$path, timestamp=$timestamp, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [Metadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Metadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Metadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Metadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Metadata(
        status: mapValueOfType<String>(json, r'status'),
        method: mapValueOfType<String>(json, r'method'),
        path: mapValueOfType<String>(json, r'path'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        error: ComponentsSchemasMetadataError.fromJson(json[r'error']),
      );
    }
    return null;
  }

  static List<Metadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Metadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Metadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Metadata> mapFromJson(dynamic json) {
    final map = <String, Metadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Metadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Metadata-objects as value to a dart map
  static Map<String, List<Metadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Metadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Metadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

