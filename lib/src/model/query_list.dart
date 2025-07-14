//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/pagination.dart';
import 'package:openapi/src/model/metadata.dart';
import 'package:openapi/src/model/query.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'query_list.g.dart';

/// QueryList
///
/// Properties:
/// * [metadata] 
/// * [pagination] 
/// * [data] 
@BuiltValue()
abstract class QueryList implements Built<QueryList, QueryListBuilder> {
  @BuiltValueField(wireName: r'metadata')
  Metadata? get metadata;

  @BuiltValueField(wireName: r'pagination')
  Pagination? get pagination;

  @BuiltValueField(wireName: r'data')
  BuiltList<Query>? get data;

  QueryList._();

  factory QueryList([void updates(QueryListBuilder b)]) = _$QueryList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueryList> get serializer => _$QueryListSerializer();
}

class _$QueryListSerializer implements PrimitiveSerializer<QueryList> {
  @override
  final Iterable<Type> types = const [QueryList, _$QueryList];

  @override
  final String wireName = r'QueryList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueryList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(Metadata),
      );
    }
    if (object.pagination != null) {
      yield r'pagination';
      yield serializers.serialize(
        object.pagination,
        specifiedType: const FullType(Pagination),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Query)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueryList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueryListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Metadata),
          ) as Metadata;
          result.metadata.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Pagination),
          ) as Pagination;
          result.pagination.replace(valueDes);
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Query)]),
          ) as BuiltList<Query>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueryList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryListBuilder();
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

