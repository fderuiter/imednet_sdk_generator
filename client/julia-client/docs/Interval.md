# Interval


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key | [optional] [default to nothing]
**intervalId** | **Int64** | Unique system identifier for the interval (visit definition) | [optional] [default to nothing]
**intervalName** | **String** | Name of the interval (visit) as defined in the study | [optional] [default to nothing]
**intervalDescription** | **String** | Description of the interval (visit) | [optional] [default to nothing]
**intervalSequence** | **Int64** | Sequence number of the interval in the schedule | [optional] [default to nothing]
**intervalGroupId** | **Int64** | Identifier for the interval group (if intervals are grouped) | [optional] [default to nothing]
**intervalGroupName** | **String** | Name of the interval group | [optional] [default to nothing]
**timeline** | **String** | Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) | [optional] [default to nothing]
**definedUsingInterval** | **String** | Baseline interval used for calculating this interval’s dates | [optional] [default to nothing]
**windowCalculationForm** | **String** | Baseline form (name) from which the calculation date is taken | [optional] [default to nothing]
**windowCalculationDate** | **String** | Baseline field (variable name) from which the calculation date is taken | [optional] [default to nothing]
**actualDateForm** | **String** | Form used to capture the actual date for this interval | [optional] [default to nothing]
**actualDate** | **String** | Field (variable name) used to capture the actual date for this interval | [optional] [default to nothing]
**dueDateWillBeIn** | **Int64** | Number of days from the calculation date when the interval is due | [optional] [default to nothing]
**negativeSlack** | **Int64** | Number of days before the due date that are allowed (negative window) | [optional] [default to nothing]
**positiveSlack** | **Int64** | Number of days after the due date that are allowed (positive window) | [optional] [default to nothing]
**eproGracePeriod** | **Int64** | Number of days of grace period for ePRO completion after due date | [optional] [default to nothing]
**forms** | [**Vector{ComponentsSchemasIntervalFormsItem}**](ComponentsSchemasIntervalFormsItem.md) | List of forms that are scheduled in this interval | [optional] [default to nothing]
**disabled** | **Bool** | Whether the interval is soft-deleted (disabled) | [optional] [default to nothing]
**dateCreated** | **String** | Date when this interval was created | [optional] [default to nothing]
**dateModified** | **String** | Date when this interval was last modified | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


