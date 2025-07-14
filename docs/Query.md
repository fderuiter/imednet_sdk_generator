# Query


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **string** | Unique study key | [optional] [default to undefined]
**subjectId** | **number** | Mednet subject ID associated with the query (if applicable) | [optional] [default to undefined]
**subjectOid** | **string** | Client-assigned subject OID (if applicable) | [optional] [default to undefined]
**annotationType** | **string** | Category/type of the query (e.g., subject, record, question) | [optional] [default to undefined]
**annotationId** | **number** | Unique system identifier for the query | [optional] [default to undefined]
**type** | **string** | System text identifier for the query type/location (subject, record, question) | [optional] [default to undefined]
**description** | **string** | Description of the query (e.g., reason or context) | [optional] [default to undefined]
**recordId** | **number** | Record ID associated with the query (if applicable) | [optional] [default to undefined]
**variable** | **string** | Variable name (field) associated with the query (if applicable) | [optional] [default to undefined]
**subjectKey** | **string** | Subject display ID associated with the query (if applicable) | [optional] [default to undefined]
**dateCreated** | **string** | Date when the query was created | [optional] [default to undefined]
**dateModified** | **string** | Date when the query was last modified | [optional] [default to undefined]
**queryComments** | [**Array&lt;QueryComment&gt;**](QueryComment.md) | History of comments/actions on the query | [optional] [default to undefined]

## Example

```typescript
import { Query } from './api';

const instance: Query = {
    studyKey,
    subjectId,
    subjectOid,
    annotationType,
    annotationId,
    type,
    description,
    recordId,
    variable,
    subjectKey,
    dateCreated,
    dateModified,
    queryComments,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
