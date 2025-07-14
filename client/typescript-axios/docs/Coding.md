# Coding


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **string** | Unique study key | [optional] [default to undefined]
**siteName** | **string** | Name of the site associated with the coded data | [optional] [default to undefined]
**siteId** | **number** | Site ID associated with the coded data | [optional] [default to undefined]
**subjectId** | **number** | Subject ID associated with the coded data | [optional] [default to undefined]
**subjectKey** | **string** | Subject key (display ID) associated with the coded data | [optional] [default to undefined]
**formId** | **number** | Form ID where the coded data originates | [optional] [default to undefined]
**formName** | **string** | Name of the form where the coded data originates | [optional] [default to undefined]
**formKey** | **string** | Form key where the coded data originates | [optional] [default to undefined]
**revision** | **number** | Revision number of the coding entry | [optional] [default to undefined]
**recordId** | **number** | Record ID associated with the coded data | [optional] [default to undefined]
**variable** | **string** | Variable name (field) that was coded | [optional] [default to undefined]
**value** | **string** | Original value entered that required coding | [optional] [default to undefined]
**codingId** | **number** | Mednet coding ID | [optional] [default to undefined]
**code** | **string** | Standardized code assigned (e.g., dictionary term) | [optional] [default to undefined]
**codedBy** | **string** | Name of the user who performed the coding | [optional] [default to undefined]
**reason** | **string** | Reason for coding or any notes on changes | [optional] [default to undefined]
**dictionaryName** | **string** | Name of the dictionary used (e.g., MedDRA) | [optional] [default to undefined]
**dictionaryVersion** | **string** | Version of the dictionary used | [optional] [default to undefined]
**dateCoded** | **string** | Date when the coding was performed | [optional] [default to undefined]

## Example

```typescript
import { Coding } from './api';

const instance: Coding = {
    studyKey,
    siteName,
    siteId,
    subjectId,
    subjectKey,
    formId,
    formName,
    formKey,
    revision,
    recordId,
    variable,
    value,
    codingId,
    code,
    codedBy,
    reason,
    dictionaryName,
    dictionaryVersion,
    dateCoded,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
