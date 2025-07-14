

# Interval

The class is defined in **[Interval.java](../../src/main/java/org/openapitools/model/Interval.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | `String` | Unique study key |  [optional property]
**intervalId** | `Integer` | Unique system identifier for the interval (visit definition) |  [optional property]
**intervalName** | `String` | Name of the interval (visit) as defined in the study |  [optional property]
**intervalDescription** | `String` | Description of the interval (visit) |  [optional property]
**intervalSequence** | `Integer` | Sequence number of the interval in the schedule |  [optional property]
**intervalGroupId** | `Integer` | Identifier for the interval group (if intervals are grouped) |  [optional property]
**intervalGroupName** | `String` | Name of the interval group |  [optional property]
**timeline** | `String` | Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) |  [optional property]
**definedUsingInterval** | `String` | Baseline interval used for calculating this interval’s dates |  [optional property]
**windowCalculationForm** | `String` | Baseline form (name) from which the calculation date is taken |  [optional property]
**windowCalculationDate** | `String` | Baseline field (variable name) from which the calculation date is taken |  [optional property]
**actualDateForm** | `String` | Form used to capture the actual date for this interval |  [optional property]
**actualDate** | `String` | Field (variable name) used to capture the actual date for this interval |  [optional property]
**dueDateWillBeIn** | `Integer` | Number of days from the calculation date when the interval is due |  [optional property]
**negativeSlack** | `Integer` | Number of days before the due date that are allowed (negative window) |  [optional property]
**positiveSlack** | `Integer` | Number of days after the due date that are allowed (positive window) |  [optional property]
**eproGracePeriod** | `Integer` | Number of days of grace period for ePRO completion after due date |  [optional property]
**forms** | [`List&lt;ComponentsSchemasIntervalFormsItem&gt;`](ComponentsSchemasIntervalFormsItem.md) | List of forms that are scheduled in this interval |  [optional property]
**disabled** | `Boolean` | Whether the interval is soft-deleted (disabled) |  [optional property]
**dateCreated** | `String` | Date when this interval was created |  [optional property]
**dateModified** | `String` | Date when this interval was last modified |  [optional property]























