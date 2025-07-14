# ComponentsSchemasRecordCreateRequestItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formKey** | **string** | Form key identifying the eCRF to create or update | [default to undefined]
**formId** | **number** | Form ID identifying the eCRF to create or update (alternative to formKey) | [optional] [default to undefined]
**siteName** | **string** | Name of the site where the record should be created (for new subject registration) | [optional] [default to undefined]
**siteId** | **number** | Site ID for the record (alternative to siteName) | [optional] [default to undefined]
**subjectKey** | **string** | Subject identifier (display ID) for which to create or update the record | [optional] [default to undefined]
**subjectId** | **number** | Subject ID for which to create or update the record (alternative to subjectKey) | [optional] [default to undefined]
**subjectOid** | **string** | Subject OID for which to create or update the record (alternative to subjectKey) | [optional] [default to undefined]
**intervalName** | **string** | Name of the interval (visit) for a scheduled record update | [optional] [default to undefined]
**intervalId** | **number** | Interval ID for a scheduled record update (alternative to intervalName) | [optional] [default to undefined]
**recordId** | **number** | Record ID for updating an existing unscheduled record (if applicable) | [optional] [default to undefined]
**recordOid** | **string** | Record OID for updating an existing unscheduled record (if applicable) | [optional] [default to undefined]
**data** | **{ [key: string]: any; }** | Key-value pairs of field names and values for the record data | [default to undefined]

## Example

```typescript
import { ComponentsSchemasRecordCreateRequestItem } from './api';

const instance: ComponentsSchemasRecordCreateRequestItem = {
    formKey,
    formId,
    siteName,
    siteId,
    subjectKey,
    subjectId,
    subjectOid,
    intervalName,
    intervalId,
    recordId,
    recordOid,
    data,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
