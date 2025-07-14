//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/keyword.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subject.g.dart';

/// Subject
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [subjectId] - Mednet subject ID (internal numeric ID)
/// * [subjectOid] - Client-assigned subject object identifier (OID)
/// * [subjectKey] - Protocol-assigned subject identifier (display ID)
/// * [subjectStatus] - Current status of the subject (e.g., Enrolled)
/// * [siteId] - Mednet site ID the subject is associated with
/// * [siteName] - Name of the site the subject is associated with
/// * [deleted] - Whether the subject is marked as deleted
/// * [enrollmentStartDate] - Subject’s enrollment start date
/// * [dateCreated] - Date when this subject record was created
/// * [dateModified] - Date when this subject record was last modified
/// * [keywords] - List of keywords associated with the subject
@BuiltValue()
abstract class Subject implements Built<Subject, SubjectBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Mednet subject ID (internal numeric ID)
  @BuiltValueField(wireName: r'subjectId')
  int? get subjectId;

  /// Client-assigned subject object identifier (OID)
  @BuiltValueField(wireName: r'subjectOid')
  String? get subjectOid;

  /// Protocol-assigned subject identifier (display ID)
  @BuiltValueField(wireName: r'subjectKey')
  String? get subjectKey;

  /// Current status of the subject (e.g., Enrolled)
  @BuiltValueField(wireName: r'subjectStatus')
  String? get subjectStatus;

  /// Mednet site ID the subject is associated with
  @BuiltValueField(wireName: r'siteId')
  int? get siteId;

  /// Name of the site the subject is associated with
  @BuiltValueField(wireName: r'siteName')
  String? get siteName;

  /// Whether the subject is marked as deleted
  @BuiltValueField(wireName: r'deleted')
  bool? get deleted;

  /// Subject’s enrollment start date
  @BuiltValueField(wireName: r'enrollmentStartDate')
  String? get enrollmentStartDate;

  /// Date when this subject record was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Date when this subject record was last modified
  @BuiltValueField(wireName: r'dateModified')
  String? get dateModified;

  /// List of keywords associated with the subject
  @BuiltValueField(wireName: r'keywords')
  BuiltList<Keyword>? get keywords;

  Subject._();

  factory Subject([void updates(SubjectBuilder b)]) = _$Subject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Subject> get serializer => _$SubjectSerializer();
}

class _$SubjectSerializer implements PrimitiveSerializer<Subject> {
  @override
  final Iterable<Type> types = const [Subject, _$Subject];

  @override
  final String wireName = r'Subject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Subject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.studyKey != null) {
      yield r'studyKey';
      yield serializers.serialize(
        object.studyKey,
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
    if (object.subjectOid != null) {
      yield r'subjectOid';
      yield serializers.serialize(
        object.subjectOid,
        specifiedType: const FullType(String),
      );
    }
    if (object.subjectKey != null) {
      yield r'subjectKey';
      yield serializers.serialize(
        object.subjectKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.subjectStatus != null) {
      yield r'subjectStatus';
      yield serializers.serialize(
        object.subjectStatus,
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
    if (object.siteName != null) {
      yield r'siteName';
      yield serializers.serialize(
        object.siteName,
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
    if (object.enrollmentStartDate != null) {
      yield r'enrollmentStartDate';
      yield serializers.serialize(
        object.enrollmentStartDate,
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
    if (object.keywords != null) {
      yield r'keywords';
      yield serializers.serialize(
        object.keywords,
        specifiedType: const FullType(BuiltList, [FullType(Keyword)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Subject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubjectBuilder result,
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
        case r'subjectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.subjectId = valueDes;
          break;
        case r'subjectOid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subjectOid = valueDes;
          break;
        case r'subjectKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subjectKey = valueDes;
          break;
        case r'subjectStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subjectStatus = valueDes;
          break;
        case r'siteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.siteId = valueDes;
          break;
        case r'siteName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.siteName = valueDes;
          break;
        case r'deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deleted = valueDes;
          break;
        case r'enrollmentStartDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enrollmentStartDate = valueDes;
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
        case r'keywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Keyword)]),
          ) as BuiltList<Keyword>;
          result.keywords.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Subject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubjectBuilder();
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

