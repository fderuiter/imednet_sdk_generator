//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'study.g.dart';

/// Study
///
/// Properties:
/// * [sponsorKey] - Sponsor key that this study belongs to
/// * [studyKey] - Unique study key
/// * [studyId] - Mednet study ID (internal numeric identifier)
/// * [studyName] - Name of the study
/// * [studyDescription] - Description of the study
/// * [studyType] - Type of study (e.g., STUDY)
/// * [dateCreated] - Date when the study record was created
/// * [dateModified] - Date when the study record was last modified
@BuiltValue()
abstract class Study implements Built<Study, StudyBuilder> {
  /// Sponsor key that this study belongs to
  @BuiltValueField(wireName: r'sponsorKey')
  String? get sponsorKey;

  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Mednet study ID (internal numeric identifier)
  @BuiltValueField(wireName: r'studyId')
  int? get studyId;

  /// Name of the study
  @BuiltValueField(wireName: r'studyName')
  String? get studyName;

  /// Description of the study
  @BuiltValueField(wireName: r'studyDescription')
  String? get studyDescription;

  /// Type of study (e.g., STUDY)
  @BuiltValueField(wireName: r'studyType')
  String? get studyType;

  /// Date when the study record was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Date when the study record was last modified
  @BuiltValueField(wireName: r'dateModified')
  String? get dateModified;

  Study._();

  factory Study([void updates(StudyBuilder b)]) = _$Study;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Study> get serializer => _$StudySerializer();
}

class _$StudySerializer implements PrimitiveSerializer<Study> {
  @override
  final Iterable<Type> types = const [Study, _$Study];

  @override
  final String wireName = r'Study';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Study object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sponsorKey != null) {
      yield r'sponsorKey';
      yield serializers.serialize(
        object.sponsorKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.studyKey != null) {
      yield r'studyKey';
      yield serializers.serialize(
        object.studyKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.studyId != null) {
      yield r'studyId';
      yield serializers.serialize(
        object.studyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.studyName != null) {
      yield r'studyName';
      yield serializers.serialize(
        object.studyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.studyDescription != null) {
      yield r'studyDescription';
      yield serializers.serialize(
        object.studyDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.studyType != null) {
      yield r'studyType';
      yield serializers.serialize(
        object.studyType,
        specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Study object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StudyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sponsorKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sponsorKey = valueDes;
          break;
        case r'studyKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studyKey = valueDes;
          break;
        case r'studyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.studyId = valueDes;
          break;
        case r'studyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studyName = valueDes;
          break;
        case r'studyDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studyDescription = valueDes;
          break;
        case r'studyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studyType = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Study deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudyBuilder();
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

