//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_revision.g.dart';

/// RecordRevision
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [recordRevisionId] - Unique system identifier for the record revision
/// * [recordId] - Unique system identifier of the related record
/// * [recordOid] - Client-assigned record OID (if any)
/// * [recordRevision] - Revision number of the record (version of the record status)
/// * [dataRevision] - Revision number of the data within the record
/// * [recordStatus] - Status of the record at this revision (user-defined status label)
/// * [subjectId] - Mednet subject ID related to the record
/// * [subjectOid] - Client-assigned subject OID related to the record
/// * [subjectKey] - Subject display ID related to the record
/// * [siteId] - Site ID related to the record
/// * [formKey] - Form key of the form that the record belongs to
/// * [intervalId] - Interval ID (visit definition) related to the record
/// * [role] - Role name of the user who saved the record revision
/// * [user] - Username of the user who saved the record revision
/// * [reasonForChange] - Reason for change, if provided (for audit trail)
/// * [deleted] - Whether the record was deleted in this revision
/// * [dateCreated] - Date when this record revision was created
@BuiltValue()
abstract class RecordRevision implements Built<RecordRevision, RecordRevisionBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Unique system identifier for the record revision
  @BuiltValueField(wireName: r'recordRevisionId')
  int? get recordRevisionId;

  /// Unique system identifier of the related record
  @BuiltValueField(wireName: r'recordId')
  int? get recordId;

  /// Client-assigned record OID (if any)
  @BuiltValueField(wireName: r'recordOid')
  String? get recordOid;

  /// Revision number of the record (version of the record status)
  @BuiltValueField(wireName: r'recordRevision')
  int? get recordRevision;

  /// Revision number of the data within the record
  @BuiltValueField(wireName: r'dataRevision')
  int? get dataRevision;

  /// Status of the record at this revision (user-defined status label)
  @BuiltValueField(wireName: r'recordStatus')
  String? get recordStatus;

  /// Mednet subject ID related to the record
  @BuiltValueField(wireName: r'subjectId')
  int? get subjectId;

  /// Client-assigned subject OID related to the record
  @BuiltValueField(wireName: r'subjectOid')
  String? get subjectOid;

  /// Subject display ID related to the record
  @BuiltValueField(wireName: r'subjectKey')
  String? get subjectKey;

  /// Site ID related to the record
  @BuiltValueField(wireName: r'siteId')
  int? get siteId;

  /// Form key of the form that the record belongs to
  @BuiltValueField(wireName: r'formKey')
  String? get formKey;

  /// Interval ID (visit definition) related to the record
  @BuiltValueField(wireName: r'intervalId')
  int? get intervalId;

  /// Role name of the user who saved the record revision
  @BuiltValueField(wireName: r'role')
  String? get role;

  /// Username of the user who saved the record revision
  @BuiltValueField(wireName: r'user')
  String? get user;

  /// Reason for change, if provided (for audit trail)
  @BuiltValueField(wireName: r'reasonForChange')
  String? get reasonForChange;

  /// Whether the record was deleted in this revision
  @BuiltValueField(wireName: r'deleted')
  bool? get deleted;

  /// Date when this record revision was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  RecordRevision._();

  factory RecordRevision([void updates(RecordRevisionBuilder b)]) = _$RecordRevision;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordRevisionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordRevision> get serializer => _$RecordRevisionSerializer();
}

class _$RecordRevisionSerializer implements PrimitiveSerializer<RecordRevision> {
  @override
  final Iterable<Type> types = const [RecordRevision, _$RecordRevision];

  @override
  final String wireName = r'RecordRevision';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordRevision object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.studyKey != null) {
      yield r'studyKey';
      yield serializers.serialize(
        object.studyKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.recordRevisionId != null) {
      yield r'recordRevisionId';
      yield serializers.serialize(
        object.recordRevisionId,
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
    if (object.recordRevision != null) {
      yield r'recordRevision';
      yield serializers.serialize(
        object.recordRevision,
        specifiedType: const FullType(int),
      );
    }
    if (object.dataRevision != null) {
      yield r'dataRevision';
      yield serializers.serialize(
        object.dataRevision,
        specifiedType: const FullType(int),
      );
    }
    if (object.recordStatus != null) {
      yield r'recordStatus';
      yield serializers.serialize(
        object.recordStatus,
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
    if (object.siteId != null) {
      yield r'siteId';
      yield serializers.serialize(
        object.siteId,
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
    if (object.intervalId != null) {
      yield r'intervalId';
      yield serializers.serialize(
        object.intervalId,
        specifiedType: const FullType(int),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(String),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(String),
      );
    }
    if (object.reasonForChange != null) {
      yield r'reasonForChange';
      yield serializers.serialize(
        object.reasonForChange,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordRevision object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecordRevisionBuilder result,
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
        case r'recordRevisionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.recordRevisionId = valueDes;
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
        case r'recordRevision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.recordRevision = valueDes;
          break;
        case r'dataRevision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dataRevision = valueDes;
          break;
        case r'recordStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recordStatus = valueDes;
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
        case r'siteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.siteId = valueDes;
          break;
        case r'formKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formKey = valueDes;
          break;
        case r'intervalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.intervalId = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.user = valueDes;
          break;
        case r'reasonForChange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reasonForChange = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordRevision deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordRevisionBuilder();
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

