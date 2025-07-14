//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query_comment.g.dart';

/// QueryComment
///
/// Properties:
/// * [sequence] - Sequence number of the comment/action in the query history
/// * [annotationStatus] - Status of the query after this comment (e.g., Open, Closed)
/// * [user] - Username of the user who made the comment or action
/// * [comment] - Text of the comment
/// * [closed] - Whether the query was marked closed at this step
/// * [date] - Date of the comment or action
@BuiltValue()
abstract class QueryComment implements Built<QueryComment, QueryCommentBuilder> {
  /// Sequence number of the comment/action in the query history
  @BuiltValueField(wireName: r'sequence')
  int? get sequence;

  /// Status of the query after this comment (e.g., Open, Closed)
  @BuiltValueField(wireName: r'annotationStatus')
  String? get annotationStatus;

  /// Username of the user who made the comment or action
  @BuiltValueField(wireName: r'user')
  String? get user;

  /// Text of the comment
  @BuiltValueField(wireName: r'comment')
  String? get comment;

  /// Whether the query was marked closed at this step
  @BuiltValueField(wireName: r'closed')
  bool? get closed;

  /// Date of the comment or action
  @BuiltValueField(wireName: r'date')
  String? get date;

  QueryComment._();

  factory QueryComment([void updates(QueryCommentBuilder b)]) = _$QueryComment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryCommentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueryComment> get serializer => _$QueryCommentSerializer();
}

class _$QueryCommentSerializer implements PrimitiveSerializer<QueryComment> {
  @override
  final Iterable<Type> types = const [QueryComment, _$QueryComment];

  @override
  final String wireName = r'QueryComment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueryComment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sequence != null) {
      yield r'sequence';
      yield serializers.serialize(
        object.sequence,
        specifiedType: const FullType(int),
      );
    }
    if (object.annotationStatus != null) {
      yield r'annotationStatus';
      yield serializers.serialize(
        object.annotationStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(String),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
    if (object.closed != null) {
      yield r'closed';
      yield serializers.serialize(
        object.closed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueryComment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueryCommentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sequence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sequence = valueDes;
          break;
        case r'annotationStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.annotationStatus = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.user = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comment = valueDes;
          break;
        case r'closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.closed = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueryComment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryCommentBuilder();
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

