//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_job_status.g.dart';

/// RecordJobStatus
///
/// Properties:
/// * [jobId] - Unique job identifier
/// * [batchId] - Batch ID used to track the job (identical to jobId in most cases)
/// * [state] - Current state of the job (e.g., created, completed)
@BuiltValue()
abstract class RecordJobStatus implements Built<RecordJobStatus, RecordJobStatusBuilder> {
  /// Unique job identifier
  @BuiltValueField(wireName: r'jobId')
  String? get jobId;

  /// Batch ID used to track the job (identical to jobId in most cases)
  @BuiltValueField(wireName: r'batchId')
  String? get batchId;

  /// Current state of the job (e.g., created, completed)
  @BuiltValueField(wireName: r'state')
  String? get state;

  RecordJobStatus._();

  factory RecordJobStatus([void updates(RecordJobStatusBuilder b)]) = _$RecordJobStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordJobStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordJobStatus> get serializer => _$RecordJobStatusSerializer();
}

class _$RecordJobStatusSerializer implements PrimitiveSerializer<RecordJobStatus> {
  @override
  final Iterable<Type> types = const [RecordJobStatus, _$RecordJobStatus];

  @override
  final String wireName = r'RecordJobStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordJobStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.jobId != null) {
      yield r'jobId';
      yield serializers.serialize(
        object.jobId,
        specifiedType: const FullType(String),
      );
    }
    if (object.batchId != null) {
      yield r'batchId';
      yield serializers.serialize(
        object.batchId,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordJobStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecordJobStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jobId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jobId = valueDes;
          break;
        case r'batchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.batchId = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordJobStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordJobStatusBuilder();
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

