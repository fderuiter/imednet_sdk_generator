# RecordJobStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jobId** | **string** | Unique job identifier | [optional] [default to undefined]
**batchId** | **string** | Batch ID used to track the job (identical to jobId in most cases) | [optional] [default to undefined]
**state** | **string** | Current state of the job (e.g., created, completed) | [optional] [default to undefined]

## Example

```typescript
import { RecordJobStatus } from './api';

const instance: RecordJobStatus = {
    jobId,
    batchId,
    state,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
