//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coding.g.dart';

/// Coding
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [siteName] - Name of the site associated with the coded data
/// * [siteId] - Site ID associated with the coded data
/// * [subjectId] - Subject ID associated with the coded data
/// * [subjectKey] - Subject key (display ID) associated with the coded data
/// * [formId] - Form ID where the coded data originates
/// * [formName] - Name of the form where the coded data originates
/// * [formKey] - Form key where the coded data originates
/// * [revision] - Revision number of the coding entry
/// * [recordId] - Record ID associated with the coded data
/// * [variable] - Variable name (field) that was coded
/// * [value] - Original value entered that required coding
/// * [codingId] - Mednet coding ID
/// * [code] - Standardized code assigned (e.g., dictionary term)
/// * [codedBy] - Name of the user who performed the coding
/// * [reason] - Reason for coding or any notes on changes
/// * [dictionaryName] - Name of the dictionary used (e.g., MedDRA)
/// * [dictionaryVersion] - Version of the dictionary used
/// * [dateCoded] - Date when the coding was performed
@BuiltValue()
abstract class Coding implements Built<Coding, CodingBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Name of the site associated with the coded data
  @BuiltValueField(wireName: r'siteName')
  String? get siteName;

  /// Site ID associated with the coded data
  @BuiltValueField(wireName: r'siteId')
  int? get siteId;

  /// Subject ID associated with the coded data
  @BuiltValueField(wireName: r'subjectId')
  int? get subjectId;

  /// Subject key (display ID) associated with the coded data
  @BuiltValueField(wireName: r'subjectKey')
  String? get subjectKey;

  /// Form ID where the coded data originates
  @BuiltValueField(wireName: r'formId')
  int? get formId;

  /// Name of the form where the coded data originates
  @BuiltValueField(wireName: r'formName')
  String? get formName;

  /// Form key where the coded data originates
  @BuiltValueField(wireName: r'formKey')
  String? get formKey;

  /// Revision number of the coding entry
  @BuiltValueField(wireName: r'revision')
  int? get revision;

  /// Record ID associated with the coded data
  @BuiltValueField(wireName: r'recordId')
  int? get recordId;

  /// Variable name (field) that was coded
  @BuiltValueField(wireName: r'variable')
  String? get variable;

  /// Original value entered that required coding
  @BuiltValueField(wireName: r'value')
  String? get value;

  /// Mednet coding ID
  @BuiltValueField(wireName: r'codingId')
  int? get codingId;

  /// Standardized code assigned (e.g., dictionary term)
  @BuiltValueField(wireName: r'code')
  String? get code;

  /// Name of the user who performed the coding
  @BuiltValueField(wireName: r'codedBy')
  String? get codedBy;

  /// Reason for coding or any notes on changes
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Name of the dictionary used (e.g., MedDRA)
  @BuiltValueField(wireName: r'dictionaryName')
  String? get dictionaryName;

  /// Version of the dictionary used
  @BuiltValueField(wireName: r'dictionaryVersion')
  String? get dictionaryVersion;

  /// Date when the coding was performed
  @BuiltValueField(wireName: r'dateCoded')
  String? get dateCoded;

  Coding._();

  factory Coding([void updates(CodingBuilder b)]) = _$Coding;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CodingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Coding> get serializer => _$CodingSerializer();
}

class _$CodingSerializer implements PrimitiveSerializer<Coding> {
  @override
  final Iterable<Type> types = const [Coding, _$Coding];

  @override
  final String wireName = r'Coding';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Coding object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.studyKey != null) {
      yield r'studyKey';
      yield serializers.serialize(
        object.studyKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.siteName != null) {
      yield r'siteName';
      yield serializers.serialize(
        object.siteName,
        specifiedType: const FullType(String),
      );
    }
    if (object.siteId != null) {
      yield r'siteId';
      yield serializers.serialize(
        object.siteId,
        specifiedType: const FullType(int),
      );
    }
    if (object.subjectId != null) {
      yield r'subjectId';
      yield serializers.serialize(
        object.subjectId,
        specifiedType: const FullType(int),
      );
    }
    if (object.subjectKey != null) {
      yield r'subjectKey';
      yield serializers.serialize(
        object.subjectKey,
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
    if (object.formName != null) {
      yield r'formName';
      yield serializers.serialize(
        object.formName,
        specifiedType: const FullType(String),
      );
    }
    if (object.formKey != null) {
      yield r'formKey';
      yield serializers.serialize(
        object.formKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.revision != null) {
      yield r'revision';
      yield serializers.serialize(
        object.revision,
        specifiedType: const FullType(int),
      );
    }
    if (object.recordId != null) {
      yield r'recordId';
      yield serializers.serialize(
        object.recordId,
        specifiedType: const FullType(int),
      );
    }
    if (object.variable != null) {
      yield r'variable';
      yield serializers.serialize(
        object.variable,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    if (object.codingId != null) {
      yield r'codingId';
      yield serializers.serialize(
        object.codingId,
        specifiedType: const FullType(int),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.codedBy != null) {
      yield r'codedBy';
      yield serializers.serialize(
        object.codedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.dictionaryName != null) {
      yield r'dictionaryName';
      yield serializers.serialize(
        object.dictionaryName,
        specifiedType: const FullType(String),
      );
    }
    if (object.dictionaryVersion != null) {
      yield r'dictionaryVersion';
      yield serializers.serialize(
        object.dictionaryVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateCoded != null) {
      yield r'dateCoded';
      yield serializers.serialize(
        object.dateCoded,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Coding object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CodingBuilder result,
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
        case r'siteName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.siteName = valueDes;
          break;
        case r'siteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.siteId = valueDes;
          break;
        case r'subjectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.subjectId = valueDes;
          break;
        case r'subjectKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subjectKey = valueDes;
          break;
        case r'formId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.formId = valueDes;
          break;
        case r'formName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formName = valueDes;
          break;
        case r'formKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formKey = valueDes;
          break;
        case r'revision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.revision = valueDes;
          break;
        case r'recordId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.recordId = valueDes;
          break;
        case r'variable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variable = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'codingId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.codingId = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'codedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codedBy = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'dictionaryName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dictionaryName = valueDes;
          break;
        case r'dictionaryVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dictionaryVersion = valueDes;
          break;
        case r'dateCoded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateCoded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Coding deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CodingBuilder();
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

