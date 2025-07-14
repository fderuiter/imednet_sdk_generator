# Record


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **string** | Unique study key | [optional] [default to undefined]
**intervalId** | **number** | Interval ID (visit definition) that this record is associated with | [optional] [default to undefined]
**formId** | **number** | Form ID of the form this record instance belongs to | [optional] [default to undefined]
**formKey** | **string** | Form key of the form for this record instance | [optional] [default to undefined]
**siteId** | **number** | Site ID associated with the record | [optional] [default to undefined]
**recordId** | **number** | Unique record ID | [optional] [default to undefined]
**recordOid** | **string** | Client-assigned record OID | [optional] [default to undefined]
**recordType** | **string** | Type of record (e.g., SUBJECT for subject-related forms) | [optional] [default to undefined]
**recordStatus** | **string** | Current status of the record (e.g., Record Incomplete, Record Complete) | [optional] [default to undefined]
**deleted** | **boolean** | Whether the record is marked as deleted | [optional] [default to undefined]
**dateCreated** | **string** | Date when this record was created | [optional] [default to undefined]
**dateModified** | **string** | Date when this record was last modified | [optional] [default to undefined]
**subjectId** | **number** | Mednet subject ID that this record is associated with | [optional] [default to undefined]
**subjectOid** | **string** | Client-assigned subject OID for the subject this record is associated with | [optional] [default to undefined]
**subjectKey** | **string** | Subject display ID that this record is associated with | [optional] [default to undefined]
**visitId** | **number** | Visit instance ID that this record is associated with (if applicable) | [optional] [default to undefined]
**parentRecordId** | **number** | Record ID of the parent record if this record is a subrecord (if applicable) | [optional] [default to undefined]
**keywords** | [**Array&lt;Keyword&gt;**](Keyword.md) | List of keywords associated with the record | [optional] [default to undefined]
**recordData** | **{ [key: string]: any; }** | Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. | [optional] [default to undefined]

## Example

```typescript
import { Record } from './api';

const instance: Record = {
    studyKey,
    intervalId,
    formId,
    formKey,
    siteId,
    recordId,
    recordOid,
    recordType,
    recordStatus,
    deleted,
    dateCreated,
    dateModified,
    subjectId,
    subjectOid,
    subjectKey,
    visitId,
    parentRecordId,
    keywords,
    recordData,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
