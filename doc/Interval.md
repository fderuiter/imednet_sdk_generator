# openapi.model.Interval

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key | [optional] 
**intervalId** | **int** | Unique system identifier for the interval (visit definition) | [optional] 
**intervalName** | **String** | Name of the interval (visit) as defined in the study | [optional] 
**intervalDescription** | **String** | Description of the interval (visit) | [optional] 
**intervalSequence** | **int** | Sequence number of the interval in the schedule | [optional] 
**intervalGroupId** | **int** | Identifier for the interval group (if intervals are grouped) | [optional] 
**intervalGroupName** | **String** | Name of the interval group | [optional] 
**timeline** | **String** | Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) | [optional] 
**definedUsingInterval** | **String** | Baseline interval used for calculating this interval’s dates | [optional] 
**windowCalculationForm** | **String** | Baseline form (name) from which the calculation date is taken | [optional] 
**windowCalculationDate** | **String** | Baseline field (variable name) from which the calculation date is taken | [optional] 
**actualDateForm** | **String** | Form used to capture the actual date for this interval | [optional] 
**actualDate** | **String** | Field (variable name) used to capture the actual date for this interval | [optional] 
**dueDateWillBeIn** | **int** | Number of days from the calculation date when the interval is due | [optional] 
**negativeSlack** | **int** | Number of days before the due date that are allowed (negative window) | [optional] 
**positiveSlack** | **int** | Number of days after the due date that are allowed (positive window) | [optional] 
**eproGracePeriod** | **int** | Number of days of grace period for ePRO completion after due date | [optional] 
**forms** | [**BuiltList&lt;ComponentsSchemasIntervalFormsItem&gt;**](ComponentsSchemasIntervalFormsItem.md) | List of forms that are scheduled in this interval | [optional] 
**disabled** | **bool** | Whether the interval is soft-deleted (disabled) | [optional] 
**dateCreated** | **String** | Date when this interval was created | [optional] 
**dateModified** | **String** | Date when this interval was last modified | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


