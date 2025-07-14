# User


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **string** | Unique user ID (UUID) | [optional] [default to undefined]
**login** | **string** | User login name | [optional] [default to undefined]
**firstName** | **string** | User first name | [optional] [default to undefined]
**lastName** | **string** | User last name | [optional] [default to undefined]
**email** | **string** | User email address | [optional] [default to undefined]
**userActiveInStudy** | **boolean** | Whether the user is active in the given study | [optional] [default to undefined]
**roles** | [**Array&lt;Role&gt;**](Role.md) | Roles that the user has in the study | [optional] [default to undefined]

## Example

```typescript
import { User } from './api';

const instance: User = {
    userId,
    login,
    firstName,
    lastName,
    email,
    userActiveInStudy,
    roles,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
