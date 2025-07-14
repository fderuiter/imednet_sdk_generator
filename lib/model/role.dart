//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Role {
  /// Returns a new [Role] instance.
  Role({
    this.dateCreated = const [],
    this.dateModified = const [],
    this.roleId,
    this.communityId,
    this.name,
    this.description,
    this.level,
    this.type,
    this.inactive,
  });

  /// Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])
  List<int> dateCreated;

  /// Timestamp when the role assignment was last modified
  List<int> dateModified;

  /// Unique role ID (UUID)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roleId;

  /// Community ID or level associated with the role
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? communityId;

  /// Name of the role
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Description of the role
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Role level or hierarchy
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? level;

  /// Role type/category
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Whether the role is inactive
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inactive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Role &&
    _deepEquality.equals(other.dateCreated, dateCreated) &&
    _deepEquality.equals(other.dateModified, dateModified) &&
    other.roleId == roleId &&
    other.communityId == communityId &&
    other.name == name &&
    other.description == description &&
    other.level == level &&
    other.type == type &&
    other.inactive == inactive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dateCreated.hashCode) +
    (dateModified.hashCode) +
    (roleId == null ? 0 : roleId!.hashCode) +
    (communityId == null ? 0 : communityId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (inactive == null ? 0 : inactive!.hashCode);

  @override
  String toString() => 'Role[dateCreated=$dateCreated, dateModified=$dateModified, roleId=$roleId, communityId=$communityId, name=$name, description=$description, level=$level, type=$type, inactive=$inactive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dateCreated'] = this.dateCreated;
      json[r'dateModified'] = this.dateModified;
    if (this.roleId != null) {
      json[r'roleId'] = this.roleId;
    } else {
      json[r'roleId'] = null;
    }
    if (this.communityId != null) {
      json[r'communityId'] = this.communityId;
    } else {
      json[r'communityId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.inactive != null) {
      json[r'inactive'] = this.inactive;
    } else {
      json[r'inactive'] = null;
    }
    return json;
  }

  /// Returns a new [Role] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Role? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Role[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Role[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Role(
        dateCreated: json[r'dateCreated'] is Iterable
            ? (json[r'dateCreated'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        dateModified: json[r'dateModified'] is Iterable
            ? (json[r'dateModified'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        roleId: mapValueOfType<String>(json, r'roleId'),
        communityId: mapValueOfType<int>(json, r'communityId'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        level: mapValueOfType<int>(json, r'level'),
        type: mapValueOfType<String>(json, r'type'),
        inactive: mapValueOfType<bool>(json, r'inactive'),
      );
    }
    return null;
  }

  static List<Role> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Role>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Role.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Role> mapFromJson(dynamic json) {
    final map = <String, Role>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Role.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Role-objects as value to a dart map
  static Map<String, List<Role>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Role>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Role.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

