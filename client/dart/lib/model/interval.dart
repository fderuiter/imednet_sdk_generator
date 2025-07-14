//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Interval {
  /// Returns a new [Interval] instance.
  Interval({
    this.studyKey,
    this.intervalId,
    this.intervalName,
    this.intervalDescription,
    this.intervalSequence,
    this.intervalGroupId,
    this.intervalGroupName,
    this.timeline,
    this.definedUsingInterval,
    this.windowCalculationForm,
    this.windowCalculationDate,
    this.actualDateForm,
    this.actualDate,
    this.dueDateWillBeIn,
    this.negativeSlack,
    this.positiveSlack,
    this.eproGracePeriod,
    this.forms = const [],
    this.disabled,
    this.dateCreated,
    this.dateModified,
  });

  /// Unique study key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studyKey;

  /// Unique system identifier for the interval (visit definition)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? intervalId;

  /// Name of the interval (visit) as defined in the study
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? intervalName;

  /// Description of the interval (visit)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? intervalDescription;

  /// Sequence number of the interval in the schedule
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? intervalSequence;

  /// Identifier for the interval group (if intervals are grouped)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? intervalGroupId;

  /// Name of the interval group
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? intervalGroupName;

  /// Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeline;

  /// Baseline interval used for calculating this interval’s dates
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? definedUsingInterval;

  /// Baseline form (name) from which the calculation date is taken
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? windowCalculationForm;

  /// Baseline field (variable name) from which the calculation date is taken
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? windowCalculationDate;

  /// Form used to capture the actual date for this interval
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actualDateForm;

  /// Field (variable name) used to capture the actual date for this interval
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actualDate;

  /// Number of days from the calculation date when the interval is due
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dueDateWillBeIn;

  /// Number of days before the due date that are allowed (negative window)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? negativeSlack;

  /// Number of days after the due date that are allowed (positive window)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? positiveSlack;

  /// Number of days of grace period for ePRO completion after due date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? eproGracePeriod;

  /// List of forms that are scheduled in this interval
  List<ComponentsSchemasIntervalFormsItem> forms;

  /// Whether the interval is soft-deleted (disabled)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disabled;

  /// Date when this interval was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateCreated;

  /// Date when this interval was last modified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateModified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Interval &&
    other.studyKey == studyKey &&
    other.intervalId == intervalId &&
    other.intervalName == intervalName &&
    other.intervalDescription == intervalDescription &&
    other.intervalSequence == intervalSequence &&
    other.intervalGroupId == intervalGroupId &&
    other.intervalGroupName == intervalGroupName &&
    other.timeline == timeline &&
    other.definedUsingInterval == definedUsingInterval &&
    other.windowCalculationForm == windowCalculationForm &&
    other.windowCalculationDate == windowCalculationDate &&
    other.actualDateForm == actualDateForm &&
    other.actualDate == actualDate &&
    other.dueDateWillBeIn == dueDateWillBeIn &&
    other.negativeSlack == negativeSlack &&
    other.positiveSlack == positiveSlack &&
    other.eproGracePeriod == eproGracePeriod &&
    _deepEquality.equals(other.forms, forms) &&
    other.disabled == disabled &&
    other.dateCreated == dateCreated &&
    other.dateModified == dateModified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studyKey == null ? 0 : studyKey!.hashCode) +
    (intervalId == null ? 0 : intervalId!.hashCode) +
    (intervalName == null ? 0 : intervalName!.hashCode) +
    (intervalDescription == null ? 0 : intervalDescription!.hashCode) +
    (intervalSequence == null ? 0 : intervalSequence!.hashCode) +
    (intervalGroupId == null ? 0 : intervalGroupId!.hashCode) +
    (intervalGroupName == null ? 0 : intervalGroupName!.hashCode) +
    (timeline == null ? 0 : timeline!.hashCode) +
    (definedUsingInterval == null ? 0 : definedUsingInterval!.hashCode) +
    (windowCalculationForm == null ? 0 : windowCalculationForm!.hashCode) +
    (windowCalculationDate == null ? 0 : windowCalculationDate!.hashCode) +
    (actualDateForm == null ? 0 : actualDateForm!.hashCode) +
    (actualDate == null ? 0 : actualDate!.hashCode) +
    (dueDateWillBeIn == null ? 0 : dueDateWillBeIn!.hashCode) +
    (negativeSlack == null ? 0 : negativeSlack!.hashCode) +
    (positiveSlack == null ? 0 : positiveSlack!.hashCode) +
    (eproGracePeriod == null ? 0 : eproGracePeriod!.hashCode) +
    (forms.hashCode) +
    (disabled == null ? 0 : disabled!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateModified == null ? 0 : dateModified!.hashCode);

  @override
  String toString() => 'Interval[studyKey=$studyKey, intervalId=$intervalId, intervalName=$intervalName, intervalDescription=$intervalDescription, intervalSequence=$intervalSequence, intervalGroupId=$intervalGroupId, intervalGroupName=$intervalGroupName, timeline=$timeline, definedUsingInterval=$definedUsingInterval, windowCalculationForm=$windowCalculationForm, windowCalculationDate=$windowCalculationDate, actualDateForm=$actualDateForm, actualDate=$actualDate, dueDateWillBeIn=$dueDateWillBeIn, negativeSlack=$negativeSlack, positiveSlack=$positiveSlack, eproGracePeriod=$eproGracePeriod, forms=$forms, disabled=$disabled, dateCreated=$dateCreated, dateModified=$dateModified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.studyKey != null) {
      json[r'studyKey'] = this.studyKey;
    } else {
      json[r'studyKey'] = null;
    }
    if (this.intervalId != null) {
      json[r'intervalId'] = this.intervalId;
    } else {
      json[r'intervalId'] = null;
    }
    if (this.intervalName != null) {
      json[r'intervalName'] = this.intervalName;
    } else {
      json[r'intervalName'] = null;
    }
    if (this.intervalDescription != null) {
      json[r'intervalDescription'] = this.intervalDescription;
    } else {
      json[r'intervalDescription'] = null;
    }
    if (this.intervalSequence != null) {
      json[r'intervalSequence'] = this.intervalSequence;
    } else {
      json[r'intervalSequence'] = null;
    }
    if (this.intervalGroupId != null) {
      json[r'intervalGroupId'] = this.intervalGroupId;
    } else {
      json[r'intervalGroupId'] = null;
    }
    if (this.intervalGroupName != null) {
      json[r'intervalGroupName'] = this.intervalGroupName;
    } else {
      json[r'intervalGroupName'] = null;
    }
    if (this.timeline != null) {
      json[r'timeline'] = this.timeline;
    } else {
      json[r'timeline'] = null;
    }
    if (this.definedUsingInterval != null) {
      json[r'definedUsingInterval'] = this.definedUsingInterval;
    } else {
      json[r'definedUsingInterval'] = null;
    }
    if (this.windowCalculationForm != null) {
      json[r'windowCalculationForm'] = this.windowCalculationForm;
    } else {
      json[r'windowCalculationForm'] = null;
    }
    if (this.windowCalculationDate != null) {
      json[r'windowCalculationDate'] = this.windowCalculationDate;
    } else {
      json[r'windowCalculationDate'] = null;
    }
    if (this.actualDateForm != null) {
      json[r'actualDateForm'] = this.actualDateForm;
    } else {
      json[r'actualDateForm'] = null;
    }
    if (this.actualDate != null) {
      json[r'actualDate'] = this.actualDate;
    } else {
      json[r'actualDate'] = null;
    }
    if (this.dueDateWillBeIn != null) {
      json[r'dueDateWillBeIn'] = this.dueDateWillBeIn;
    } else {
      json[r'dueDateWillBeIn'] = null;
    }
    if (this.negativeSlack != null) {
      json[r'negativeSlack'] = this.negativeSlack;
    } else {
      json[r'negativeSlack'] = null;
    }
    if (this.positiveSlack != null) {
      json[r'positiveSlack'] = this.positiveSlack;
    } else {
      json[r'positiveSlack'] = null;
    }
    if (this.eproGracePeriod != null) {
      json[r'eproGracePeriod'] = this.eproGracePeriod;
    } else {
      json[r'eproGracePeriod'] = null;
    }
      json[r'forms'] = this.forms;
    if (this.disabled != null) {
      json[r'disabled'] = this.disabled;
    } else {
      json[r'disabled'] = null;
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

  /// Returns a new [Interval] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Interval? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Interval[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Interval[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Interval(
        studyKey: mapValueOfType<String>(json, r'studyKey'),
        intervalId: mapValueOfType<int>(json, r'intervalId'),
        intervalName: mapValueOfType<String>(json, r'intervalName'),
        intervalDescription: mapValueOfType<String>(json, r'intervalDescription'),
        intervalSequence: mapValueOfType<int>(json, r'intervalSequence'),
        intervalGroupId: mapValueOfType<int>(json, r'intervalGroupId'),
        intervalGroupName: mapValueOfType<String>(json, r'intervalGroupName'),
        timeline: mapValueOfType<String>(json, r'timeline'),
        definedUsingInterval: mapValueOfType<String>(json, r'definedUsingInterval'),
        windowCalculationForm: mapValueOfType<String>(json, r'windowCalculationForm'),
        windowCalculationDate: mapValueOfType<String>(json, r'windowCalculationDate'),
        actualDateForm: mapValueOfType<String>(json, r'actualDateForm'),
        actualDate: mapValueOfType<String>(json, r'actualDate'),
        dueDateWillBeIn: mapValueOfType<int>(json, r'dueDateWillBeIn'),
        negativeSlack: mapValueOfType<int>(json, r'negativeSlack'),
        positiveSlack: mapValueOfType<int>(json, r'positiveSlack'),
        eproGracePeriod: mapValueOfType<int>(json, r'eproGracePeriod'),
        forms: ComponentsSchemasIntervalFormsItem.listFromJson(json[r'forms']),
        disabled: mapValueOfType<bool>(json, r'disabled'),
        dateCreated: mapValueOfType<String>(json, r'dateCreated'),
        dateModified: mapValueOfType<String>(json, r'dateModified'),
      );
    }
    return null;
  }

  static List<Interval> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Interval>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Interval.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Interval> mapFromJson(dynamic json) {
    final map = <String, Interval>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Interval.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Interval-objects as value to a dart map
  static Map<String, List<Interval>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Interval>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Interval.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

