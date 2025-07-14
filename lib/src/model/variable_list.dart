//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/pagination.dart';
import 'package:openapi/src/model/metadata.dart';
import 'package:openapi/src/model/variable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variable_list.g.dart';

/// VariableList
///
/// Properties:
/// * [metadata] 
/// * [pagination] 
/// * [data] 
@BuiltValue()
abstract class VariableList implements Built<VariableList, VariableListBuilder> {
  @BuiltValueField(wireName: r'metadata')
  Metadata? get metadata;

  @BuiltValueField(wireName: r'pagination')
  Pagination? get pagination;

  @BuiltValueField(wireName: r'data')
  BuiltList<Variable>? get data;

  VariableList._();

  factory VariableList([void updates(VariableListBuilder b)]) = _$VariableList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VariableListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VariableList> get serializer => _$VariableListSerializer();
}

class _$VariableListSerializer implements PrimitiveSerializer<VariableList> {
  @override
  final Iterable<Type> types = const [VariableList, _$VariableList];

  @override
  final String wireName = r'VariableList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VariableList object, {
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
        specifiedType: const FullType(BuiltList, [FullType(Variable)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VariableList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VariableListBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Variable)]),
          ) as BuiltList<Variable>;
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
  VariableList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VariableListBuilder();
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

