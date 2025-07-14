# Visit


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **string** | Unique study key | [optional] [default to undefined]
**visitId** | **number** | Unique system identifier for the subject visit instance | [optional] [default to undefined]
**intervalId** | **number** | Unique system identifier of the interval definition for this visit | [optional] [default to undefined]
**intervalName** | **string** | Name of the interval (visit) for this visit instance | [optional] [default to undefined]
**subjectId** | **number** | Mednet subject ID of the subject | [optional] [default to undefined]
**subjectKey** | **string** | Protocol-assigned subject identifier | [optional] [default to undefined]
**startDate** | **string** | Start date of the visit window (in YYYY-MM-DD format) | [optional] [default to undefined]
**endDate** | **string** | End date of the visit window (in YYYY-MM-DD format) | [optional] [default to undefined]
**dueDate** | **string** | Due date of the visit (in YYYY-MM-DD format), if applicable | [optional] [default to undefined]
**visitDate** | **string** | Actual date the visit took place (in YYYY-MM-DD format) | [optional] [default to undefined]
**visitDateForm** | **string** | Name of the form used to capture the actual visit date | [optional] [default to undefined]
**visitDateQuestion** | **string** | Variable name of the field capturing the actual visit date | [optional] [default to undefined]
**deleted** | **boolean** | Whether the visit instance is marked as deleted | [optional] [default to undefined]
**dateCreated** | **string** | Date when this visit record was created | [optional] [default to undefined]
**dateModified** | **string** | Date when this visit record was last modified | [optional] [default to undefined]

## Example

```typescript
import { Visit } from './api';

const instance: Visit = {
    studyKey,
    visitId,
    intervalId,
    intervalName,
    subjectId,
    subjectKey,
    startDate,
    endDate,
    dueDate,
    visitDate,
    visitDateForm,
    visitDateQuestion,
    deleted,
    dateCreated,
    dateModified,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
