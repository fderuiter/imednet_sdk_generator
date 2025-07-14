//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryComment {
  /// Returns a new [QueryComment] instance.
  QueryComment({
    this.sequence,
    this.annotationStatus,
    this.user,
    this.comment,
    this.closed,
    this.date,
  });

  /// Sequence number of the comment/action in the query history
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequence;

  /// Status of the query after this comment (e.g., Open, Closed)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? annotationStatus;

  /// Username of the user who made the comment or action
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  /// Text of the comment
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  /// Whether the query was marked closed at this step
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? closed;

  /// Date of the comment or action
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? date;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryComment &&
    other.sequence == sequence &&
    other.annotationStatus == annotationStatus &&
    other.user == user &&
    other.comment == comment &&
    other.closed == closed &&
    other.date == date;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sequence == null ? 0 : sequence!.hashCode) +
    (annotationStatus == null ? 0 : annotationStatus!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (closed == null ? 0 : closed!.hashCode) +
    (date == null ? 0 : date!.hashCode);

  @override
  String toString() => 'QueryComment[sequence=$sequence, annotationStatus=$annotationStatus, user=$user, comment=$comment, closed=$closed, date=$date]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sequence != null) {
      json[r'sequence'] = this.sequence;
    } else {
      json[r'sequence'] = null;
    }
    if (this.annotationStatus != null) {
      json[r'annotationStatus'] = this.annotationStatus;
    } else {
      json[r'annotationStatus'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.closed != null) {
      json[r'closed'] = this.closed;
    } else {
      json[r'closed'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    return json;
  }

  /// Returns a new [QueryComment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryComment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryComment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryComment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryComment(
        sequence: mapValueOfType<int>(json, r'sequence'),
        annotationStatus: mapValueOfType<String>(json, r'annotationStatus'),
        user: mapValueOfType<String>(json, r'user'),
        comment: mapValueOfType<String>(json, r'comment'),
        closed: mapValueOfType<bool>(json, r'closed'),
        date: mapValueOfType<String>(json, r'date'),
      );
    }
    return null;
  }

  static List<QueryComment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryComment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryComment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryComment> mapFromJson(dynamic json) {
    final map = <String, QueryComment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryComment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryComment-objects as value to a dart map
  static Map<String, List<QueryComment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryComment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryComment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

