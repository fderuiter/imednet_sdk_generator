//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variable.g.dart';

/// Variable
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [variableId] - Mednet variable ID
/// * [variableType] - Type of the variable (field type), e.g., RADIO, TEXT, etc.
/// * [variableName] - Name of the variable (question text or label)
/// * [sequence] - Sequence of the variable on the form
/// * [revision] - Number of modifications of the variable (via form metadata revisions)
/// * [disabled] - Whether the variable is marked as disabled (deleted)
/// * [dateCreated] - Date when this variable was created
/// * [dateModified] - Date when this variable was last modified
/// * [formId] - ID of the form that this variable belongs to
/// * [variableOid] - Client-assigned variable OID
/// * [deleted] - Whether the variable is marked as deleted
/// * [formKey] - Form key of the form that this variable belongs to
/// * [formName] - Name of the form that this variable belongs to
/// * [label] - User-defined identifier (field name) for the variable
/// * [blinded] - Whether the variable is flagged as blinded (hidden in certain contexts)
@BuiltValue()
abstract class Variable implements Built<Variable, VariableBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Mednet variable ID
  @BuiltValueField(wireName: r'variableId')
  int? get variableId;

  /// Type of the variable (field type), e.g., RADIO, TEXT, etc.
  @BuiltValueField(wireName: r'variableType')
  VariableVariableTypeEnum? get variableType;
  // enum variableTypeEnum {  TEXT,  TEXTAREA,  RADIO,  CHECKBOX,  DROPDOWN,  DATE,  NUMBER,  };

  /// Name of the variable (question text or label)
  @BuiltValueField(wireName: r'variableName')
  String? get variableName;

  /// Sequence of the variable on the form
  @BuiltValueField(wireName: r'sequence')
  int? get sequence;

  /// Number of modifications of the variable (via form metadata revisions)
  @BuiltValueField(wireName: r'revision')
  int? get revision;

  /// Whether the variable is marked as disabled (deleted)
  @BuiltValueField(wireName: r'disabled')
  bool? get disabled;

  /// Date when this variable was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Date when this variable was last modified
  @BuiltValueField(wireName: r'dateModified')
  String? get dateModified;

  /// ID of the form that this variable belongs to
  @BuiltValueField(wireName: r'formId')
  int? get formId;

  /// Client-assigned variable OID
  @BuiltValueField(wireName: r'variableOid')
  String? get variableOid;

  /// Whether the variable is marked as deleted
  @BuiltValueField(wireName: r'deleted')
  bool? get deleted;

  /// Form key of the form that this variable belongs to
  @BuiltValueField(wireName: r'formKey')
  String? get formKey;

  /// Name of the form that this variable belongs to
  @BuiltValueField(wireName: r'formName')
  String? get formName;

  /// User-defined identifier (field name) for the variable
  @BuiltValueField(wireName: r'label')
  String? get label;

  /// Whether the variable is flagged as blinded (hidden in certain contexts)
  @BuiltValueField(wireName: r'blinded')
  bool? get blinded;

  Variable._();

  factory Variable([void updates(VariableBuilder b)]) = _$Variable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Variable> get serializer => _$VariableSerializer();
}

class _$VariableSerializer implements PrimitiveSerializer<Variable> {
  @override
  final Iterable<Type> types = const [Variable, _$Variable];

  @override
  final String wireName = r'Variable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Variable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.studyKey != null) {
      yield r'studyKey';
      yield serializers.serialize(
        object.studyKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.variableId != null) {
      yield r'variableId';
      yield serializers.serialize(
        object.variableId,
        specifiedType: const FullType(int),
      );
    }
    if (object.variableType != null) {
      yield r'variableType';
      yield serializers.serialize(
        object.variableType,
        specifiedType: const FullType(VariableVariableTypeEnum),
      );
    }
    if (object.variableName != null) {
      yield r'variableName';
      yield serializers.serialize(
        object.variableName,
        specifiedType: const FullType(String),
      );
    }
    if (object.sequence != null) {
      yield r'sequence';
      yield serializers.serialize(
        object.sequence,
        specifiedType: const FullType(int),
      );
    }
    if (object.revision != null) {
      yield r'revision';
      yield serializers.serialize(
        object.revision,
        specifiedType: const FullType(int),
      );
    }
    if (object.disabled != null) {
      yield r'disabled';
      yield serializers.serialize(
        object.disabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dateCreated != null) {
      yield r'dateCreated';
      yield serializers.serialize(
        object.dateCreated,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateModified != null) {
      yield r'dateModified';
      yield serializers.serialize(
        object.dateModified,
        specifiedType: const FullType(String),
      );
    }
    if (object.formId != null) {
      yield r'formId';
      yield serializers.serialize(
        object.formId,
        specifiedType: const FullType(int),
      );
    }
    if (object.variableOid != null) {
      yield r'variableOid';
      yield serializers.serialize(
        object.variableOid,
        specifiedType: const FullType(String),
      );
    }
    if (object.deleted != null) {
      yield r'deleted';
      yield serializers.serialize(
        object.deleted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.formKey != null) {
      yield r'formKey';
      yield serializers.serialize(
        object.formKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.formName != null) {
      yield r'formName';
      yield serializers.serialize(
        object.formName,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.blinded != null) {
      yield r'blinded';
      yield serializers.serialize(
        object.blinded,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Variable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'studyKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studyKey = valueDes;
          break;
        case r'variableId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.variableId = valueDes;
          break;
        case r'variableType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VariableVariableTypeEnum),
          ) as VariableVariableTypeEnum;
          result.variableType = valueDes;
          break;
        case r'variableName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variableName = valueDes;
          break;
        case r'sequence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sequence = valueDes;
          break;
        case r'revision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.revision = valueDes;
          break;
        case r'disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disabled = valueDes;
          break;
        case r'dateCreated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateCreated = valueDes;
          break;
        case r'dateModified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateModified = valueDes;
          break;
        case r'formId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.formId = valueDes;
          break;
        case r'variableOid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variableOid = valueDes;
          break;
        case r'deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deleted = valueDes;
          break;
        case r'formKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formKey = valueDes;
          break;
        case r'formName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formName = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'blinded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.blinded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Variable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VariableBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class VariableVariableTypeEnum extends EnumClass {

  /// Type of the variable (field type), e.g., RADIO, TEXT, etc.
  @BuiltValueEnumConst(wireName: r'TEXT')
  static const VariableVariableTypeEnum TEXT = _$variableVariableTypeEnum_TEXT;
  /// Type of the variable (field type), e.g., RADIO, TEXT, etc.
  @BuiltValueEnumConst(wireName: r'TEXTAREA')
  static const VariableVariableTypeEnum TEXTAREA = _$variableVariableTypeEnum_TEXTAREA;
  /// Type of the variable (field type), e.g., RADIO, TEXT, etc.
  @BuiltValueEnumConst(wireName: r'RADIO')
  static const VariableVariableTypeEnum RADIO = _$variableVariableTypeEnum_RADIO;
  /// Type of the variable (field type), e.g., RADIO, TEXT, etc.
  @BuiltValueEnumConst(wireName: r'CHECKBOX')
  static const VariableVariableTypeEnum CHECKBOX = _$variableVariableTypeEnum_CHECKBOX;
  /// Type of the variable (field type), e.g., RADIO, TEXT, etc.
  @BuiltValueEnumConst(wireName: r'DROPDOWN')
  static const VariableVariableTypeEnum DROPDOWN = _$variableVariableTypeEnum_DROPDOWN;
  /// Type of the variable (field type), e.g., RADIO, TEXT, etc.
  @BuiltValueEnumConst(wireName: r'DATE')
  static const VariableVariableTypeEnum DATE = _$variableVariableTypeEnum_DATE;
  /// Type of the variable (field type), e.g., RADIO, TEXT, etc.
  @BuiltValueEnumConst(wireName: r'NUMBER')
  static const VariableVariableTypeEnum NUMBER = _$variableVariableTypeEnum_NUMBER;

  static Serializer<VariableVariableTypeEnum> get serializer => _$variableVariableTypeEnumSerializer;

  const VariableVariableTypeEnum._(String name): super(name);

  static BuiltSet<VariableVariableTypeEnum> get values => _$variableVariableTypeEnumValues;
  static VariableVariableTypeEnum valueOf(String name) => _$variableVariableTypeEnumValueOf(name);
}

