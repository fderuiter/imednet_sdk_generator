//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Keyword {
  /// Returns a new [Keyword] instance.
  Keyword({
    this.keywordName,
    this.keywordKey,
    this.keywordId,
    this.dateAdded,
  });

  /// Name of the keyword
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keywordName;

  /// Key of the keyword (short code)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keywordKey;

  /// Internal keyword ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keywordId;

  /// Date when this keyword was added
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateAdded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Keyword &&
    other.keywordName == keywordName &&
    other.keywordKey == keywordKey &&
    other.keywordId == keywordId &&
    other.dateAdded == dateAdded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keywordName == null ? 0 : keywordName!.hashCode) +
    (keywordKey == null ? 0 : keywordKey!.hashCode) +
    (keywordId == null ? 0 : keywordId!.hashCode) +
    (dateAdded == null ? 0 : dateAdded!.hashCode);

  @override
  String toString() => 'Keyword[keywordName=$keywordName, keywordKey=$keywordKey, keywordId=$keywordId, dateAdded=$dateAdded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.keywordName != null) {
      json[r'keywordName'] = this.keywordName;
    } else {
      json[r'keywordName'] = null;
    }
    if (this.keywordKey != null) {
      json[r'keywordKey'] = this.keywordKey;
    } else {
      json[r'keywordKey'] = null;
    }
    if (this.keywordId != null) {
      json[r'keywordId'] = this.keywordId;
    } else {
      json[r'keywordId'] = null;
    }
    if (this.dateAdded != null) {
      json[r'dateAdded'] = this.dateAdded;
    } else {
      json[r'dateAdded'] = null;
    }
    return json;
  }

  /// Returns a new [Keyword] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Keyword? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Keyword[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Keyword[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Keyword(
        keywordName: mapValueOfType<String>(json, r'keywordName'),
        keywordKey: mapValueOfType<String>(json, r'keywordKey'),
        keywordId: mapValueOfType<int>(json, r'keywordId'),
        dateAdded: mapValueOfType<String>(json, r'dateAdded'),
      );
    }
    return null;
  }

  static List<Keyword> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Keyword>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Keyword.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Keyword> mapFromJson(dynamic json) {
    final map = <String, Keyword>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Keyword.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Keyword-objects as value to a dart map
  static Map<String, List<Keyword>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Keyword>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Keyword.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

