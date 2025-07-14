//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object.g.dart';

/// InlineObject
///
/// Properties:
/// * [metadata] 
@BuiltValue()
abstract class InlineObject implements Built<InlineObject, InlineObjectBuilder> {
  @BuiltValueField(wireName: r'metadata')
  Metadata? get metadata;

  InlineObject._();

  factory InlineObject([void updates(InlineObjectBuilder b)]) = _$InlineObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineObject> get serializer => _$InlineObjectSerializer();
}

class _$InlineObjectSerializer implements PrimitiveSerializer<InlineObject> {
  @override
  final Iterable<Type> types = const [InlineObject, _$InlineObject];

  @override
  final String wireName = r'InlineObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(Metadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InlineObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InlineObjectBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InlineObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineObjectBuilder();
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

