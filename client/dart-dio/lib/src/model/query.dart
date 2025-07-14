//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/query_comment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query.g.dart';

/// Query
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [subjectId] - Mednet subject ID associated with the query (if applicable)
/// * [subjectOid] - Client-assigned subject OID (if applicable)
/// * [annotationType] - Category/type of the query (e.g., subject, record, question)
/// * [annotationId] - Unique system identifier for the query
/// * [type] - System text identifier for the query type/location (subject, record, question)
/// * [description] - Description of the query (e.g., reason or context)
/// * [recordId] - Record ID associated with the query (if applicable)
/// * [variable] - Variable name (field) associated with the query (if applicable)
/// * [subjectKey] - Subject display ID associated with the query (if applicable)
/// * [dateCreated] - Date when the query was created
/// * [dateModified] - Date when the query was last modified
/// * [queryComments] - History of comments/actions on the query
@BuiltValue()
abstract class Query implements Built<Query, QueryBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Mednet subject ID associated with the query (if applicable)
  @BuiltValueField(wireName: r'subjectId')
  int? get subjectId;

  /// Client-assigned subject OID (if applicable)
  @BuiltValueField(wireName: r'subjectOid')
  String? get subjectOid;

  /// Category/type of the query (e.g., subject, record, question)
  @BuiltValueField(wireName: r'annotationType')
  String? get annotationType;

  /// Unique system identifier for the query
  @BuiltValueField(wireName: r'annotationId')
  int? get annotationId;

  /// System text identifier for the query type/location (subject, record, question)
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Description of the query (e.g., reason or context)
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Record ID associated with the query (if applicable)
  @BuiltValueField(wireName: r'recordId')
  int? get recordId;

  /// Variable name (field) associated with the query (if applicable)
  @BuiltValueField(wireName: r'variable')
  String? get variable;

  /// Subject display ID associated with the query (if applicable)
  @BuiltValueField(wireName: r'subjectKey')
  String? get subjectKey;

  /// Date when the query was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Date when the query was last modified
  @BuiltValueField(wireName: r'dateModified')
  String? get dateModified;

  /// History of comments/actions on the query
  @BuiltValueField(wireName: r'queryComments')
  BuiltList<QueryComment>? get queryComments;

  Query._();

  factory Query([void updates(QueryBuilder b)]) = _$Query;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Query> get serializer => _$QuerySerializer();
}

class _$QuerySerializer implements PrimitiveSerializer<Query> {
  @override
  final Iterable<Type> types = const [Query, _$Query];

  @override
  final String wireName = r'Query';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Query object, {
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
    if (object.annotationType != null) {
      yield r'annotationType';
      yield serializers.serialize(
        object.annotationType,
        specifiedType: const FullType(String),
      );
    }
    if (object.annotationId != null) {
      yield r'annotationId';
      yield serializers.serialize(
        object.annotationId,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
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
    if (object.subjectKey != null) {
      yield r'subjectKey';
      yield serializers.serialize(
        object.subjectKey,
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
    if (object.queryComments != null) {
      yield r'queryComments';
      yield serializers.serialize(
        object.queryComments,
        specifiedType: const FullType(BuiltList, [FullType(QueryComment)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Query object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueryBuilder result,
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
        case r'annotationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.annotationType = valueDes;
          break;
        case r'annotationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.annotationId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
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
        case r'subjectKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subjectKey = valueDes;
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
        case r'queryComments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QueryComment)]),
          ) as BuiltList<QueryComment>;
          result.queryComments.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Query deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryBuilder();
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

