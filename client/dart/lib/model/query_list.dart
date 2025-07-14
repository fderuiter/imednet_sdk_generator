//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryList {
  /// Returns a new [QueryList] instance.
  QueryList({
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

  List<Query> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryList &&
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
  String toString() => 'QueryList[metadata=$metadata, pagination=$pagination, data=$data]';

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

  /// Returns a new [QueryList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryList(
        metadata: Metadata.fromJson(json[r'metadata']),
        pagination: Pagination.fromJson(json[r'pagination']),
        data: Query.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<QueryList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryList> mapFromJson(dynamic json) {
    final map = <String, QueryList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryList-objects as value to a dart map
  static Map<String, List<QueryList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

