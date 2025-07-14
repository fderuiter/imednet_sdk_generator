//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role.g.dart';

/// Role
///
/// Properties:
/// * [dateCreated] - Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])
/// * [dateModified] - Timestamp when the role assignment was last modified
/// * [roleId] - Unique role ID (UUID)
/// * [communityId] - Community ID or level associated with the role
/// * [name] - Name of the role
/// * [description] - Description of the role
/// * [level] - Role level or hierarchy
/// * [type] - Role type/category
/// * [inactive] - Whether the role is inactive
@BuiltValue()
abstract class Role implements Built<Role, RoleBuilder> {
  /// Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])
  @BuiltValueField(wireName: r'dateCreated')
  BuiltList<int>? get dateCreated;

  /// Timestamp when the role assignment was last modified
  @BuiltValueField(wireName: r'dateModified')
  BuiltList<int>? get dateModified;

  /// Unique role ID (UUID)
  @BuiltValueField(wireName: r'roleId')
  String? get roleId;

  /// Community ID or level associated with the role
  @BuiltValueField(wireName: r'communityId')
  int? get communityId;

  /// Name of the role
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Description of the role
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Role level or hierarchy
  @BuiltValueField(wireName: r'level')
  int? get level;

  /// Role type/category
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Whether the role is inactive
  @BuiltValueField(wireName: r'inactive')
  bool? get inactive;

  Role._();

  factory Role([void updates(RoleBuilder b)]) = _$Role;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RoleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Role> get serializer => _$RoleSerializer();
}

class _$RoleSerializer implements PrimitiveSerializer<Role> {
  @override
  final Iterable<Type> types = const [Role, _$Role];

  @override
  final String wireName = r'Role';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Role object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dateCreated != null) {
      yield r'dateCreated';
      yield serializers.serialize(
        object.dateCreated,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.dateModified != null) {
      yield r'dateModified';
      yield serializers.serialize(
        object.dateModified,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.roleId != null) {
      yield r'roleId';
      yield serializers.serialize(
        object.roleId,
        specifiedType: const FullType(String),
      );
    }
    if (object.communityId != null) {
      yield r'communityId';
      yield serializers.serialize(
        object.communityId,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.inactive != null) {
      yield r'inactive';
      yield serializers.serialize(
        object.inactive,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Role object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RoleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dateCreated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.dateCreated.replace(valueDes);
          break;
        case r'dateModified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.dateModified.replace(valueDes);
          break;
        case r'roleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roleId = valueDes;
          break;
        case r'communityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.communityId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.level = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'inactive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.inactive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Role deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleBuilder();
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

