//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site.g.dart';

/// Site
///
/// Properties:
/// * [studyKey] - Unique study key
/// * [siteId] - Unique site ID
/// * [siteName] - Name of the site
/// * [siteEnrollmentStatus] - Enrollment status of the site
/// * [dateCreated] - Date when this site was created
/// * [dateModified] - Date when this site was last modified
@BuiltValue()
abstract class Site implements Built<Site, SiteBuilder> {
  /// Unique study key
  @BuiltValueField(wireName: r'studyKey')
  String? get studyKey;

  /// Unique site ID
  @BuiltValueField(wireName: r'siteId')
  int? get siteId;

  /// Name of the site
  @BuiltValueField(wireName: r'siteName')
  String? get siteName;

  /// Enrollment status of the site
  @BuiltValueField(wireName: r'siteEnrollmentStatus')
  String? get siteEnrollmentStatus;

  /// Date when this site was created
  @BuiltValueField(wireName: r'dateCreated')
  String? get dateCreated;

  /// Date when this site was last modified
  @BuiltValueField(wireName: r'dateModified')
  String? get dateModified;

  Site._();

  factory Site([void updates(SiteBuilder b)]) = _$Site;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SiteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Site> get serializer => _$SiteSerializer();
}

class _$SiteSerializer implements PrimitiveSerializer<Site> {
  @override
  final Iterable<Type> types = const [Site, _$Site];

  @override
  final String wireName = r'Site';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Site object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.studyKey != null) {
      yield r'studyKey';
      yield serializers.serialize(
        object.studyKey,
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
    if (object.siteName != null) {
      yield r'siteName';
      yield serializers.serialize(
        object.siteName,
        specifiedType: const FullType(String),
      );
    }
    if (object.siteEnrollmentStatus != null) {
      yield r'siteEnrollmentStatus';
      yield serializers.serialize(
        object.siteEnrollmentStatus,
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
    Site object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SiteBuilder result,
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
        case r'siteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.siteId = valueDes;
          break;
        case r'siteName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.siteName = valueDes;
          break;
        case r'siteEnrollmentStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.siteEnrollmentStatus = valueDes;
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
  Site deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SiteBuilder();
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

