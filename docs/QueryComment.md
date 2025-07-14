# QueryComment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sequence** | **number** | Sequence number of the comment/action in the query history | [optional] [default to undefined]
**annotationStatus** | **string** | Status of the query after this comment (e.g., Open, Closed) | [optional] [default to undefined]
**user** | **string** | Username of the user who made the comment or action | [optional] [default to undefined]
**comment** | **string** | Text of the comment | [optional] [default to undefined]
**closed** | **boolean** | Whether the query was marked closed at this step | [optional] [default to undefined]
**date** | **string** | Date of the comment or action | [optional] [default to undefined]

## Example

```typescript
import { QueryComment } from './api';

const instance: QueryComment = {
    sequence,
    annotationStatus,
    user,
    comment,
    closed,
    date,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
