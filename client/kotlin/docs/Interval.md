
# Interval

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **studyKey** | **kotlin.String** | Unique study key |  [optional] |
| **intervalId** | **kotlin.Int** | Unique system identifier for the interval (visit definition) |  [optional] |
| **intervalName** | **kotlin.String** | Name of the interval (visit) as defined in the study |  [optional] |
| **intervalDescription** | **kotlin.String** | Description of the interval (visit) |  [optional] |
| **intervalSequence** | **kotlin.Int** | Sequence number of the interval in the schedule |  [optional] |
| **intervalGroupId** | **kotlin.Int** | Identifier for the interval group (if intervals are grouped) |  [optional] |
| **intervalGroupName** | **kotlin.String** | Name of the interval group |  [optional] |
| **timeline** | **kotlin.String** | Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) |  [optional] |
| **definedUsingInterval** | **kotlin.String** | Baseline interval used for calculating this interval’s dates |  [optional] |
| **windowCalculationForm** | **kotlin.String** | Baseline form (name) from which the calculation date is taken |  [optional] |
| **windowCalculationDate** | **kotlin.String** | Baseline field (variable name) from which the calculation date is taken |  [optional] |
| **actualDateForm** | **kotlin.String** | Form used to capture the actual date for this interval |  [optional] |
| **actualDate** | **kotlin.String** | Field (variable name) used to capture the actual date for this interval |  [optional] |
| **dueDateWillBeIn** | **kotlin.Int** | Number of days from the calculation date when the interval is due |  [optional] |
| **negativeSlack** | **kotlin.Int** | Number of days before the due date that are allowed (negative window) |  [optional] |
| **positiveSlack** | **kotlin.Int** | Number of days after the due date that are allowed (positive window) |  [optional] |
| **eproGracePeriod** | **kotlin.Int** | Number of days of grace period for ePRO completion after due date |  [optional] |
| **forms** | [**kotlin.collections.List&lt;ComponentsSchemasIntervalFormsItem&gt;**](ComponentsSchemasIntervalFormsItem.md) | List of forms that are scheduled in this interval |  [optional] |
| **disabled** | **kotlin.Boolean** | Whether the interval is soft-deleted (disabled) |  [optional] |
| **dateCreated** | **kotlin.String** | Date when this interval was created |  [optional] |
| **dateModified** | **kotlin.String** | Date when this interval was last modified |  [optional] |



