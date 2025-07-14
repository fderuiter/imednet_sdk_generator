//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComponentsSchemasIntervalFormsItem {
  /// Returns a new [ComponentsSchemasIntervalFormsItem] instance.
  ComponentsSchemasIntervalFormsItem({
    this.formId,
    this.formKey,
    this.formName,
  });

  /// Form ID scheduled in the interval
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? formId;

  /// Form key scheduled in the interval
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formKey;

  /// Form name scheduled in the interval
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComponentsSchemasIntervalFormsItem &&
    other.formId == formId &&
    other.formKey == formKey &&
    other.formName == formName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formId == null ? 0 : formId!.hashCode) +
    (formKey == null ? 0 : formKey!.hashCode) +
    (formName == null ? 0 : formName!.hashCode);

  @override
  String toString() => 'ComponentsSchemasIntervalFormsItem[formId=$formId, formKey=$formKey, formName=$formName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    return json;
  }

  /// Returns a new [ComponentsSchemasIntervalFormsItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComponentsSchemasIntervalFormsItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComponentsSchemasIntervalFormsItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComponentsSchemasIntervalFormsItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComponentsSchemasIntervalFormsItem(
        formId: mapValueOfType<int>(json, r'formId'),
        formKey: mapValueOfType<String>(json, r'formKey'),
        formName: mapValueOfType<String>(json, r'formName'),
      );
    }
    return null;
  }

  static List<ComponentsSchemasIntervalFormsItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComponentsSchemasIntervalFormsItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComponentsSchemasIntervalFormsItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComponentsSchemasIntervalFormsItem> mapFromJson(dynamic json) {
    final map = <String, ComponentsSchemasIntervalFormsItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComponentsSchemasIntervalFormsItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComponentsSchemasIntervalFormsItem-objects as value to a dart map
  static Map<String, List<ComponentsSchemasIntervalFormsItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComponentsSchemasIntervalFormsItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComponentsSchemasIntervalFormsItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

