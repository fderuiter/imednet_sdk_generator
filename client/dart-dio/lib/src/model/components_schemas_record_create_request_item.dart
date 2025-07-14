//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'components_schemas_record_create_request_item.g.dart';

/// ComponentsSchemasRecordCreateRequestItem
///
/// Properties:
/// * [formKey] - Form key identifying the eCRF to create or update
/// * [formId] - Form ID identifying the eCRF to create or update (alternative to formKey)
/// * [siteName] - Name of the site where the record should be created (for new subject registration)
/// * [siteId] - Site ID for the record (alternative to siteName)
/// * [subjectKey] - Subject identifier (display ID) for which to create or update the record
/// * [subjectId] - Subject ID for which to create or update the record (alternative to subjectKey)
/// * [subjectOid] - Subject OID for which to create or update the record (alternative to subjectKey)
/// * [intervalName] - Name of the interval (visit) for a scheduled record update
/// * [intervalId] - Interval ID for a scheduled record update (alternative to intervalName)
/// * [recordId] - Record ID for updating an existing unscheduled record (if applicable)
/// * [recordOid] - Record OID for updating an existing unscheduled record (if applicable)
/// * [data] - Key-value pairs of field names and values for the record data
@BuiltValue()
abstract class ComponentsSchemasRecordCreateRequestItem implements Built<ComponentsSchemasRecordCreateRequestItem, ComponentsSchemasRecordCreateRequestItemBuilder> {
  /// Form key identifying the eCRF to create or update
  @BuiltValueField(wireName: r'formKey')
  String get formKey;

  /// Form ID identifying the eCRF to create or update (alternative to formKey)
  @BuiltValueField(wireName: r'formId')
  int? get formId;

  /// Name of the site where the record should be created (for new subject registration)
  @BuiltValueField(wireName: r'siteName')
  String? get siteName;

  /// Site ID for the record (alternative to siteName)
  @BuiltValueField(wireName: r'siteId')
  int? get siteId;

  /// Subject identifier (display ID) for which to create or update the record
  @BuiltValueField(wireName: r'subjectKey')
  String? get subjectKey;

  /// Subject ID for which to create or update the record (alternative to subjectKey)
  @BuiltValueField(wireName: r'subjectId')
  int? get subjectId;

  /// Subject OID for which to create or update the record (alternative to subjectKey)
  @BuiltValueField(wireName: r'subjectOid')
  String? get subjectOid;

  /// Name of the interval (visit) for a scheduled record update
  @BuiltValueField(wireName: r'intervalName')
  String? get intervalName;

  /// Interval ID for a scheduled record update (alternative to intervalName)
  @BuiltValueField(wireName: r'intervalId')
  int? get intervalId;

  /// Record ID for updating an existing unscheduled record (if applicable)
  @BuiltValueField(wireName: r'recordId')
  int? get recordId;

  /// Record OID for updating an existing unscheduled record (if applicable)
  @BuiltValueField(wireName: r'recordOid')
  String? get recordOid;

  /// Key-value pairs of field names and values for the record data
  @BuiltValueField(wireName: r'data')
  BuiltMap<String, JsonObject?> get data;

  ComponentsSchemasRecordCreateRequestItem._();

  factory ComponentsSchemasRecordCreateRequestItem([void updates(ComponentsSchemasRecordCreateRequestItemBuilder b)]) = _$ComponentsSchemasRecordCreateRequestItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComponentsSchemasRecordCreateRequestItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComponentsSchemasRecordCreateRequestItem> get serializer => _$ComponentsSchemasRecordCreateRequestItemSerializer();
}

class _$ComponentsSchemasRecordCreateRequestItemSerializer implements PrimitiveSerializer<ComponentsSchemasRecordCreateRequestItem> {
  @override
  final Iterable<Type> types = const [ComponentsSchemasRecordCreateRequestItem, _$ComponentsSchemasRecordCreateRequestItem];

  @override
  final String wireName = r'ComponentsSchemasRecordCreateRequestItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComponentsSchemasRecordCreateRequestItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'formKey';
    yield serializers.serialize(
      object.formKey,
      specifiedType: const FullType(String),
    );
    if (object.formId != null) {
      yield r'formId';
      yield serializers.serialize(
        object.formId,
        specifiedType: const FullType(int),
      );
    }
    if (object.siteName != null) {
      yield r'siteName';
      yield serializers.serialize(
        object.siteName,
        specifiedType: const FullType(String),
      );
    }
    if (object.siteId != null) {
      yield r'siteId';
      yield serializers.serialize(
        object.siteId,
        specifiedType: const FullType(int),
      );
    }
    if (object.subjectKey != null) {
      yield r'subjectKey';
      yield serializers.serialize(
        object.subjectKey,
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
    if (object.intervalName != null) {
      yield r'intervalName';
      yield serializers.serialize(
        object.intervalName,
        specifiedType: const FullType(String),
      );
    }
    if (object.intervalId != null) {
      yield r'intervalId';
      yield serializers.serialize(
        object.intervalId,
        specifiedType: const FullType(int),
      );
    }
    if (object.recordId != null) {
      yield r'recordId';
      yield serializers.serialize(
        object.recordId,
        specifiedType: const FullType(int),
      );
    }
    if (object.recordOid != null) {
      yield r'recordOid';
      yield serializers.serialize(
        object.recordOid,
        specifiedType: const FullType(String),
      );
    }
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ComponentsSchemasRecordCreateRequestItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComponentsSchemasRecordCreateRequestItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'formKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formKey = valueDes;
          break;
        case r'formId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.formId = valueDes;
          break;
        case r'siteName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.siteName = valueDes;
          break;
        case r'siteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.siteId = valueDes;
          break;
        case r'subjectKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subjectKey = valueDes;
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
        case r'intervalName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.intervalName = valueDes;
          break;
        case r'intervalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.intervalId = valueDes;
          break;
        case r'recordId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.recordId = valueDes;
          break;
        case r'recordOid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recordOid = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
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
  ComponentsSchemasRecordCreateRequestItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComponentsSchemasRecordCreateRequestItemBuilder();
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

