//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Query {
  /// Returns a new [Query] instance.
  Query({
    this.studyKey,
    this.subjectId,
    this.subjectOid,
    this.annotationType,
    this.annotationId,
    this.type,
    this.description,
    this.recordId,
    this.variable,
    this.subjectKey,
    this.dateCreated,
    this.dateModified,
    this.queryComments = const [],
  });

  /// Unique study key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyKey;

  /// Mednet subject ID associated with the query (if applicable)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjectId;

  /// Client-assigned subject OID (if applicable)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectOid;

  /// Category/type of the query (e.g., subject, record, question)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? annotationType;

  /// Unique system identifier for the query
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? annotationId;

  /// System text identifier for the query type/location (subject, record, question)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Description of the query (e.g., reason or context)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Record ID associated with the query (if applicable)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recordId;

  /// Variable name (field) associated with the query (if applicable)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variable;

  /// Subject display ID associated with the query (if applicable)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectKey;

  /// Date when the query was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  /// Date when the query was last modified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateModified;

  /// History of comments/actions on the query
  List<QueryComment> queryComments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Query &&
    other.studyKey == studyKey &&
    other.subjectId == subjectId &&
    other.subjectOid == subjectOid &&
    other.annotationType == annotationType &&
    other.annotationId == annotationId &&
    other.type == type &&
    other.description == description &&
    other.recordId == recordId &&
    other.variable == variable &&
    other.subjectKey == subjectKey &&
    other.dateCreated == dateCreated &&
    other.dateModified == dateModified &&
    _deepEquality.equals(other.queryComments, queryComments);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (subjectOid == null ? 0 : subjectOid!.hashCode) +
    (annotationType == null ? 0 : annotationType!.hashCode) +
    (annotationId == null ? 0 : annotationId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (recordId == null ? 0 : recordId!.hashCode) +
    (variable == null ? 0 : variable!.hashCode) +
    (subjectKey == null ? 0 : subjectKey!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateModified == null ? 0 : dateModified!.hashCode) +
    (queryComments.hashCode);

  @override
  String toString() => 'Query[studyKey=$studyKey, subjectId=$subjectId, subjectOid=$subjectOid, annotationType=$annotationType, annotationId=$annotationId, type=$type, description=$description, recordId=$recordId, variable=$variable, subjectKey=$subjectKey, dateCreated=$dateCreated, dateModified=$dateModified, queryComments=$queryComments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.studyKey != null) {
      json[r'studyKey'] = this.studyKey;
    } else {
      json[r'studyKey'] = null;
    }
    if (this.subjectId != null) {
      json[r'subjectId'] = this.subjectId;
    } else {
      json[r'subjectId'] = null;
    }
    if (this.subjectOid != null) {
      json[r'subjectOid'] = this.subjectOid;
    } else {
      json[r'subjectOid'] = null;
    }
    if (this.annotationType != null) {
      json[r'annotationType'] = this.annotationType;
    } else {
      json[r'annotationType'] = null;
    }
    if (this.annotationId != null) {
      json[r'annotationId'] = this.annotationId;
    } else {
      json[r'annotationId'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.recordId != null) {
      json[r'recordId'] = this.recordId;
    } else {
      json[r'recordId'] = null;
    }
    if (this.variable != null) {
      json[r'variable'] = this.variable;
    } else {
      json[r'variable'] = null;
    }
    if (this.subjectKey != null) {
      json[r'subjectKey'] = this.subjectKey;
    } else {
      json[r'subjectKey'] = null;
    }
    if (this.dateCreated != null) {
      json[r'dateCreated'] = this.dateCreated;
    } else {
      json[r'dateCreated'] = null;
    }
    if (this.dateModified != null) {
      json[r'dateModified'] = this.dateModified;
    } else {
      json[r'dateModified'] = null;
    }
      json[r'queryComments'] = this.queryComments;
    return json;
  }

  /// Returns a new [Query] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Query? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Query[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Query[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Query(
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        subjectId: mapValueOfType<int>(json, r'subjectId'),
        subjectOid: mapValueOfType<String>(json, r'subjectOid'),
        annotationType: mapValueOfType<String>(json, r'annotationType'),
        annotationId: mapValueOfType<int>(json, r'annotationId'),
        type: mapValueOfType<String>(json, r'type'),
        description: mapValueOfType<String>(json, r'description'),
        recordId: mapValueOfType<int>(json, r'recordId'),
        variable: mapValueOfType<String>(json, r'variable'),
        subjectKey: mapValueOfType<String>(json, r'subjectKey'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
        dateModified: mapValueOfType<String>(json, r'dateModified'),
        queryComments: QueryComment.listFromJson(json[r'queryComments']),
      );
    }
    return null;
  }

  static List<Query> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Query>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Query.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Query> mapFromJson(dynamic json) {
    final map = <String, Query>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Query.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Query-objects as value to a dart map
  static Map<String, List<Query>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Query>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Query.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

