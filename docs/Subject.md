# Subject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **string** | Unique study key | [optional] [default to undefined]
**subjectId** | **number** | Mednet subject ID (internal numeric ID) | [optional] [default to undefined]
**subjectOid** | **string** | Client-assigned subject object identifier (OID) | [optional] [default to undefined]
**subjectKey** | **string** | Protocol-assigned subject identifier (display ID) | [optional] [default to undefined]
**subjectStatus** | **string** | Current status of the subject (e.g., Enrolled) | [optional] [default to undefined]
**siteId** | **number** | Mednet site ID the subject is associated with | [optional] [default to undefined]
**siteName** | **string** | Name of the site the subject is associated with | [optional] [default to undefined]
**deleted** | **boolean** | Whether the subject is marked as deleted | [optional] [default to undefined]
**enrollmentStartDate** | **string** | Subject’s enrollment start date | [optional] [default to undefined]
**dateCreated** | **string** | Date when this subject record was created | [optional] [default to undefined]
**dateModified** | **string** | Date when this subject record was last modified | [optional] [default to undefined]
**keywords** | [**Array&lt;Keyword&gt;**](Keyword.md) | List of keywords associated with the subject | [optional] [default to undefined]

## Example

```typescript
import { Subject } from './api';

const instance: Subject = {
    studyKey,
    subjectId,
    subjectOid,
    subjectKey,
    subjectStatus,
    siteId,
    siteName,
    deleted,
    enrollmentStartDate,
    dateCreated,
    dateModified,
    keywords,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
