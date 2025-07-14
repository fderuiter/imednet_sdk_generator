//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/form.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/pagination.dart';
import 'package:openapi/src/model/metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'form_list.g.dart';

/// FormList
///
/// Properties:
/// * [metadata] 
/// * [pagination] 
/// * [data] 
@BuiltValue()
abstract class FormList implements Built<FormList, FormListBuilder> {
  @BuiltValueField(wireName: r'metadata')
  Metadata? get metadata;

  @BuiltValueField(wireName: r'pagination')
  Pagination? get pagination;

  @BuiltValueField(wireName: r'data')
  BuiltList<Form>? get data;

  FormList._();

  factory FormList([void updates(FormListBuilder b)]) = _$FormList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FormListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FormList> get serializer => _$FormListSerializer();
}

class _$FormListSerializer implements PrimitiveSerializer<FormList> {
  @override
  final Iterable<Type> types = const [FormList, _$FormList];

  @override
  final String wireName = r'FormList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FormList object, {
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
        specifiedType: const FullType(BuiltList, [FullType(Form)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FormList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FormListBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Form)]),
          ) as BuiltList<Form>;
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
  FormList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FormListBuilder();
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

