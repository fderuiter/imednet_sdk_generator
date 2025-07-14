//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'components_schemas_interval_forms_item.g.dart';

/// ComponentsSchemasIntervalFormsItem
///
/// Properties:
/// * [formId] - Form ID scheduled in the interval
/// * [formKey] - Form key scheduled in the interval
/// * [formName] - Form name scheduled in the interval
@BuiltValue()
abstract class ComponentsSchemasIntervalFormsItem implements Built<ComponentsSchemasIntervalFormsItem, ComponentsSchemasIntervalFormsItemBuilder> {
  /// Form ID scheduled in the interval
  @BuiltValueField(wireName: r'formId')
  int? get formId;

  /// Form key scheduled in the interval
  @BuiltValueField(wireName: r'formKey')
  String? get formKey;

  /// Form name scheduled in the interval
  @BuiltValueField(wireName: r'formName')
  String? get formName;

  ComponentsSchemasIntervalFormsItem._();

  factory ComponentsSchemasIntervalFormsItem([void updates(ComponentsSchemasIntervalFormsItemBuilder b)]) = _$ComponentsSchemasIntervalFormsItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComponentsSchemasIntervalFormsItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComponentsSchemasIntervalFormsItem> get serializer => _$ComponentsSchemasIntervalFormsItemSerializer();
}

class _$ComponentsSchemasIntervalFormsItemSerializer implements PrimitiveSerializer<ComponentsSchemasIntervalFormsItem> {
  @override
  final Iterable<Type> types = const [ComponentsSchemasIntervalFormsItem, _$ComponentsSchemasIntervalFormsItem];

  @override
  final String wireName = r'ComponentsSchemasIntervalFormsItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComponentsSchemasIntervalFormsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.formId != null) {
      yield r'formId';
      yield serializers.serialize(
        object.formId,
        specifiedType: const FullType(int),
      );
    }
    if (object.formKey != null) {
      yield r'formKey';
      yield serializers.serialize(
        object.formKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.formName != null) {
      yield r'formName';
      yield serializers.serialize(
        object.formName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComponentsSchemasIntervalFormsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComponentsSchemasIntervalFormsItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'formId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.formId = valueDes;
          break;
        case r'formKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formKey = valueDes;
          break;
        case r'formName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComponentsSchemasIntervalFormsItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComponentsSchemasIntervalFormsItemBuilder();
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

