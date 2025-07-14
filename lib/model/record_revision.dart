//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RecordRevision {
  /// Returns a new [RecordRevision] instance.
  RecordRevision({
    this.studyKey,
    this.recordRevisionId,
    this.recordId,
    this.recordOid,
    this.recordRevision,
    this.dataRevision,
    this.recordStatus,
    this.subjectId,
    this.subjectOid,
    this.subjectKey,
    this.siteId,
    this.formKey,
    this.intervalId,
    this.role,
    this.user,
    this.reasonForChange,
    this.deleted,
    this.dateCreated,
  });

  /// Unique study key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyKey;

  /// Unique system identifier for the record revision
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recordRevisionId;

  /// Unique system identifier of the related record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recordId;

  /// Client-assigned record OID (if any)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recordOid;

  /// Revision number of the record (version of the record status)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recordRevision;

  /// Revision number of the data within the record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dataRevision;

  /// Status of the record at this revision (user-defined status label)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recordStatus;

  /// Mednet subject ID related to the record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjectId;

  /// Client-assigned subject OID related to the record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectOid;

  /// Subject display ID related to the record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectKey;

  /// Site ID related to the record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? siteId;

  /// Form key of the form that the record belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formKey;

  /// Interval ID (visit definition) related to the record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? intervalId;

  /// Role name of the user who saved the record revision
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  /// Username of the user who saved the record revision
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  /// Reason for change, if provided (for audit trail)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reasonForChange;

  /// Whether the record was deleted in this revision
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  /// Date when this record revision was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecordRevision &&
    other.studyKey == studyKey &&
    other.recordRevisionId == recordRevisionId &&
    other.recordId == recordId &&
    other.recordOid == recordOid &&
    other.recordRevision == recordRevision &&
    other.dataRevision == dataRevision &&
    other.recordStatus == recordStatus &&
    other.subjectId == subjectId &&
    other.subjectOid == subjectOid &&
    other.subjectKey == subjectKey &&
    other.siteId == siteId &&
    other.formKey == formKey &&
    other.intervalId == intervalId &&
    other.role == role &&
    other.user == user &&
    other.reasonForChange == reasonForChange &&
    other.deleted == deleted &&
    other.dateCreated == dateCreated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (recordRevisionId == null ? 0 : recordRevisionId!.hashCode) +
    (recordId == null ? 0 : recordId!.hashCode) +
    (recordOid == null ? 0 : recordOid!.hashCode) +
    (recordRevision == null ? 0 : recordRevision!.hashCode) +
    (dataRevision == null ? 0 : dataRevision!.hashCode) +
    (recordStatus == null ? 0 : recordStatus!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (subjectOid == null ? 0 : subjectOid!.hashCode) +
    (subjectKey == null ? 0 : subjectKey!.hashCode) +
    (siteId == null ? 0 : siteId!.hashCode) +
    (formKey == null ? 0 : formKey!.hashCode) +
    (intervalId == null ? 0 : intervalId!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (reasonForChange == null ? 0 : reasonForChange!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode);

  @override
  String toString() => 'RecordRevision[studyKey=$studyKey, recordRevisionId=$recordRevisionId, recordId=$recordId, recordOid=$recordOid, recordRevision=$recordRevision, dataRevision=$dataRevision, recordStatus=$recordStatus, subjectId=$subjectId, subjectOid=$subjectOid, subjectKey=$subjectKey, siteId=$siteId, formKey=$formKey, intervalId=$intervalId, role=$role, user=$user, reasonForChange=$reasonForChange, deleted=$deleted, dateCreated=$dateCreated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.studyKey != null) {
      json[r'studyKey'] = this.studyKey;
    } else {
      json[r'studyKey'] = null;
    }
    if (this.recordRevisionId != null) {
      json[r'recordRevisionId'] = this.recordRevisionId;
    } else {
      json[r'recordRevisionId'] = null;
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
    if (this.recordRevision != null) {
      json[r'recordRevision'] = this.recordRevision;
    } else {
      json[r'recordRevision'] = null;
    }
    if (this.dataRevision != null) {
      json[r'dataRevision'] = this.dataRevision;
    } else {
      json[r'dataRevision'] = null;
    }
    if (this.recordStatus != null) {
      json[r'recordStatus'] = this.recordStatus;
    } else {
      json[r'recordStatus'] = null;
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
    if (this.siteId != null) {
      json[r'siteId'] = this.siteId;
    } else {
      json[r'siteId'] = null;
    }
    if (this.formKey != null) {
      json[r'formKey'] = this.formKey;
    } else {
      json[r'formKey'] = null;
    }
    if (this.intervalId != null) {
      json[r'intervalId'] = this.intervalId;
    } else {
      json[r'intervalId'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.reasonForChange != null) {
      json[r'reasonForChange'] = this.reasonForChange;
    } else {
      json[r'reasonForChange'] = null;
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
    return json;
  }

  /// Returns a new [RecordRevision] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecordRevision? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecordRevision[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecordRevision[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecordRevision(
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        recordRevisionId: mapValueOfType<int>(json, r'recordRevisionId'),
        recordId: mapValueOfType<int>(json, r'recordId'),
        recordOid: mapValueOfType<String>(json, r'recordOid'),
        recordRevision: mapValueOfType<int>(json, r'recordRevision'),
        dataRevision: mapValueOfType<int>(json, r'dataRevision'),
        recordStatus: mapValueOfType<String>(json, r'recordStatus'),
        subjectId: mapValueOfType<int>(json, r'subjectId'),
        subjectOid: mapValueOfType<String>(json, r'subjectOid'),
        subjectKey: mapValueOfType<String>(json, r'subjectKey'),
        siteId: mapValueOfType<int>(json, r'siteId'),
        formKey: mapValueOfType<String>(json, r'formKey'),
        intervalId: mapValueOfType<int>(json, r'intervalId'),
        role: mapValueOfType<String>(json, r'role'),
        user: mapValueOfType<String>(json, r'user'),
        reasonForChange: mapValueOfType<String>(json, r'reasonForChange'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
      );
    }
    return null;
  }

  static List<RecordRevision> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecordRevision>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecordRevision.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecordRevision> mapFromJson(dynamic json) {
    final map = <String, RecordRevision>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecordRevision.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecordRevision-objects as value to a dart map
  static Map<String, List<RecordRevision>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecordRevision>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecordRevision.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

