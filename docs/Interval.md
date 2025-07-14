# Interval


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **string** | Unique study key | [optional] [default to undefined]
**intervalId** | **number** | Unique system identifier for the interval (visit definition) | [optional] [default to undefined]
**intervalName** | **string** | Name of the interval (visit) as defined in the study | [optional] [default to undefined]
**intervalDescription** | **string** | Description of the interval (visit) | [optional] [default to undefined]
**intervalSequence** | **number** | Sequence number of the interval in the schedule | [optional] [default to undefined]
**intervalGroupId** | **number** | Identifier for the interval group (if intervals are grouped) | [optional] [default to undefined]
**intervalGroupName** | **string** | Name of the interval group | [optional] [default to undefined]
**timeline** | **string** | Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) | [optional] [default to undefined]
**definedUsingInterval** | **string** | Baseline interval used for calculating this interval’s dates | [optional] [default to undefined]
**windowCalculationForm** | **string** | Baseline form (name) from which the calculation date is taken | [optional] [default to undefined]
**windowCalculationDate** | **string** | Baseline field (variable name) from which the calculation date is taken | [optional] [default to undefined]
**actualDateForm** | **string** | Form used to capture the actual date for this interval | [optional] [default to undefined]
**actualDate** | **string** | Field (variable name) used to capture the actual date for this interval | [optional] [default to undefined]
**dueDateWillBeIn** | **number** | Number of days from the calculation date when the interval is due | [optional] [default to undefined]
**negativeSlack** | **number** | Number of days before the due date that are allowed (negative window) | [optional] [default to undefined]
**positiveSlack** | **number** | Number of days after the due date that are allowed (positive window) | [optional] [default to undefined]
**eproGracePeriod** | **number** | Number of days of grace period for ePRO completion after due date | [optional] [default to undefined]
**forms** | [**Array&lt;ComponentsSchemasIntervalFormsItem&gt;**](ComponentsSchemasIntervalFormsItem.md) | List of forms that are scheduled in this interval | [optional] [default to undefined]
**disabled** | **boolean** | Whether the interval is soft-deleted (disabled) | [optional] [default to undefined]
**dateCreated** | **string** | Date when this interval was created | [optional] [default to undefined]
**dateModified** | **string** | Date when this interval was last modified | [optional] [default to undefined]

## Example

```typescript
import { Interval } from './api';

const instance: Interval = {
    studyKey,
    intervalId,
    intervalName,
    intervalDescription,
    intervalSequence,
    intervalGroupId,
    intervalGroupName,
    timeline,
    definedUsingInterval,
    windowCalculationForm,
    windowCalculationDate,
    actualDateForm,
    actualDate,
    dueDateWillBeIn,
    negativeSlack,
    positiveSlack,
    eproGracePeriod,
    forms,
    disabled,
    dateCreated,
    dateModified,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
