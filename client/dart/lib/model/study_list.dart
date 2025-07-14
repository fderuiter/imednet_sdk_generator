//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StudyList {
  /// Returns a new [StudyList] instance.
  StudyList({
    this.metadata,
    this.pagination,
    this.data = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Metadata? metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Pagination? pagination;

  List<Study> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StudyList &&
    other.metadata == metadata &&
    other.pagination == pagination &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metadata == null ? 0 : metadata!.hashCode) +
    (pagination == null ? 0 : pagination!.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'StudyList[metadata=$metadata, pagination=$pagination, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.pagination != null) {
      json[r'pagination'] = this.pagination;
    } else {
      json[r'pagination'] = null;
    }
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [StudyList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StudyList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StudyList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StudyList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StudyList(
        metadata: Metadata.fromJson(json[r'metadata']),
        pagination: Pagination.fromJson(json[r'pagination']),
        data: Study.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<StudyList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StudyList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StudyList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StudyList> mapFromJson(dynamic json) {
    final map = <String, StudyList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StudyList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StudyList-objects as value to a dart map
  static Map<String, List<StudyList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StudyList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StudyList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

