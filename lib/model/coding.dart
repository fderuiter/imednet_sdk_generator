//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Coding {
  /// Returns a new [Coding] instance.
  Coding({
    this.studyKey,
    this.siteName,
    this.siteId,
    this.subjectId,
    this.subjectKey,
    this.formId,
    this.formName,
    this.formKey,
    this.revision,
    this.recordId,
    this.variable,
    this.value,
    this.codingId,
    this.code,
    this.codedBy,
    this.reason,
    this.dictionaryName,
    this.dictionaryVersion,
    this.dateCoded,
  });

  /// Unique study key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyKey;

  /// Name of the site associated with the coded data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siteName;

  /// Site ID associated with the coded data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? siteId;

  /// Subject ID associated with the coded data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjectId;

  /// Subject key (display ID) associated with the coded data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectKey;

  /// Form ID where the coded data originates
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? formId;

  /// Name of the form where the coded data originates
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formName;

  /// Form key where the coded data originates
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formKey;

  /// Revision number of the coding entry
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revision;

  /// Record ID associated with the coded data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recordId;

  /// Variable name (field) that was coded
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variable;

  /// Original value entered that required coding
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  /// Mednet coding ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codingId;

  /// Standardized code assigned (e.g., dictionary term)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Name of the user who performed the coding
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codedBy;

  /// Reason for coding or any notes on changes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Name of the dictionary used (e.g., MedDRA)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dictionaryName;

  /// Version of the dictionary used
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dictionaryVersion;

  /// Date when the coding was performed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCoded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Coding &&
    other.studyKey == studyKey &&
    other.siteName == siteName &&
    other.siteId == siteId &&
    other.subjectId == subjectId &&
    other.subjectKey == subjectKey &&
    other.formId == formId &&
    other.formName == formName &&
    other.formKey == formKey &&
    other.revision == revision &&
    other.recordId == recordId &&
    other.variable == variable &&
    other.value == value &&
    other.codingId == codingId &&
    other.code == code &&
    other.codedBy == codedBy &&
    other.reason == reason &&
    other.dictionaryName == dictionaryName &&
    other.dictionaryVersion == dictionaryVersion &&
    other.dateCoded == dateCoded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (siteName == null ? 0 : siteName!.hashCode) +
    (siteId == null ? 0 : siteId!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (subjectKey == null ? 0 : subjectKey!.hashCode) +
    (formId == null ? 0 : formId!.hashCode) +
    (formName == null ? 0 : formName!.hashCode) +
    (formKey == null ? 0 : formKey!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (recordId == null ? 0 : recordId!.hashCode) +
    (variable == null ? 0 : variable!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (codingId == null ? 0 : codingId!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (codedBy == null ? 0 : codedBy!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (dictionaryName == null ? 0 : dictionaryName!.hashCode) +
    (dictionaryVersion == null ? 0 : dictionaryVersion!.hashCode) +
    (dateCoded == null ? 0 : dateCoded!.hashCode);

  @override
  String toString() => 'Coding[studyKey=$studyKey, siteName=$siteName, siteId=$siteId, subjectId=$subjectId, subjectKey=$subjectKey, formId=$formId, formName=$formName, formKey=$formKey, revision=$revision, recordId=$recordId, variable=$variable, value=$value, codingId=$codingId, code=$code, codedBy=$codedBy, reason=$reason, dictionaryName=$dictionaryName, dictionaryVersion=$dictionaryVersion, dateCoded=$dateCoded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.studyKey != null) {
      json[r'studyKey'] = this.studyKey;
    } else {
      json[r'studyKey'] = null;
    }
    if (this.siteName != null) {
      json[r'siteName'] = this.siteName;
    } else {
      json[r'siteName'] = null;
    }
    if (this.siteId != null) {
      json[r'siteId'] = this.siteId;
    } else {
      json[r'siteId'] = null;
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
    if (this.formId != null) {
      json[r'formId'] = this.formId;
    } else {
      json[r'formId'] = null;
    }
    if (this.formName != null) {
      json[r'formName'] = this.formName;
    } else {
      json[r'formName'] = null;
    }
    if (this.formKey != null) {
      json[r'formKey'] = this.formKey;
    } else {
      json[r'formKey'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
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
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.codingId != null) {
      json[r'codingId'] = this.codingId;
    } else {
      json[r'codingId'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.codedBy != null) {
      json[r'codedBy'] = this.codedBy;
    } else {
      json[r'codedBy'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.dictionaryName != null) {
      json[r'dictionaryName'] = this.dictionaryName;
    } else {
      json[r'dictionaryName'] = null;
    }
    if (this.dictionaryVersion != null) {
      json[r'dictionaryVersion'] = this.dictionaryVersion;
    } else {
      json[r'dictionaryVersion'] = null;
    }
    if (this.dateCoded != null) {
      json[r'dateCoded'] = this.dateCoded;
    } else {
      json[r'dateCoded'] = null;
    }
    return json;
  }

  /// Returns a new [Coding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Coding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Coding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Coding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Coding(
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        siteName: mapValueOfType<String>(json, r'siteName'),
        siteId: mapValueOfType<int>(json, r'siteId'),
        subjectId: mapValueOfType<int>(json, r'subjectId'),
        subjectKey: mapValueOfType<String>(json, r'subjectKey'),
        formId: mapValueOfType<int>(json, r'formId'),
        formName: mapValueOfType<String>(json, r'formName'),
        formKey: mapValueOfType<String>(json, r'formKey'),
        revision: mapValueOfType<int>(json, r'revision'),
        recordId: mapValueOfType<int>(json, r'recordId'),
        variable: mapValueOfType<String>(json, r'variable'),
        value: mapValueOfType<String>(json, r'value'),
        codingId: mapValueOfType<int>(json, r'codingId'),
        code: mapValueOfType<String>(json, r'code'),
        codedBy: mapValueOfType<String>(json, r'codedBy'),
        reason: mapValueOfType<String>(json, r'reason'),
        dictionaryName: mapValueOfType<String>(json, r'dictionaryName'),
        dictionaryVersion: mapValueOfType<String>(json, r'dictionaryVersion'),
        dateCoded: mapValueOfType<String>(json, r'dateCoded'),
      );
    }
    return null;
  }

  static List<Coding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Coding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Coding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Coding> mapFromJson(dynamic json) {
    final map = <String, Coding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Coding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Coding-objects as value to a dart map
  static Map<String, List<Coding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Coding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Coding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

