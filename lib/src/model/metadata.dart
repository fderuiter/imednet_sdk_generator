//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/components_schemas_metadata_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metadata.g.dart';

/// Metadata
///
/// Properties:
/// * [status] - HTTP status of the response (e.g., OK or ERROR)
/// * [method] - HTTP method of the request
/// * [path] - Requested URI path
/// * [timestamp] - Timestamp when response was generated
/// * [error] 
@BuiltValue()
abstract class Metadata implements Built<Metadata, MetadataBuilder> {
  /// HTTP status of the response (e.g., OK or ERROR)
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// HTTP method of the request
  @BuiltValueField(wireName: r'method')
  String? get method;

  /// Requested URI path
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// Timestamp when response was generated
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'error')
  ComponentsSchemasMetadataError? get error;

  Metadata._();

  factory Metadata([void updates(MetadataBuilder b)]) = _$Metadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Metadata> get serializer => _$MetadataSerializer();
}

class _$MetadataSerializer implements PrimitiveSerializer<Metadata> {
  @override
  final Iterable<Type> types = const [Metadata, _$Metadata];

  @override
  final String wireName = r'Metadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Metadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(ComponentsSchemasMetadataError),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Metadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.method = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ComponentsSchemasMetadataError),
          ) as ComponentsSchemasMetadataError;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Metadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetadataBuilder();
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

