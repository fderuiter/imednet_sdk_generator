# Pagination


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currentPage** | **number** | Current index page returned | [optional] [default to undefined]
**size** | **number** | Number of items per page returned | [optional] [default to undefined]
**totalPages** | **number** | Total number of pages available | [optional] [default to undefined]
**totalElements** | **number** | Total number of elements (items) available | [optional] [default to undefined]
**sort** | [**Array&lt;Sort&gt;**](Sort.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Pagination } from './api';

const instance: Pagination = {
    currentPage,
    size,
    totalPages,
    totalElements,
    sort,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
