//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Visit {
  /// Returns a new [Visit] instance.
  Visit({
    this.studyKey,
    this.visitId,
    this.intervalId,
    this.intervalName,
    this.subjectId,
    this.subjectKey,
    this.startDate,
    this.endDate,
    this.dueDate,
    this.visitDate,
    this.visitDateForm,
    this.visitDateQuestion,
    this.deleted,
    this.dateCreated,
    this.dateModified,
  });

  /// Unique study key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyKey;

  /// Unique system identifier for the subject visit instance
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? visitId;

  /// Unique system identifier of the interval definition for this visit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? intervalId;

  /// Name of the interval (visit) for this visit instance
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? intervalName;

  /// Mednet subject ID of the subject
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjectId;

  /// Protocol-assigned subject identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectKey;

  /// Start date of the visit window (in YYYY-MM-DD format)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startDate;

  /// End date of the visit window (in YYYY-MM-DD format)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endDate;

  /// Due date of the visit (in YYYY-MM-DD format), if applicable
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dueDate;

  /// Actual date the visit took place (in YYYY-MM-DD format)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? visitDate;

  /// Name of the form used to capture the actual visit date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? visitDateForm;

  /// Variable name of the field capturing the actual visit date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? visitDateQuestion;

  /// Whether the visit instance is marked as deleted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  /// Date when this visit record was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  /// Date when this visit record was last modified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateModified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Visit &&
    other.studyKey == studyKey &&
    other.visitId == visitId &&
    other.intervalId == intervalId &&
    other.intervalName == intervalName &&
    other.subjectId == subjectId &&
    other.subjectKey == subjectKey &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.dueDate == dueDate &&
    other.visitDate == visitDate &&
    other.visitDateForm == visitDateForm &&
    other.visitDateQuestion == visitDateQuestion &&
    other.deleted == deleted &&
    other.dateCreated == dateCreated &&
    other.dateModified == dateModified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (visitId == null ? 0 : visitId!.hashCode) +
    (intervalId == null ? 0 : intervalId!.hashCode) +
    (intervalName == null ? 0 : intervalName!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (subjectKey == null ? 0 : subjectKey!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (visitDate == null ? 0 : visitDate!.hashCode) +
    (visitDateForm == null ? 0 : visitDateForm!.hashCode) +
    (visitDateQuestion == null ? 0 : visitDateQuestion!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateModified == null ? 0 : dateModified!.hashCode);

  @override
  String toString() => 'Visit[studyKey=$studyKey, visitId=$visitId, intervalId=$intervalId, intervalName=$intervalName, subjectId=$subjectId, subjectKey=$subjectKey, startDate=$startDate, endDate=$endDate, dueDate=$dueDate, visitDate=$visitDate, visitDateForm=$visitDateForm, visitDateQuestion=$visitDateQuestion, deleted=$deleted, dateCreated=$dateCreated, dateModified=$dateModified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.studyKey != null) {
      json[r'studyKey'] = this.studyKey;
    } else {
      json[r'studyKey'] = null;
    }
    if (this.visitId != null) {
      json[r'visitId'] = this.visitId;
    } else {
      json[r'visitId'] = null;
    }
    if (this.intervalId != null) {
      json[r'intervalId'] = this.intervalId;
    } else {
      json[r'intervalId'] = null;
    }
    if (this.intervalName != null) {
      json[r'intervalName'] = this.intervalName;
    } else {
      json[r'intervalName'] = null;
    }
    if (this.subjectId != null) {
      json[r'subjectId'] = this.subjectId;
    } else {
      json[r'subjectId'] = null;
    }
    if (this.subjectKey != null) {
      json[r'subjectKey'] = this.subjectKey;
    } else {
      json[r'subjectKey'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate;
    } else {
      json[r'endDate'] = null;
    }
    if (this.dueDate != null) {
      json[r'dueDate'] = this.dueDate;
    } else {
      json[r'dueDate'] = null;
    }
    if (this.visitDate != null) {
      json[r'visitDate'] = this.visitDate;
    } else {
      json[r'visitDate'] = null;
    }
    if (this.visitDateForm != null) {
      json[r'visitDateForm'] = this.visitDateForm;
    } else {
      json[r'visitDateForm'] = null;
    }
    if (this.visitDateQuestion != null) {
      json[r'visitDateQuestion'] = this.visitDateQuestion;
    } else {
      json[r'visitDateQuestion'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
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
    return json;
  }

  /// Returns a new [Visit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Visit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Visit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Visit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Visit(
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        visitId: mapValueOfType<int>(json, r'visitId'),
        intervalId: mapValueOfType<int>(json, r'intervalId'),
        intervalName: mapValueOfType<String>(json, r'intervalName'),
        subjectId: mapValueOfType<int>(json, r'subjectId'),
        subjectKey: mapValueOfType<String>(json, r'subjectKey'),
        startDate: mapValueOfType<String>(json, r'startDate'),
        endDate: mapValueOfType<String>(json, r'endDate'),
        dueDate: mapValueOfType<String>(json, r'dueDate'),
        visitDate: mapValueOfType<String>(json, r'visitDate'),
        visitDateForm: mapValueOfType<String>(json, r'visitDateForm'),
        visitDateQuestion: mapValueOfType<String>(json, r'visitDateQuestion'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
        dateModified: mapValueOfType<String>(json, r'dateModified'),
      );
    }
    return null;
  }

  static List<Visit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Visit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Visit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Visit> mapFromJson(dynamic json) {
    final map = <String, Visit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Visit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Visit-objects as value to a dart map
  static Map<String, List<Visit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Visit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Visit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

