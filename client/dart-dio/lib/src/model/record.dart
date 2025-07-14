//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/keyword.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record.g.dart';

/// Record
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [intervalId] - Interval ID (visit definition) that this record is associated with
/// * [formId] - Form ID of the form this record instance belongs to
/// * [formKey] - Form key of the form for this record instance
/// * [siteId] - Site ID associated with the record
/// * [recordId] - Unique record ID
/// * [recordOid] - Client-assigned record OID
/// * [recordType] - Type of record (e.g., SUBJECT for subject-related forms)
/// * [recordStatus] - Current status of the record (e.g., Record Incomplete, Record Complete)
/// * [deleted] - Whether the record is marked as deleted
/// * [dateCreated] - Date when this record was created
/// * [dateModified] - Date when this record was last modified
/// * [subjectId] - Mednet subject ID that this record is associated with
/// * [subjectOid] - Client-assigned subject OID for the subject this record is associated with
/// * [subjectKey] - Subject display ID that this record is associated with
/// * [visitId] - Visit instance ID that this record is associated with (if applicable)
/// * [parentRecordId] - Record ID of the parent record if this record is a subrecord (if applicable)
/// * [keywords] - List of keywords associated with the record
/// * [recordData] - Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.
@BuiltValue()
abstract class Record implements Built<Record, RecordBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Interval ID (visit definition) that this record is associated with
  @BuiltValueField(wireName: r'intervalId')
  int? get intervalId;

  /// Form ID of the form this record instance belongs to
  @BuiltValueField(wireName: r'formId')
  int? get formId;

  /// Form key of the form for this record instance
  @BuiltValueField(wireName: r'formKey')
  String? get formKey;

  /// Site ID associated with the record
  @BuiltValueField(wireName: r'siteId')
  int? get siteId;

  /// Unique record ID
  @BuiltValueField(wireName: r'recordId')
  int? get recordId;

  /// Client-assigned record OID
  @BuiltValueField(wireName: r'recordOid')
  String? get recordOid;

  /// Type of record (e.g., SUBJECT for subject-related forms)
  @BuiltValueField(wireName: r'recordType')
  String? get recordType;

  /// Current status of the record (e.g., Record Incomplete, Record Complete)
  @BuiltValueField(wireName: r'recordStatus')
  String? get recordStatus;

  /// Whether the record is marked as deleted
  @BuiltValueField(wireName: r'deleted')
  bool? get deleted;

  /// Date when this record was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Date when this record was last modified
  @BuiltValueField(wireName: r'dateModified')
  String? get dateModified;

  /// Mednet subject ID that this record is associated with
  @BuiltValueField(wireName: r'subjectId')
  int? get subjectId;

  /// Client-assigned subject OID for the subject this record is associated with
  @BuiltValueField(wireName: r'subjectOid')
  String? get subjectOid;

  /// Subject display ID that this record is associated with
  @BuiltValueField(wireName: r'subjectKey')
  String? get subjectKey;

  /// Visit instance ID that this record is associated with (if applicable)
  @BuiltValueField(wireName: r'visitId')
  int? get visitId;

  /// Record ID of the parent record if this record is a subrecord (if applicable)
  @BuiltValueField(wireName: r'parentRecordId')
  int? get parentRecordId;

  /// List of keywords associated with the record
  @BuiltValueField(wireName: r'keywords')
  BuiltList<Keyword>? get keywords;

  /// Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.
  @BuiltValueField(wireName: r'recordData')
  BuiltMap<String, JsonObject?>? get recordData;

  Record._();

  factory Record([void updates(RecordBuilder b)]) = _$Record;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Record> get serializer => _$RecordSerializer();
}

class _$RecordSerializer implements PrimitiveSerializer<Record> {
  @override
  final Iterable<Type> types = const [Record, _$Record];

  @override
  final String wireName = r'Record';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Record object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.studyKey != null) {
      yield r'studyKey';
      yield serializers.serialize(
        object.studyKey,
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
    if (object.siteId != null) {
      yield r'siteId';
      yield serializers.serialize(
        object.siteId,
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
    if (object.recordType != null) {
      yield r'recordType';
      yield serializers.serialize(
        object.recordType,
        specifiedType: const FullType(String),
      );
    }
    if (object.recordStatus != null) {
      yield r'recordStatus';
      yield serializers.serialize(
        object.recordStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.deleted != null) {
      yield r'deleted';
      yield serializers.serialize(
        object.deleted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dateCreated != null) {
      yield r'dateCreated';
      yield serializers.serialize(
        object.dateCreated,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateModified != null) {
      yield r'dateModified';
      yield serializers.serialize(
        object.dateModified,
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
    if (object.subjectKey != null) {
      yield r'subjectKey';
      yield serializers.serialize(
        object.subjectKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.visitId != null) {
      yield r'visitId';
      yield serializers.serialize(
        object.visitId,
        specifiedType: const FullType(int),
      );
    }
    if (object.parentRecordId != null) {
      yield r'parentRecordId';
      yield serializers.serialize(
        object.parentRecordId,
        specifiedType: const FullType(int),
      );
    }
    if (object.keywords != null) {
      yield r'keywords';
      yield serializers.serialize(
        object.keywords,
        specifiedType: const FullType(BuiltList, [FullType(Keyword)]),
      );
    }
    if (object.recordData != null) {
      yield r'recordData';
      yield serializers.serialize(
        object.recordData,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Record object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'studyKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studyKey = valueDes;
          break;
        case r'intervalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.intervalId = valueDes;
          break;
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
        case r'siteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.siteId = valueDes;
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
        case r'recordType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recordType = valueDes;
          break;
        case r'recordStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recordStatus = valueDes;
          break;
        case r'deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deleted = valueDes;
          break;
        case r'dateCreated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateCreated = valueDes;
          break;
        case r'dateModified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateModified = valueDes;
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
        case r'subjectKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subjectKey = valueDes;
          break;
        case r'visitId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.visitId = valueDes;
          break;
        case r'parentRecordId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.parentRecordId = valueDes;
          break;
        case r'keywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Keyword)]),
          ) as BuiltList<Keyword>;
          result.keywords.replace(valueDes);
          break;
        case r'recordData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.recordData.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Record deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordBuilder();
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

