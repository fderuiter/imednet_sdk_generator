# Job


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jobId** | **string** | Unique job identifier | [optional] [default to undefined]
**batchId** | **string** | Batch ID associated with the job (useful for linking with record creation requests) | [optional] [default to undefined]
**state** | **string** | State of the job (e.g., completed, pending) | [optional] [default to undefined]
**dateCreated** | **string** | Timestamp when the job was created | [optional] [default to undefined]
**dateStarted** | **string** | Timestamp when the job started processing | [optional] [default to undefined]
**dateFinished** | **string** | Timestamp when the job finished processing | [optional] [default to undefined]

## Example

```typescript
import { Job } from './api';

const instance: Job = {
    jobId,
    batchId,
    state,
    dateCreated,
    dateStarted,
    dateFinished,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
