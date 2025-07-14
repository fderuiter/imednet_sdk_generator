//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Study {
  /// Returns a new [Study] instance.
  Study({
    this.sponsorKey,
    this.studyKey,
    this.studyId,
    this.studyName,
    this.studyDescription,
    this.studyType,
    this.dateCreated,
    this.dateModified,
  });

  /// Sponsor key that this study belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sponsorKey;

  /// Unique study key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyKey;

  /// Mednet study ID (internal numeric identifier)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? studyId;

  /// Name of the study
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyName;

  /// Description of the study
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyDescription;

  /// Type of study (e.g., STUDY)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyType;

  /// Date when the study record was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  /// Date when the study record was last modified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateModified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Study &&
    other.sponsorKey == sponsorKey &&
    other.studyKey == studyKey &&
    other.studyId == studyId &&
    other.studyName == studyName &&
    other.studyDescription == studyDescription &&
    other.studyType == studyType &&
    other.dateCreated == dateCreated &&
    other.dateModified == dateModified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sponsorKey == null ? 0 : sponsorKey!.hashCode) +
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (studyId == null ? 0 : studyId!.hashCode) +
    (studyName == null ? 0 : studyName!.hashCode) +
    (studyDescription == null ? 0 : studyDescription!.hashCode) +
    (studyType == null ? 0 : studyType!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateModified == null ? 0 : dateModified!.hashCode);

  @override
  String toString() => 'Study[sponsorKey=$sponsorKey, studyKey=$studyKey, studyId=$studyId, studyName=$studyName, studyDescription=$studyDescription, studyType=$studyType, dateCreated=$dateCreated, dateModified=$dateModified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sponsorKey != null) {
      json[r'sponsorKey'] = this.sponsorKey;
    } else {
      json[r'sponsorKey'] = null;
    }
    if (this.studyKey != null) {
      json[r'studyKey'] = this.studyKey;
    } else {
      json[r'studyKey'] = null;
    }
    if (this.studyId != null) {
      json[r'studyId'] = this.studyId;
    } else {
      json[r'studyId'] = null;
    }
    if (this.studyName != null) {
      json[r'studyName'] = this.studyName;
    } else {
      json[r'studyName'] = null;
    }
    if (this.studyDescription != null) {
      json[r'studyDescription'] = this.studyDescription;
    } else {
      json[r'studyDescription'] = null;
    }
    if (this.studyType != null) {
      json[r'studyType'] = this.studyType;
    } else {
      json[r'studyType'] = null;
    }
    if (this.dateCreated != null) {
      json[r'dateCreated'] = this.dateCreated;
    } else {
      json[r'dateCreated'] = null;
    }
    if (this.dateModified != null) {
      json[r'dateModified'] = this.dateModified;
    } else {
      json[r'dateModified'] = null;
    }
    return json;
  }

  /// Returns a new [Study] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Study? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Study[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Study[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Study(
        sponsorKey: mapValueOfType<String>(json, r'sponsorKey'),
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        studyId: mapValueOfType<int>(json, r'studyId'),
        studyName: mapValueOfType<String>(json, r'studyName'),
        studyDescription: mapValueOfType<String>(json, r'studyDescription'),
        studyType: mapValueOfType<String>(json, r'studyType'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
        dateModified: mapValueOfType<String>(json, r'dateModified'),
      );
    }
    return null;
  }

  static List<Study> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Study>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Study.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Study> mapFromJson(dynamic json) {
    final map = <String, Study>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Study.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Study-objects as value to a dart map
  static Map<String, List<Study>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Study>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Study.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

