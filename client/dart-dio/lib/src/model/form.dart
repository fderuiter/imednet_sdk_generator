//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'form.g.dart';

/// Form
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [formId] - Mednet Form ID
/// * [formKey] - User-defined form key
/// * [formName] - Name of the form (eCRF)
/// * [formType] - Type of the form (e.g., Subject or Site)
/// * [revision] - Number of modifications (revisions) of the form metadata
/// * [embeddedLog] - Whether the form has an embedded log
/// * [enforceOwnership] - Whether the form enforces record ownership
/// * [userAgreement] - Whether the form requires a user agreement
/// * [subjectRecordReport] - Whether the form is marked as a subject record report
/// * [unscheduledVisit] - Whether the form is included in unscheduled visits
/// * [otherForms] - Whether the form is included in Other Forms category
/// * [eproForm] - Whether the form is an ePRO (electronic patient reported outcome) form
/// * [allowCopy] - Whether the form allows copying of data
/// * [disabled] - Whether the form is soft-deleted (disabled)
/// * [dateCreated] - Date when this form was created
/// * [dateModified] - Date when this form was last modified
@BuiltValue()
abstract class Form implements Built<Form, FormBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Mednet Form ID
  @BuiltValueField(wireName: r'formId')
  int? get formId;

  /// User-defined form key
  @BuiltValueField(wireName: r'formKey')
  String? get formKey;

  /// Name of the form (eCRF)
  @BuiltValueField(wireName: r'formName')
  String? get formName;

  /// Type of the form (e.g., Subject or Site)
  @BuiltValueField(wireName: r'formType')
  String? get formType;

  /// Number of modifications (revisions) of the form metadata
  @BuiltValueField(wireName: r'revision')
  int? get revision;

  /// Whether the form has an embedded log
  @BuiltValueField(wireName: r'embeddedLog')
  bool? get embeddedLog;

  /// Whether the form enforces record ownership
  @BuiltValueField(wireName: r'enforceOwnership')
  bool? get enforceOwnership;

  /// Whether the form requires a user agreement
  @BuiltValueField(wireName: r'userAgreement')
  bool? get userAgreement;

  /// Whether the form is marked as a subject record report
  @BuiltValueField(wireName: r'subjectRecordReport')
  bool? get subjectRecordReport;

  /// Whether the form is included in unscheduled visits
  @BuiltValueField(wireName: r'unscheduledVisit')
  bool? get unscheduledVisit;

  /// Whether the form is included in Other Forms category
  @BuiltValueField(wireName: r'otherForms')
  bool? get otherForms;

  /// Whether the form is an ePRO (electronic patient reported outcome) form
  @BuiltValueField(wireName: r'eproForm')
  bool? get eproForm;

  /// Whether the form allows copying of data
  @BuiltValueField(wireName: r'allowCopy')
  bool? get allowCopy;

  /// Whether the form is soft-deleted (disabled)
  @BuiltValueField(wireName: r'disabled')
  bool? get disabled;

  /// Date when this form was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Date when this form was last modified
  @BuiltValueField(wireName: r'dateModified')
  String? get dateModified;

  Form._();

  factory Form([void updates(FormBuilder b)]) = _$Form;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FormBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Form> get serializer => _$FormSerializer();
}

class _$FormSerializer implements PrimitiveSerializer<Form> {
  @override
  final Iterable<Type> types = const [Form, _$Form];

  @override
  final String wireName = r'Form';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Form object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.studyKey != null) {
      yield r'studyKey';
      yield serializers.serialize(
        object.studyKey,
        specifiedType: const FullType(String),
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
    if (object.formName != null) {
      yield r'formName';
      yield serializers.serialize(
        object.formName,
        specifiedType: const FullType(String),
      );
    }
    if (object.formType != null) {
      yield r'formType';
      yield serializers.serialize(
        object.formType,
        specifiedType: const FullType(String),
      );
    }
    if (object.revision != null) {
      yield r'revision';
      yield serializers.serialize(
        object.revision,
        specifiedType: const FullType(int),
      );
    }
    if (object.embeddedLog != null) {
      yield r'embeddedLog';
      yield serializers.serialize(
        object.embeddedLog,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enforceOwnership != null) {
      yield r'enforceOwnership';
      yield serializers.serialize(
        object.enforceOwnership,
        specifiedType: const FullType(bool),
      );
    }
    if (object.userAgreement != null) {
      yield r'userAgreement';
      yield serializers.serialize(
        object.userAgreement,
        specifiedType: const FullType(bool),
      );
    }
    if (object.subjectRecordReport != null) {
      yield r'subjectRecordReport';
      yield serializers.serialize(
        object.subjectRecordReport,
        specifiedType: const FullType(bool),
      );
    }
    if (object.unscheduledVisit != null) {
      yield r'unscheduledVisit';
      yield serializers.serialize(
        object.unscheduledVisit,
        specifiedType: const FullType(bool),
      );
    }
    if (object.otherForms != null) {
      yield r'otherForms';
      yield serializers.serialize(
        object.otherForms,
        specifiedType: const FullType(bool),
      );
    }
    if (object.eproForm != null) {
      yield r'eproForm';
      yield serializers.serialize(
        object.eproForm,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowCopy != null) {
      yield r'allowCopy';
      yield serializers.serialize(
        object.allowCopy,
        specifiedType: const FullType(bool),
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
    Form object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FormBuilder result,
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
        case r'formType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formType = valueDes;
          break;
        case r'revision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.revision = valueDes;
          break;
        case r'embeddedLog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.embeddedLog = valueDes;
          break;
        case r'enforceOwnership':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enforceOwnership = valueDes;
          break;
        case r'userAgreement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.userAgreement = valueDes;
          break;
        case r'subjectRecordReport':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.subjectRecordReport = valueDes;
          break;
        case r'unscheduledVisit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unscheduledVisit = valueDes;
          break;
        case r'otherForms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.otherForms = valueDes;
          break;
        case r'eproForm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.eproForm = valueDes;
          break;
        case r'allowCopy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowCopy = valueDes;
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
  Form deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FormBuilder();
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

