//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Subject {
  /// Returns a new [Subject] instance.
  Subject({
    this.studyKey,
    this.subjectId,
    this.subjectOid,
    this.subjectKey,
    this.subjectStatus,
    this.siteId,
    this.siteName,
    this.deleted,
    this.enrollmentStartDate,
    this.dateCreated,
    this.dateModified,
    this.keywords = const [],
  });

  /// Unique study key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyKey;

  /// Mednet subject ID (internal numeric ID)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjectId;

  /// Client-assigned subject object identifier (OID)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectOid;

  /// Protocol-assigned subject identifier (display ID)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectKey;

  /// Current status of the subject (e.g., Enrolled)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectStatus;

  /// Mednet site ID the subject is associated with
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? siteId;

  /// Name of the site the subject is associated with
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siteName;

  /// Whether the subject is marked as deleted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  /// Subject’s enrollment start date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? enrollmentStartDate;

  /// Date when this subject record was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  /// Date when this subject record was last modified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateModified;

  /// List of keywords associated with the subject
  List<Keyword> keywords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Subject &&
    other.studyKey == studyKey &&
    other.subjectId == subjectId &&
    other.subjectOid == subjectOid &&
    other.subjectKey == subjectKey &&
    other.subjectStatus == subjectStatus &&
    other.siteId == siteId &&
    other.siteName == siteName &&
    other.deleted == deleted &&
    other.enrollmentStartDate == enrollmentStartDate &&
    other.dateCreated == dateCreated &&
    other.dateModified == dateModified &&
    _deepEquality.equals(other.keywords, keywords);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (subjectOid == null ? 0 : subjectOid!.hashCode) +
    (subjectKey == null ? 0 : subjectKey!.hashCode) +
    (subjectStatus == null ? 0 : subjectStatus!.hashCode) +
    (siteId == null ? 0 : siteId!.hashCode) +
    (siteName == null ? 0 : siteName!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (enrollmentStartDate == null ? 0 : enrollmentStartDate!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateModified == null ? 0 : dateModified!.hashCode) +
    (keywords.hashCode);

  @override
  String toString() => 'Subject[studyKey=$studyKey, subjectId=$subjectId, subjectOid=$subjectOid, subjectKey=$subjectKey, subjectStatus=$subjectStatus, siteId=$siteId, siteName=$siteName, deleted=$deleted, enrollmentStartDate=$enrollmentStartDate, dateCreated=$dateCreated, dateModified=$dateModified, keywords=$keywords]';

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
    if (this.subjectKey != null) {
      json[r'subjectKey'] = this.subjectKey;
    } else {
      json[r'subjectKey'] = null;
    }
    if (this.subjectStatus != null) {
      json[r'subjectStatus'] = this.subjectStatus;
    } else {
      json[r'subjectStatus'] = null;
    }
    if (this.siteId != null) {
      json[r'siteId'] = this.siteId;
    } else {
      json[r'siteId'] = null;
    }
    if (this.siteName != null) {
      json[r'siteName'] = this.siteName;
    } else {
      json[r'siteName'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    if (this.enrollmentStartDate != null) {
      json[r'enrollmentStartDate'] = this.enrollmentStartDate;
    } else {
      json[r'enrollmentStartDate'] = null;
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
      json[r'keywords'] = this.keywords;
    return json;
  }

  /// Returns a new [Subject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Subject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Subject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Subject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Subject(
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        subjectId: mapValueOfType<int>(json, r'subjectId'),
        subjectOid: mapValueOfType<String>(json, r'subjectOid'),
        subjectKey: mapValueOfType<String>(json, r'subjectKey'),
        subjectStatus: mapValueOfType<String>(json, r'subjectStatus'),
        siteId: mapValueOfType<int>(json, r'siteId'),
        siteName: mapValueOfType<String>(json, r'siteName'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        enrollmentStartDate: mapValueOfType<String>(json, r'enrollmentStartDate'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
        dateModified: mapValueOfType<String>(json, r'dateModified'),
        keywords: Keyword.listFromJson(json[r'keywords']),
      );
    }
    return null;
  }

  static List<Subject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Subject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Subject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Subject> mapFromJson(dynamic json) {
    final map = <String, Subject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Subject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Subject-objects as value to a dart map
  static Map<String, List<Subject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Subject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Subject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

