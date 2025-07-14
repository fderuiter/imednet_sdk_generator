# Interval
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**IntervalId** | **Int32** | Unique system identifier for the interval (visit definition) | [optional] 
**IntervalName** | **String** | Name of the interval (visit) as defined in the study | [optional] 
**IntervalDescription** | **String** | Description of the interval (visit) | [optional] 
**IntervalSequence** | **Int32** | Sequence number of the interval in the schedule | [optional] 
**IntervalGroupId** | **Int32** | Identifier for the interval group (if intervals are grouped) | [optional] 
**IntervalGroupName** | **String** | Name of the interval group | [optional] 
**Timeline** | **String** | Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) | [optional] 
**DefinedUsingInterval** | **String** | Baseline interval used for calculating this interval’s dates | [optional] 
**WindowCalculationForm** | **String** | Baseline form (name) from which the calculation date is taken | [optional] 
**WindowCalculationDate** | **String** | Baseline field (variable name) from which the calculation date is taken | [optional] 
**ActualDateForm** | **String** | Form used to capture the actual date for this interval | [optional] 
**ActualDate** | **String** | Field (variable name) used to capture the actual date for this interval | [optional] 
**DueDateWillBeIn** | **Int32** | Number of days from the calculation date when the interval is due | [optional] 
**NegativeSlack** | **Int32** | Number of days before the due date that are allowed (negative window) | [optional] 
**PositiveSlack** | **Int32** | Number of days after the due date that are allowed (positive window) | [optional] 
**EproGracePeriod** | **Int32** | Number of days of grace period for ePRO completion after due date | [optional] 
**Forms** | [**ComponentsSchemasIntervalFormsItem[]**](ComponentsSchemasIntervalFormsItem.md) | List of forms that are scheduled in this interval | [optional] 
**Disabled** | **Boolean** | Whether the interval is soft-deleted (disabled) | [optional] 
**DateCreated** | **String** | Date when this interval was created | [optional] 
**DateModified** | **String** | Date when this interval was last modified | [optional] 

## Examples

- Prepare the resource
```powershell
$Interval = Initialize-PSOpenAPIToolsInterval  -StudyKey null `
 -IntervalId null `
 -IntervalName null `
 -IntervalDescription null `
 -IntervalSequence null `
 -IntervalGroupId null `
 -IntervalGroupName null `
 -Timeline null `
 -DefinedUsingInterval null `
 -WindowCalculationForm null `
 -WindowCalculationDate null `
 -ActualDateForm null `
 -ActualDate null `
 -DueDateWillBeIn null `
 -NegativeSlack null `
 -PositiveSlack null `
 -EproGracePeriod null `
 -Forms null `
 -Disabled null `
 -DateCreated null `
 -DateModified null
```

- Convert the resource to JSON
```powershell
$Interval | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

