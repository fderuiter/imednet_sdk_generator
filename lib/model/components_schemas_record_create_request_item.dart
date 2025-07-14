//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComponentsSchemasRecordCreateRequestItem {
  /// Returns a new [ComponentsSchemasRecordCreateRequestItem] instance.
  ComponentsSchemasRecordCreateRequestItem({
    required this.formKey,
    this.formId,
    this.siteName,
    this.siteId,
    this.subjectKey,
    this.subjectId,
    this.subjectOid,
    this.intervalName,
    this.intervalId,
    this.recordId,
    this.recordOid,
    this.data = const {},
  });

  /// Form key identifying the eCRF to create or update
  String formKey;

  /// Form ID identifying the eCRF to create or update (alternative to formKey)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? formId;

  /// Name of the site where the record should be created (for new subject registration)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siteName;

  /// Site ID for the record (alternative to siteName)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? siteId;

  /// Subject identifier (display ID) for which to create or update the record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectKey;

  /// Subject ID for which to create or update the record (alternative to subjectKey)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjectId;

  /// Subject OID for which to create or update the record (alternative to subjectKey)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectOid;

  /// Name of the interval (visit) for a scheduled record update
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? intervalName;

  /// Interval ID for a scheduled record update (alternative to intervalName)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? intervalId;

  /// Record ID for updating an existing unscheduled record (if applicable)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recordId;

  /// Record OID for updating an existing unscheduled record (if applicable)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recordOid;

  /// Key-value pairs of field names and values for the record data
  Map<String, Object> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComponentsSchemasRecordCreateRequestItem &&
    other.formKey == formKey &&
    other.formId == formId &&
    other.siteName == siteName &&
    other.siteId == siteId &&
    other.subjectKey == subjectKey &&
    other.subjectId == subjectId &&
    other.subjectOid == subjectOid &&
    other.intervalName == intervalName &&
    other.intervalId == intervalId &&
    other.recordId == recordId &&
    other.recordOid == recordOid &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formKey.hashCode) +
    (formId == null ? 0 : formId!.hashCode) +
    (siteName == null ? 0 : siteName!.hashCode) +
    (siteId == null ? 0 : siteId!.hashCode) +
    (subjectKey == null ? 0 : subjectKey!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (subjectOid == null ? 0 : subjectOid!.hashCode) +
    (intervalName == null ? 0 : intervalName!.hashCode) +
    (intervalId == null ? 0 : intervalId!.hashCode) +
    (recordId == null ? 0 : recordId!.hashCode) +
    (recordOid == null ? 0 : recordOid!.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ComponentsSchemasRecordCreateRequestItem[formKey=$formKey, formId=$formId, siteName=$siteName, siteId=$siteId, subjectKey=$subjectKey, subjectId=$subjectId, subjectOid=$subjectOid, intervalName=$intervalName, intervalId=$intervalId, recordId=$recordId, recordOid=$recordOid, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'formKey'] = this.formKey;
    if (this.formId != null) {
      json[r'formId'] = this.formId;
    } else {
      json[r'formId'] = null;
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
    if (this.subjectKey != null) {
      json[r'subjectKey'] = this.subjectKey;
    } else {
      json[r'subjectKey'] = null;
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
    if (this.intervalName != null) {
      json[r'intervalName'] = this.intervalName;
    } else {
      json[r'intervalName'] = null;
    }
    if (this.intervalId != null) {
      json[r'intervalId'] = this.intervalId;
    } else {
      json[r'intervalId'] = null;
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
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ComponentsSchemasRecordCreateRequestItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComponentsSchemasRecordCreateRequestItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComponentsSchemasRecordCreateRequestItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComponentsSchemasRecordCreateRequestItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComponentsSchemasRecordCreateRequestItem(
        formKey: mapValueOfType<String>(json, r'formKey')!,
        formId: mapValueOfType<int>(json, r'formId'),
        siteName: mapValueOfType<String>(json, r'siteName'),
        siteId: mapValueOfType<int>(json, r'siteId'),
        subjectKey: mapValueOfType<String>(json, r'subjectKey'),
        subjectId: mapValueOfType<int>(json, r'subjectId'),
        subjectOid: mapValueOfType<String>(json, r'subjectOid'),
        intervalName: mapValueOfType<String>(json, r'intervalName'),
        intervalId: mapValueOfType<int>(json, r'intervalId'),
        recordId: mapValueOfType<int>(json, r'recordId'),
        recordOid: mapValueOfType<String>(json, r'recordOid'),
        data: mapCastOfType<String, Object>(json, r'data')!,
      );
    }
    return null;
  }

  static List<ComponentsSchemasRecordCreateRequestItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComponentsSchemasRecordCreateRequestItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComponentsSchemasRecordCreateRequestItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComponentsSchemasRecordCreateRequestItem> mapFromJson(dynamic json) {
    final map = <String, ComponentsSchemasRecordCreateRequestItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComponentsSchemasRecordCreateRequestItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComponentsSchemasRecordCreateRequestItem-objects as value to a dart map
  static Map<String, List<ComponentsSchemasRecordCreateRequestItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComponentsSchemasRecordCreateRequestItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComponentsSchemasRecordCreateRequestItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'formKey',
    'data',
  };
}

