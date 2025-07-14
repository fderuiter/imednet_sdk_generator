//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/pagination.dart';
import 'package:openapi/src/model/coding.dart';
import 'package:openapi/src/model/metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coding_list.g.dart';

/// CodingList
///
/// Properties:
/// * [metadata] 
/// * [pagination] 
/// * [data] 
@BuiltValue()
abstract class CodingList implements Built<CodingList, CodingListBuilder> {
  @BuiltValueField(wireName: r'metadata')
  Metadata? get metadata;

  @BuiltValueField(wireName: r'pagination')
  Pagination? get pagination;

  @BuiltValueField(wireName: r'data')
  BuiltList<Coding>? get data;

  CodingList._();

  factory CodingList([void updates(CodingListBuilder b)]) = _$CodingList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CodingListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CodingList> get serializer => _$CodingListSerializer();
}

class _$CodingListSerializer implements PrimitiveSerializer<CodingList> {
  @override
  final Iterable<Type> types = const [CodingList, _$CodingList];

  @override
  final String wireName = r'CodingList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CodingList object, {
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
        specifiedType: const FullType(BuiltList, [FullType(Coding)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CodingList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CodingListBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Coding)]),
          ) as BuiltList<Coding>;
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
  CodingList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CodingListBuilder();
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

