//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'components_schemas_metadata_error.g.dart';

/// Error details if an error occurred
///
/// Properties:
/// * [message] - Error message describing the issue
@BuiltValue()
abstract class ComponentsSchemasMetadataError implements Built<ComponentsSchemasMetadataError, ComponentsSchemasMetadataErrorBuilder> {
  /// Error message describing the issue
  @BuiltValueField(wireName: r'message')
  String? get message;

  ComponentsSchemasMetadataError._();

  factory ComponentsSchemasMetadataError([void updates(ComponentsSchemasMetadataErrorBuilder b)]) = _$ComponentsSchemasMetadataError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComponentsSchemasMetadataErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComponentsSchemasMetadataError> get serializer => _$ComponentsSchemasMetadataErrorSerializer();
}

class _$ComponentsSchemasMetadataErrorSerializer implements PrimitiveSerializer<ComponentsSchemasMetadataError> {
  @override
  final Iterable<Type> types = const [ComponentsSchemasMetadataError, _$ComponentsSchemasMetadataError];

  @override
  final String wireName = r'ComponentsSchemasMetadataError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComponentsSchemasMetadataError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComponentsSchemasMetadataError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComponentsSchemasMetadataErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComponentsSchemasMetadataError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComponentsSchemasMetadataErrorBuilder();
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

