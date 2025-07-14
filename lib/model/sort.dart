//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Sort {
  /// Returns a new [Sort] instance.
  Sort({
    this.property,
    this.direction,
  });

  /// Name of the property by which the result is sorted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? property;

  /// Sort direction (ASC or DESC)
  SortDirectionEnum? direction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Sort &&
    other.property == property &&
    other.direction == direction;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (property == null ? 0 : property!.hashCode) +
    (direction == null ? 0 : direction!.hashCode);

  @override
  String toString() => 'Sort[property=$property, direction=$direction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.property != null) {
      json[r'property'] = this.property;
    } else {
      json[r'property'] = null;
    }
    if (this.direction != null) {
      json[r'direction'] = this.direction;
    } else {
      json[r'direction'] = null;
    }
    return json;
  }

  /// Returns a new [Sort] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Sort? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Sort[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Sort[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Sort(
        property: mapValueOfType<String>(json, r'property'),
        direction: SortDirectionEnum.fromJson(json[r'direction']),
      );
    }
    return null;
  }

  static List<Sort> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Sort>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Sort.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Sort> mapFromJson(dynamic json) {
    final map = <String, Sort>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Sort.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Sort-objects as value to a dart map
  static Map<String, List<Sort>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Sort>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Sort.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort direction (ASC or DESC)
class SortDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const SortDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = SortDirectionEnum._(r'ASC');
  static const DESC = SortDirectionEnum._(r'DESC');

  /// List of all possible values in this [enum][SortDirectionEnum].
  static const values = <SortDirectionEnum>[
    ASC,
    DESC,
  ];

  static SortDirectionEnum? fromJson(dynamic value) => SortDirectionEnumTypeTransformer().decode(value);

  static List<SortDirectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SortDirectionEnum] to String,
/// and [decode] dynamic data back to [SortDirectionEnum].
class SortDirectionEnumTypeTransformer {
  factory SortDirectionEnumTypeTransformer() => _instance ??= const SortDirectionEnumTypeTransformer._();

  const SortDirectionEnumTypeTransformer._();

  String encode(SortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SortDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASC': return SortDirectionEnum.ASC;
        case r'DESC': return SortDirectionEnum.DESC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SortDirectionEnumTypeTransformer] instance.
  static SortDirectionEnumTypeTransformer? _instance;
}


