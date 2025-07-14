//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Record {
  /// Returns a new [Record] instance.
  Record({
    this.studyKey,
    this.intervalId,
    this.formId,
    this.formKey,
    this.siteId,
    this.recordId,
    this.recordOid,
    this.recordType,
    this.recordStatus,
    this.deleted,
    this.dateCreated,
    this.dateModified,
    this.subjectId,
    this.subjectOid,
    this.subjectKey,
    this.visitId,
    this.parentRecordId,
    this.keywords = const [],
    this.recordData = const {},
  });

  /// Unique study key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyKey;

  /// Interval ID (visit definition) that this record is associated with
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? intervalId;

  /// Form ID of the form this record instance belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? formId;

  /// Form key of the form for this record instance
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formKey;

  /// Site ID associated with the record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? siteId;

  /// Unique record ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recordId;

  /// Client-assigned record OID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recordOid;

  /// Type of record (e.g., SUBJECT for subject-related forms)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recordType;

  /// Current status of the record (e.g., Record Incomplete, Record Complete)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recordStatus;

  /// Whether the record is marked as deleted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  /// Date when this record was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  /// Date when this record was last modified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateModified;

  /// Mednet subject ID that this record is associated with
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjectId;

  /// Client-assigned subject OID for the subject this record is associated with
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectOid;

  /// Subject display ID that this record is associated with
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectKey;

  /// Visit instance ID that this record is associated with (if applicable)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? visitId;

  /// Record ID of the parent record if this record is a subrecord (if applicable)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentRecordId;

  /// List of keywords associated with the record
  List<Keyword> keywords;

  /// Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.
  Map<String, Object> recordData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Record &&
    other.studyKey == studyKey &&
    other.intervalId == intervalId &&
    other.formId == formId &&
    other.formKey == formKey &&
    other.siteId == siteId &&
    other.recordId == recordId &&
    other.recordOid == recordOid &&
    other.recordType == recordType &&
    other.recordStatus == recordStatus &&
    other.deleted == deleted &&
    other.dateCreated == dateCreated &&
    other.dateModified == dateModified &&
    other.subjectId == subjectId &&
    other.subjectOid == subjectOid &&
    other.subjectKey == subjectKey &&
    other.visitId == visitId &&
    other.parentRecordId == parentRecordId &&
    _deepEquality.equals(other.keywords, keywords) &&
    _deepEquality.equals(other.recordData, recordData);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (intervalId == null ? 0 : intervalId!.hashCode) +
    (formId == null ? 0 : formId!.hashCode) +
    (formKey == null ? 0 : formKey!.hashCode) +
    (siteId == null ? 0 : siteId!.hashCode) +
    (recordId == null ? 0 : recordId!.hashCode) +
    (recordOid == null ? 0 : recordOid!.hashCode) +
    (recordType == null ? 0 : recordType!.hashCode) +
    (recordStatus == null ? 0 : recordStatus!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateModified == null ? 0 : dateModified!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (subjectOid == null ? 0 : subjectOid!.hashCode) +
    (subjectKey == null ? 0 : subjectKey!.hashCode) +
    (visitId == null ? 0 : visitId!.hashCode) +
    (parentRecordId == null ? 0 : parentRecordId!.hashCode) +
    (keywords.hashCode) +
    (recordData.hashCode);

  @override
  String toString() => 'Record[studyKey=$studyKey, intervalId=$intervalId, formId=$formId, formKey=$formKey, siteId=$siteId, recordId=$recordId, recordOid=$recordOid, recordType=$recordType, recordStatus=$recordStatus, deleted=$deleted, dateCreated=$dateCreated, dateModified=$dateModified, subjectId=$subjectId, subjectOid=$subjectOid, subjectKey=$subjectKey, visitId=$visitId, parentRecordId=$parentRecordId, keywords=$keywords, recordData=$recordData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.studyKey != null) {
      json[r'studyKey'] = this.studyKey;
    } else {
      json[r'studyKey'] = null;
    }
    if (this.intervalId != null) {
      json[r'intervalId'] = this.intervalId;
    } else {
      json[r'intervalId'] = null;
    }
    if (this.formId != null) {
      json[r'formId'] = this.formId;
    } else {
      json[r'formId'] = null;
    }
    if (this.formKey != null) {
      json[r'formKey'] = this.formKey;
    } else {
      json[r'formKey'] = null;
    }
    if (this.siteId != null) {
      json[r'siteId'] = this.siteId;
    } else {
      json[r'siteId'] = null;
    }
    if (this.recordId != null) {
      json[r'recordId'] = this.recordId;
    } else {
      json[r'recordId'] = null;
    }
    if (this.recordOid != null) {
      json[r'recordOid'] = this.recordOid;
    } else {
      json[r'recordOid'] = null;
    }
    if (this.recordType != null) {
      json[r'recordType'] = this.recordType;
    } else {
      json[r'recordType'] = null;
    }
    if (this.recordStatus != null) {
      json[r'recordStatus'] = this.recordStatus;
    } else {
      json[r'recordStatus'] = null;
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
    if (this.visitId != null) {
      json[r'visitId'] = this.visitId;
    } else {
      json[r'visitId'] = null;
    }
    if (this.parentRecordId != null) {
      json[r'parentRecordId'] = this.parentRecordId;
    } else {
      json[r'parentRecordId'] = null;
    }
      json[r'keywords'] = this.keywords;
      json[r'recordData'] = this.recordData;
    return json;
  }

  /// Returns a new [Record] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Record? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Record[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Record[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Record(
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        intervalId: mapValueOfType<int>(json, r'intervalId'),
        formId: mapValueOfType<int>(json, r'formId'),
        formKey: mapValueOfType<String>(json, r'formKey'),
        siteId: mapValueOfType<int>(json, r'siteId'),
        recordId: mapValueOfType<int>(json, r'recordId'),
        recordOid: mapValueOfType<String>(json, r'recordOid'),
        recordType: mapValueOfType<String>(json, r'recordType'),
        recordStatus: mapValueOfType<String>(json, r'recordStatus'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
        dateModified: mapValueOfType<String>(json, r'dateModified'),
        subjectId: mapValueOfType<int>(json, r'subjectId'),
        subjectOid: mapValueOfType<String>(json, r'subjectOid'),
        subjectKey: mapValueOfType<String>(json, r'subjectKey'),
        visitId: mapValueOfType<int>(json, r'visitId'),
        parentRecordId: mapValueOfType<int>(json, r'parentRecordId'),
        keywords: Keyword.listFromJson(json[r'keywords']),
        recordData: mapCastOfType<String, Object>(json, r'recordData') ?? const {},
      );
    }
    return null;
  }

  static List<Record> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Record>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Record.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Record> mapFromJson(dynamic json) {
    final map = <String, Record>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Record.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Record-objects as value to a dart map
  static Map<String, List<Record>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Record>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Record.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

