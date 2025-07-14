//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/components_schemas_interval_forms_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interval.g.dart';

/// Interval
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [intervalId] - Unique system identifier for the interval (visit definition)
/// * [intervalName] - Name of the interval (visit) as defined in the study
/// * [intervalDescription] - Description of the interval (visit)
/// * [intervalSequence] - Sequence number of the interval in the schedule
/// * [intervalGroupId] - Identifier for the interval group (if intervals are grouped)
/// * [intervalGroupName] - Name of the interval group
/// * [timeline] - Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
/// * [definedUsingInterval] - Baseline interval used for calculating this interval’s dates
/// * [windowCalculationForm] - Baseline form (name) from which the calculation date is taken
/// * [windowCalculationDate] - Baseline field (variable name) from which the calculation date is taken
/// * [actualDateForm] - Form used to capture the actual date for this interval
/// * [actualDate] - Field (variable name) used to capture the actual date for this interval
/// * [dueDateWillBeIn] - Number of days from the calculation date when the interval is due
/// * [negativeSlack] - Number of days before the due date that are allowed (negative window)
/// * [positiveSlack] - Number of days after the due date that are allowed (positive window)
/// * [eproGracePeriod] - Number of days of grace period for ePRO completion after due date
/// * [forms] - List of forms that are scheduled in this interval
/// * [disabled] - Whether the interval is soft-deleted (disabled)
/// * [dateCreated] - Date when this interval was created
/// * [dateModified] - Date when this interval was last modified
@BuiltValue()
abstract class Interval implements Built<Interval, IntervalBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Unique system identifier for the interval (visit definition)
  @BuiltValueField(wireName: r'intervalId')
  int? get intervalId;

  /// Name of the interval (visit) as defined in the study
  @BuiltValueField(wireName: r'intervalName')
  String? get intervalName;

  /// Description of the interval (visit)
  @BuiltValueField(wireName: r'intervalDescription')
  String? get intervalDescription;

  /// Sequence number of the interval in the schedule
  @BuiltValueField(wireName: r'intervalSequence')
  int? get intervalSequence;

  /// Identifier for the interval group (if intervals are grouped)
  @BuiltValueField(wireName: r'intervalGroupId')
  int? get intervalGroupId;

  /// Name of the interval group
  @BuiltValueField(wireName: r'intervalGroupName')
  String? get intervalGroupName;

  /// Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
  @BuiltValueField(wireName: r'timeline')
  String? get timeline;

  /// Baseline interval used for calculating this interval’s dates
  @BuiltValueField(wireName: r'definedUsingInterval')
  String? get definedUsingInterval;

  /// Baseline form (name) from which the calculation date is taken
  @BuiltValueField(wireName: r'windowCalculationForm')
  String? get windowCalculationForm;

  /// Baseline field (variable name) from which the calculation date is taken
  @BuiltValueField(wireName: r'windowCalculationDate')
  String? get windowCalculationDate;

  /// Form used to capture the actual date for this interval
  @BuiltValueField(wireName: r'actualDateForm')
  String? get actualDateForm;

  /// Field (variable name) used to capture the actual date for this interval
  @BuiltValueField(wireName: r'actualDate')
  String? get actualDate;

  /// Number of days from the calculation date when the interval is due
  @BuiltValueField(wireName: r'dueDateWillBeIn')
  int? get dueDateWillBeIn;

  /// Number of days before the due date that are allowed (negative window)
  @BuiltValueField(wireName: r'negativeSlack')
  int? get negativeSlack;

  /// Number of days after the due date that are allowed (positive window)
  @BuiltValueField(wireName: r'positiveSlack')
  int? get positiveSlack;

  /// Number of days of grace period for ePRO completion after due date
  @BuiltValueField(wireName: r'eproGracePeriod')
  int? get eproGracePeriod;

  /// List of forms that are scheduled in this interval
  @BuiltValueField(wireName: r'forms')
  BuiltList<ComponentsSchemasIntervalFormsItem>? get forms;

  /// Whether the interval is soft-deleted (disabled)
  @BuiltValueField(wireName: r'disabled')
  bool? get disabled;

  /// Date when this interval was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Date when this interval was last modified
  @BuiltValueField(wireName: r'dateModified')
  String? get dateModified;

  Interval._();

  factory Interval([void updates(IntervalBuilder b)]) = _$Interval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntervalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Interval> get serializer => _$IntervalSerializer();
}

class _$IntervalSerializer implements PrimitiveSerializer<Interval> {
  @override
  final Iterable<Type> types = const [Interval, _$Interval];

  @override
  final String wireName = r'Interval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Interval object, {
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
    if (object.intervalName != null) {
      yield r'intervalName';
      yield serializers.serialize(
        object.intervalName,
        specifiedType: const FullType(String),
      );
    }
    if (object.intervalDescription != null) {
      yield r'intervalDescription';
      yield serializers.serialize(
        object.intervalDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.intervalSequence != null) {
      yield r'intervalSequence';
      yield serializers.serialize(
        object.intervalSequence,
        specifiedType: const FullType(int),
      );
    }
    if (object.intervalGroupId != null) {
      yield r'intervalGroupId';
      yield serializers.serialize(
        object.intervalGroupId,
        specifiedType: const FullType(int),
      );
    }
    if (object.intervalGroupName != null) {
      yield r'intervalGroupName';
      yield serializers.serialize(
        object.intervalGroupName,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeline != null) {
      yield r'timeline';
      yield serializers.serialize(
        object.timeline,
        specifiedType: const FullType(String),
      );
    }
    if (object.definedUsingInterval != null) {
      yield r'definedUsingInterval';
      yield serializers.serialize(
        object.definedUsingInterval,
        specifiedType: const FullType(String),
      );
    }
    if (object.windowCalculationForm != null) {
      yield r'windowCalculationForm';
      yield serializers.serialize(
        object.windowCalculationForm,
        specifiedType: const FullType(String),
      );
    }
    if (object.windowCalculationDate != null) {
      yield r'windowCalculationDate';
      yield serializers.serialize(
        object.windowCalculationDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.actualDateForm != null) {
      yield r'actualDateForm';
      yield serializers.serialize(
        object.actualDateForm,
        specifiedType: const FullType(String),
      );
    }
    if (object.actualDate != null) {
      yield r'actualDate';
      yield serializers.serialize(
        object.actualDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.dueDateWillBeIn != null) {
      yield r'dueDateWillBeIn';
      yield serializers.serialize(
        object.dueDateWillBeIn,
        specifiedType: const FullType(int),
      );
    }
    if (object.negativeSlack != null) {
      yield r'negativeSlack';
      yield serializers.serialize(
        object.negativeSlack,
        specifiedType: const FullType(int),
      );
    }
    if (object.positiveSlack != null) {
      yield r'positiveSlack';
      yield serializers.serialize(
        object.positiveSlack,
        specifiedType: const FullType(int),
      );
    }
    if (object.eproGracePeriod != null) {
      yield r'eproGracePeriod';
      yield serializers.serialize(
        object.eproGracePeriod,
        specifiedType: const FullType(int),
      );
    }
    if (object.forms != null) {
      yield r'forms';
      yield serializers.serialize(
        object.forms,
        specifiedType: const FullType(BuiltList, [FullType(ComponentsSchemasIntervalFormsItem)]),
      );
    }
    if (object.disabled != null) {
      yield r'disabled';
      yield serializers.serialize(
        object.disabled,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Interval object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IntervalBuilder result,
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
        case r'intervalName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.intervalName = valueDes;
          break;
        case r'intervalDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.intervalDescription = valueDes;
          break;
        case r'intervalSequence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.intervalSequence = valueDes;
          break;
        case r'intervalGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.intervalGroupId = valueDes;
          break;
        case r'intervalGroupName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.intervalGroupName = valueDes;
          break;
        case r'timeline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeline = valueDes;
          break;
        case r'definedUsingInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.definedUsingInterval = valueDes;
          break;
        case r'windowCalculationForm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.windowCalculationForm = valueDes;
          break;
        case r'windowCalculationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.windowCalculationDate = valueDes;
          break;
        case r'actualDateForm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.actualDateForm = valueDes;
          break;
        case r'actualDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.actualDate = valueDes;
          break;
        case r'dueDateWillBeIn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dueDateWillBeIn = valueDes;
          break;
        case r'negativeSlack':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.negativeSlack = valueDes;
          break;
        case r'positiveSlack':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.positiveSlack = valueDes;
          break;
        case r'eproGracePeriod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.eproGracePeriod = valueDes;
          break;
        case r'forms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ComponentsSchemasIntervalFormsItem)]),
          ) as BuiltList<ComponentsSchemasIntervalFormsItem>;
          result.forms.replace(valueDes);
          break;
        case r'disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disabled = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Interval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntervalBuilder();
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

