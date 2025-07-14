//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Form {
  /// Returns a new [Form] instance.
  Form({
    this.studyKey,
    this.formId,
    this.formKey,
    this.formName,
    this.formType,
    this.revision,
    this.embeddedLog,
    this.enforceOwnership,
    this.userAgreement,
    this.subjectRecordReport,
    this.unscheduledVisit,
    this.otherForms,
    this.eproForm,
    this.allowCopy,
    this.disabled,
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

  /// Mednet Form ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? formId;

  /// User-defined form key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formKey;

  /// Name of the form (eCRF)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formName;

  /// Type of the form (e.g., Subject or Site)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formType;

  /// Number of modifications (revisions) of the form metadata
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revision;

  /// Whether the form has an embedded log
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? embeddedLog;

  /// Whether the form enforces record ownership
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enforceOwnership;

  /// Whether the form requires a user agreement
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? userAgreement;

  /// Whether the form is marked as a subject record report
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? subjectRecordReport;

  /// Whether the form is included in unscheduled visits
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unscheduledVisit;

  /// Whether the form is included in Other Forms category
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? otherForms;

  /// Whether the form is an ePRO (electronic patient reported outcome) form
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? eproForm;

  /// Whether the form allows copying of data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowCopy;

  /// Whether the form is soft-deleted (disabled)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disabled;

  /// Date when this form was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  /// Date when this form was last modified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateModified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Form &&
    other.studyKey == studyKey &&
    other.formId == formId &&
    other.formKey == formKey &&
    other.formName == formName &&
    other.formType == formType &&
    other.revision == revision &&
    other.embeddedLog == embeddedLog &&
    other.enforceOwnership == enforceOwnership &&
    other.userAgreement == userAgreement &&
    other.subjectRecordReport == subjectRecordReport &&
    other.unscheduledVisit == unscheduledVisit &&
    other.otherForms == otherForms &&
    other.eproForm == eproForm &&
    other.allowCopy == allowCopy &&
    other.disabled == disabled &&
    other.dateCreated == dateCreated &&
    other.dateModified == dateModified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (formId == null ? 0 : formId!.hashCode) +
    (formKey == null ? 0 : formKey!.hashCode) +
    (formName == null ? 0 : formName!.hashCode) +
    (formType == null ? 0 : formType!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (embeddedLog == null ? 0 : embeddedLog!.hashCode) +
    (enforceOwnership == null ? 0 : enforceOwnership!.hashCode) +
    (userAgreement == null ? 0 : userAgreement!.hashCode) +
    (subjectRecordReport == null ? 0 : subjectRecordReport!.hashCode) +
    (unscheduledVisit == null ? 0 : unscheduledVisit!.hashCode) +
    (otherForms == null ? 0 : otherForms!.hashCode) +
    (eproForm == null ? 0 : eproForm!.hashCode) +
    (allowCopy == null ? 0 : allowCopy!.hashCode) +
    (disabled == null ? 0 : disabled!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateModified == null ? 0 : dateModified!.hashCode);

  @override
  String toString() => 'Form[studyKey=$studyKey, formId=$formId, formKey=$formKey, formName=$formName, formType=$formType, revision=$revision, embeddedLog=$embeddedLog, enforceOwnership=$enforceOwnership, userAgreement=$userAgreement, subjectRecordReport=$subjectRecordReport, unscheduledVisit=$unscheduledVisit, otherForms=$otherForms, eproForm=$eproForm, allowCopy=$allowCopy, disabled=$disabled, dateCreated=$dateCreated, dateModified=$dateModified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.studyKey != null) {
      json[r'studyKey'] = this.studyKey;
    } else {
      json[r'studyKey'] = null;
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
    if (this.formName != null) {
      json[r'formName'] = this.formName;
    } else {
      json[r'formName'] = null;
    }
    if (this.formType != null) {
      json[r'formType'] = this.formType;
    } else {
      json[r'formType'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.embeddedLog != null) {
      json[r'embeddedLog'] = this.embeddedLog;
    } else {
      json[r'embeddedLog'] = null;
    }
    if (this.enforceOwnership != null) {
      json[r'enforceOwnership'] = this.enforceOwnership;
    } else {
      json[r'enforceOwnership'] = null;
    }
    if (this.userAgreement != null) {
      json[r'userAgreement'] = this.userAgreement;
    } else {
      json[r'userAgreement'] = null;
    }
    if (this.subjectRecordReport != null) {
      json[r'subjectRecordReport'] = this.subjectRecordReport;
    } else {
      json[r'subjectRecordReport'] = null;
    }
    if (this.unscheduledVisit != null) {
      json[r'unscheduledVisit'] = this.unscheduledVisit;
    } else {
      json[r'unscheduledVisit'] = null;
    }
    if (this.otherForms != null) {
      json[r'otherForms'] = this.otherForms;
    } else {
      json[r'otherForms'] = null;
    }
    if (this.eproForm != null) {
      json[r'eproForm'] = this.eproForm;
    } else {
      json[r'eproForm'] = null;
    }
    if (this.allowCopy != null) {
      json[r'allowCopy'] = this.allowCopy;
    } else {
      json[r'allowCopy'] = null;
    }
    if (this.disabled != null) {
      json[r'disabled'] = this.disabled;
    } else {
      json[r'disabled'] = null;
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

  /// Returns a new [Form] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Form? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Form[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Form[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Form(
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        formId: mapValueOfType<int>(json, r'formId'),
        formKey: mapValueOfType<String>(json, r'formKey'),
        formName: mapValueOfType<String>(json, r'formName'),
        formType: mapValueOfType<String>(json, r'formType'),
        revision: mapValueOfType<int>(json, r'revision'),
        embeddedLog: mapValueOfType<bool>(json, r'embeddedLog'),
        enforceOwnership: mapValueOfType<bool>(json, r'enforceOwnership'),
        userAgreement: mapValueOfType<bool>(json, r'userAgreement'),
        subjectRecordReport: mapValueOfType<bool>(json, r'subjectRecordReport'),
        unscheduledVisit: mapValueOfType<bool>(json, r'unscheduledVisit'),
        otherForms: mapValueOfType<bool>(json, r'otherForms'),
        eproForm: mapValueOfType<bool>(json, r'eproForm'),
        allowCopy: mapValueOfType<bool>(json, r'allowCopy'),
        disabled: mapValueOfType<bool>(json, r'disabled'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
        dateModified: mapValueOfType<String>(json, r'dateModified'),
      );
    }
    return null;
  }

  static List<Form> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Form>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Form.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Form> mapFromJson(dynamic json) {
    final map = <String, Form>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Form.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Form-objects as value to a dart map
  static Map<String, List<Form>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Form>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Form.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

