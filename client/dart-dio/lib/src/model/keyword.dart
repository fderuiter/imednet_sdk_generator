//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keyword.g.dart';

/// Keyword
///
/// Properties:
/// * [keywordName] - Name of the keyword
/// * [keywordKey] - Key of the keyword (short code)
/// * [keywordId] - Internal keyword ID
/// * [dateAdded] - Date when this keyword was added
@BuiltValue()
abstract class Keyword implements Built<Keyword, KeywordBuilder> {
  /// Name of the keyword
  @BuiltValueField(wireName: r'keywordName')
  String? get keywordName;

  /// Key of the keyword (short code)
  @BuiltValueField(wireName: r'keywordKey')
  String? get keywordKey;

  /// Internal keyword ID
  @BuiltValueField(wireName: r'keywordId')
  int? get keywordId;

  /// Date when this keyword was added
  @BuiltValueField(wireName: r'dateAdded')
  String? get dateAdded;

  Keyword._();

  factory Keyword([void updates(KeywordBuilder b)]) = _$Keyword;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeywordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Keyword> get serializer => _$KeywordSerializer();
}

class _$KeywordSerializer implements PrimitiveSerializer<Keyword> {
  @override
  final Iterable<Type> types = const [Keyword, _$Keyword];

  @override
  final String wireName = r'Keyword';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Keyword object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.keywordName != null) {
      yield r'keywordName';
      yield serializers.serialize(
        object.keywordName,
        specifiedType: const FullType(String),
      );
    }
    if (object.keywordKey != null) {
      yield r'keywordKey';
      yield serializers.serialize(
        object.keywordKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.keywordId != null) {
      yield r'keywordId';
      yield serializers.serialize(
        object.keywordId,
        specifiedType: const FullType(int),
      );
    }
    if (object.dateAdded != null) {
      yield r'dateAdded';
      yield serializers.serialize(
        object.dateAdded,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Keyword object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeywordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keywordName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keywordName = valueDes;
          break;
        case r'keywordKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keywordKey = valueDes;
          break;
        case r'keywordId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.keywordId = valueDes;
          break;
        case r'dateAdded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateAdded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Keyword deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeywordBuilder();
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

