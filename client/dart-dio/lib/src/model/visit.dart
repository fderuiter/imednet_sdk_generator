//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'visit.g.dart';

/// Visit
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [visitId] - Unique system identifier for the subject visit instance
/// * [intervalId] - Unique system identifier of the interval definition for this visit
/// * [intervalName] - Name of the interval (visit) for this visit instance
/// * [subjectId] - Mednet subject ID of the subject
/// * [subjectKey] - Protocol-assigned subject identifier
/// * [startDate] - Start date of the visit window (in YYYY-MM-DD format)
/// * [endDate] - End date of the visit window (in YYYY-MM-DD format)
/// * [dueDate] - Due date of the visit (in YYYY-MM-DD format), if applicable
/// * [visitDate] - Actual date the visit took place (in YYYY-MM-DD format)
/// * [visitDateForm] - Name of the form used to capture the actual visit date
/// * [visitDateQuestion] - Variable name of the field capturing the actual visit date
/// * [deleted] - Whether the visit instance is marked as deleted
/// * [dateCreated] - Date when this visit record was created
/// * [dateModified] - Date when this visit record was last modified
@BuiltValue()
abstract class Visit implements Built<Visit, VisitBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Unique system identifier for the subject visit instance
  @BuiltValueField(wireName: r'visitId')
  int? get visitId;

  /// Unique system identifier of the interval definition for this visit
  @BuiltValueField(wireName: r'intervalId')
  int? get intervalId;

  /// Name of the interval (visit) for this visit instance
  @BuiltValueField(wireName: r'intervalName')
  String? get intervalName;

  /// Mednet subject ID of the subject
  @BuiltValueField(wireName: r'subjectId')
  int? get subjectId;

  /// Protocol-assigned subject identifier
  @BuiltValueField(wireName: r'subjectKey')
  String? get subjectKey;

  /// Start date of the visit window (in YYYY-MM-DD format)
  @BuiltValueField(wireName: r'startDate')
  String? get startDate;

  /// End date of the visit window (in YYYY-MM-DD format)
  @BuiltValueField(wireName: r'endDate')
  String? get endDate;

  /// Due date of the visit (in YYYY-MM-DD format), if applicable
  @BuiltValueField(wireName: r'dueDate')
  String? get dueDate;

  /// Actual date the visit took place (in YYYY-MM-DD format)
  @BuiltValueField(wireName: r'visitDate')
  String? get visitDate;

  /// Name of the form used to capture the actual visit date
  @BuiltValueField(wireName: r'visitDateForm')
  String? get visitDateForm;

  /// Variable name of the field capturing the actual visit date
  @BuiltValueField(wireName: r'visitDateQuestion')
  String? get visitDateQuestion;

  /// Whether the visit instance is marked as deleted
  @BuiltValueField(wireName: r'deleted')
  bool? get deleted;

  /// Date when this visit record was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Date when this visit record was last modified
  @BuiltValueField(wireName: r'dateModified')
  String? get dateModified;

  Visit._();

  factory Visit([void updates(VisitBuilder b)]) = _$Visit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VisitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Visit> get serializer => _$VisitSerializer();
}

class _$VisitSerializer implements PrimitiveSerializer<Visit> {
  @override
  final Iterable<Type> types = const [Visit, _$Visit];

  @override
  final String wireName = r'Visit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Visit object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.studyKey != null) {
      yield r'studyKey';
      yield serializers.serialize(
        object.studyKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.visitId != null) {
      yield r'visitId';
      yield serializers.serialize(
        object.visitId,
        specifiedType: const FullType(int),
      );
    }
    if (object.intervalId != null) {
      yield r'intervalId';
      yield serializers.serialize(
        object.intervalId,
        specifiedType: const FullType(int),
      );
    }
    if (object.intervalName != null) {
      yield r'intervalName';
      yield serializers.serialize(
        object.intervalName,
        specifiedType: const FullType(String),
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
    if (object.startDate != null) {
      yield r'startDate';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.dueDate != null) {
      yield r'dueDate';
      yield serializers.serialize(
        object.dueDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.visitDate != null) {
      yield r'visitDate';
      yield serializers.serialize(
        object.visitDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.visitDateForm != null) {
      yield r'visitDateForm';
      yield serializers.serialize(
        object.visitDateForm,
        specifiedType: const FullType(String),
      );
    }
    if (object.visitDateQuestion != null) {
      yield r'visitDateQuestion';
      yield serializers.serialize(
        object.visitDateQuestion,
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
    Visit object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VisitBuilder result,
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
        case r'visitId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.visitId = valueDes;
          break;
        case r'intervalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.intervalId = valueDes;
          break;
        case r'intervalName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.intervalName = valueDes;
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
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startDate = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endDate = valueDes;
          break;
        case r'dueDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dueDate = valueDes;
          break;
        case r'visitDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visitDate = valueDes;
          break;
        case r'visitDateForm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visitDateForm = valueDes;
          break;
        case r'visitDateQuestion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visitDateQuestion = valueDes;
          break;
        case r'deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deleted = valueDes;
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
  Visit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VisitBuilder();
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

