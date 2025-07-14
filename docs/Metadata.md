# Metadata


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | HTTP status of the response (e.g., OK or ERROR) | [optional] [default to undefined]
**method** | **string** | HTTP method of the request | [optional] [default to undefined]
**path** | **string** | Requested URI path | [optional] [default to undefined]
**timestamp** | **string** | Timestamp when response was generated | [optional] [default to undefined]
**error** | [**ComponentsSchemasMetadataError**](ComponentsSchemasMetadataError.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Metadata } from './api';

const instance: Metadata = {
    status,
    method,
    path,
    timestamp,
    error,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
