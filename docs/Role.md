# Role


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dateCreated** | **Array&lt;number&gt;** | Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond]) | [optional] [default to undefined]
**dateModified** | **Array&lt;number&gt;** | Timestamp when the role assignment was last modified | [optional] [default to undefined]
**roleId** | **string** | Unique role ID (UUID) | [optional] [default to undefined]
**communityId** | **number** | Community ID or level associated with the role | [optional] [default to undefined]
**name** | **string** | Name of the role | [optional] [default to undefined]
**description** | **string** | Description of the role | [optional] [default to undefined]
**level** | **number** | Role level or hierarchy | [optional] [default to undefined]
**type** | **string** | Role type/category | [optional] [default to undefined]
**inactive** | **boolean** | Whether the role is inactive | [optional] [default to undefined]

## Example

```typescript
import { Role } from './api';

const instance: Role = {
    dateCreated,
    dateModified,
    roleId,
    communityId,
    name,
    description,
    level,
    type,
    inactive,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
