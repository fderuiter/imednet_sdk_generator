//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job.g.dart';

/// Job
///
/// Properties:
/// * [jobId] - Unique job identifier
/// * [batchId] - Batch ID associated with the job (useful for linking with record creation requests)
/// * [state] - State of the job (e.g., completed, pending)
/// * [dateCreated] - Timestamp when the job was created
/// * [dateStarted] - Timestamp when the job started processing
/// * [dateFinished] - Timestamp when the job finished processing
@BuiltValue()
abstract class Job implements Built<Job, JobBuilder> {
  /// Unique job identifier
  @BuiltValueField(wireName: r'jobId')
  String? get jobId;

  /// Batch ID associated with the job (useful for linking with record creation requests)
  @BuiltValueField(wireName: r'batchId')
  String? get batchId;

  /// State of the job (e.g., completed, pending)
  @BuiltValueField(wireName: r'state')
  String? get state;

  /// Timestamp when the job was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Timestamp when the job started processing
  @BuiltValueField(wireName: r'dateStarted')
  String? get dateStarted;

  /// Timestamp when the job finished processing
  @BuiltValueField(wireName: r'dateFinished')
  String? get dateFinished;

  Job._();

  factory Job([void updates(JobBuilder b)]) = _$Job;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JobBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Job> get serializer => _$JobSerializer();
}

class _$JobSerializer implements PrimitiveSerializer<Job> {
  @override
  final Iterable<Type> types = const [Job, _$Job];

  @override
  final String wireName = r'Job';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Job object, {
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
    if (object.dateCreated != null) {
      yield r'dateCreated';
      yield serializers.serialize(
        object.dateCreated,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateStarted != null) {
      yield r'dateStarted';
      yield serializers.serialize(
        object.dateStarted,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateFinished != null) {
      yield r'dateFinished';
      yield serializers.serialize(
        object.dateFinished,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Job object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JobBuilder result,
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
        case r'dateCreated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateCreated = valueDes;
          break;
        case r'dateStarted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateStarted = valueDes;
          break;
        case r'dateFinished':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateFinished = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Job deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JobBuilder();
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

