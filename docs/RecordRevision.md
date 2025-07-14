# RecordRevision


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **string** | Unique study key | [optional] [default to undefined]
**recordRevisionId** | **number** | Unique system identifier for the record revision | [optional] [default to undefined]
**recordId** | **number** | Unique system identifier of the related record | [optional] [default to undefined]
**recordOid** | **string** | Client-assigned record OID (if any) | [optional] [default to undefined]
**recordRevision** | **number** | Revision number of the record (version of the record status) | [optional] [default to undefined]
**dataRevision** | **number** | Revision number of the data within the record | [optional] [default to undefined]
**recordStatus** | **string** | Status of the record at this revision (user-defined status label) | [optional] [default to undefined]
**subjectId** | **number** | Mednet subject ID related to the record | [optional] [default to undefined]
**subjectOid** | **string** | Client-assigned subject OID related to the record | [optional] [default to undefined]
**subjectKey** | **string** | Subject display ID related to the record | [optional] [default to undefined]
**siteId** | **number** | Site ID related to the record | [optional] [default to undefined]
**formKey** | **string** | Form key of the form that the record belongs to | [optional] [default to undefined]
**intervalId** | **number** | Interval ID (visit definition) related to the record | [optional] [default to undefined]
**role** | **string** | Role name of the user who saved the record revision | [optional] [default to undefined]
**user** | **string** | Username of the user who saved the record revision | [optional] [default to undefined]
**reasonForChange** | **string** | Reason for change, if provided (for audit trail) | [optional] [default to undefined]
**deleted** | **boolean** | Whether the record was deleted in this revision | [optional] [default to undefined]
**dateCreated** | **string** | Date when this record revision was created | [optional] [default to undefined]

## Example

```typescript
import { RecordRevision } from './api';

const instance: RecordRevision = {
    studyKey,
    recordRevisionId,
    recordId,
    recordOid,
    recordRevision,
    dataRevision,
    recordStatus,
    subjectId,
    subjectOid,
    subjectKey,
    siteId,
    formKey,
    intervalId,
    role,
    user,
    reasonForChange,
    deleted,
    dateCreated,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
