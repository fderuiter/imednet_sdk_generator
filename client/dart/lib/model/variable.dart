//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Variable {
  /// Returns a new [Variable] instance.
  Variable({
    this.studyKey,
    this.variableId,
    this.variableType,
    this.variableName,
    this.sequence,
    this.revision,
    this.disabled,
    this.dateCreated,
    this.dateModified,
    this.formId,
    this.variableOid,
    this.deleted,
    this.formKey,
    this.formName,
    this.label,
    this.blinded,
  });

  /// Unique study key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyKey;

  /// Mednet variable ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? variableId;

  /// Type of the variable (field type), e.g., RADIO, TEXT, etc.
  VariableVariableTypeEnum? variableType;

  /// Name of the variable (question text or label)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variableName;

  /// Sequence of the variable on the form
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequence;

  /// Number of modifications of the variable (via form metadata revisions)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revision;

  /// Whether the variable is marked as disabled (deleted)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disabled;

  /// Date when this variable was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  /// Date when this variable was last modified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateModified;

  /// ID of the form that this variable belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? formId;

  /// Client-assigned variable OID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variableOid;

  /// Whether the variable is marked as deleted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  /// Form key of the form that this variable belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formKey;

  /// Name of the form that this variable belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formName;

  /// User-defined identifier (field name) for the variable
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Whether the variable is flagged as blinded (hidden in certain contexts)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? blinded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Variable &&
    other.studyKey == studyKey &&
    other.variableId == variableId &&
    other.variableType == variableType &&
    other.variableName == variableName &&
    other.sequence == sequence &&
    other.revision == revision &&
    other.disabled == disabled &&
    other.dateCreated == dateCreated &&
    other.dateModified == dateModified &&
    other.formId == formId &&
    other.variableOid == variableOid &&
    other.deleted == deleted &&
    other.formKey == formKey &&
    other.formName == formName &&
    other.label == label &&
    other.blinded == blinded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (variableId == null ? 0 : variableId!.hashCode) +
    (variableType == null ? 0 : variableType!.hashCode) +
    (variableName == null ? 0 : variableName!.hashCode) +
    (sequence == null ? 0 : sequence!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (disabled == null ? 0 : disabled!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateModified == null ? 0 : dateModified!.hashCode) +
    (formId == null ? 0 : formId!.hashCode) +
    (variableOid == null ? 0 : variableOid!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (formKey == null ? 0 : formKey!.hashCode) +
    (formName == null ? 0 : formName!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (blinded == null ? 0 : blinded!.hashCode);

  @override
  String toString() => 'Variable[studyKey=$studyKey, variableId=$variableId, variableType=$variableType, variableName=$variableName, sequence=$sequence, revision=$revision, disabled=$disabled, dateCreated=$dateCreated, dateModified=$dateModified, formId=$formId, variableOid=$variableOid, deleted=$deleted, formKey=$formKey, formName=$formName, label=$label, blinded=$blinded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.studyKey != null) {
      json[r'studyKey'] = this.studyKey;
    } else {
      json[r'studyKey'] = null;
    }
    if (this.variableId != null) {
      json[r'variableId'] = this.variableId;
    } else {
      json[r'variableId'] = null;
    }
    if (this.variableType != null) {
      json[r'variableType'] = this.variableType;
    } else {
      json[r'variableType'] = null;
    }
    if (this.variableName != null) {
      json[r'variableName'] = this.variableName;
    } else {
      json[r'variableName'] = null;
    }
    if (this.sequence != null) {
      json[r'sequence'] = this.sequence;
    } else {
      json[r'sequence'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
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
    if (this.formId != null) {
      json[r'formId'] = this.formId;
    } else {
      json[r'formId'] = null;
    }
    if (this.variableOid != null) {
      json[r'variableOid'] = this.variableOid;
    } else {
      json[r'variableOid'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
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
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.blinded != null) {
      json[r'blinded'] = this.blinded;
    } else {
      json[r'blinded'] = null;
    }
    return json;
  }

  /// Returns a new [Variable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Variable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Variable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Variable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Variable(
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        variableId: mapValueOfType<int>(json, r'variableId'),
        variableType: VariableVariableTypeEnum.fromJson(json[r'variableType']),
        variableName: mapValueOfType<String>(json, r'variableName'),
        sequence: mapValueOfType<int>(json, r'sequence'),
        revision: mapValueOfType<int>(json, r'revision'),
        disabled: mapValueOfType<bool>(json, r'disabled'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
        dateModified: mapValueOfType<String>(json, r'dateModified'),
        formId: mapValueOfType<int>(json, r'formId'),
        variableOid: mapValueOfType<String>(json, r'variableOid'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        formKey: mapValueOfType<String>(json, r'formKey'),
        formName: mapValueOfType<String>(json, r'formName'),
        label: mapValueOfType<String>(json, r'label'),
        blinded: mapValueOfType<bool>(json, r'blinded'),
      );
    }
    return null;
  }

  static List<Variable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Variable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Variable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Variable> mapFromJson(dynamic json) {
    final map = <String, Variable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Variable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Variable-objects as value to a dart map
  static Map<String, List<Variable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Variable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Variable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Type of the variable (field type), e.g., RADIO, TEXT, etc.
class VariableVariableTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const VariableVariableTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TEXT = VariableVariableTypeEnum._(r'TEXT');
  static const TEXTAREA = VariableVariableTypeEnum._(r'TEXTAREA');
  static const RADIO = VariableVariableTypeEnum._(r'RADIO');
  static const CHECKBOX = VariableVariableTypeEnum._(r'CHECKBOX');
  static const DROPDOWN = VariableVariableTypeEnum._(r'DROPDOWN');
  static const DATE = VariableVariableTypeEnum._(r'DATE');
  static const NUMBER = VariableVariableTypeEnum._(r'NUMBER');

  /// List of all possible values in this [enum][VariableVariableTypeEnum].
  static const values = <VariableVariableTypeEnum>[
    TEXT,
    TEXTAREA,
    RADIO,
    CHECKBOX,
    DROPDOWN,
    DATE,
    NUMBER,
  ];

  static VariableVariableTypeEnum? fromJson(dynamic value) => VariableVariableTypeEnumTypeTransformer().decode(value);

  static List<VariableVariableTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VariableVariableTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VariableVariableTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VariableVariableTypeEnum] to String,
/// and [decode] dynamic data back to [VariableVariableTypeEnum].
class VariableVariableTypeEnumTypeTransformer {
  factory VariableVariableTypeEnumTypeTransformer() => _instance ??= const VariableVariableTypeEnumTypeTransformer._();

  const VariableVariableTypeEnumTypeTransformer._();

  String encode(VariableVariableTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VariableVariableTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VariableVariableTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TEXT': return VariableVariableTypeEnum.TEXT;
        case r'TEXTAREA': return VariableVariableTypeEnum.TEXTAREA;
        case r'RADIO': return VariableVariableTypeEnum.RADIO;
        case r'CHECKBOX': return VariableVariableTypeEnum.CHECKBOX;
        case r'DROPDOWN': return VariableVariableTypeEnum.DROPDOWN;
        case r'DATE': return VariableVariableTypeEnum.DATE;
        case r'NUMBER': return VariableVariableTypeEnum.NUMBER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VariableVariableTypeEnumTypeTransformer] instance.
  static VariableVariableTypeEnumTypeTransformer? _instance;
}


