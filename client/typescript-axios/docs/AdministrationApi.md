# AdministrationApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**listUsers**](#listusers) | **GET** /studies/{studyKey}/users | List users and their roles in a study|

# **listUsers**
> UserList listUsers()


### Example

```typescript
import {
    AdministrationApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new AdministrationApi(configuration);

let studyKey: string; //Study key identifying the study context for the request (default to undefined)
let page: number; //Page index to retrieve (0-based) (optional) (default to 0)
let size: number; //Number of items to return per page (max 500) (optional) (default to 25)
let sort: string; //Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional) (default to undefined)
let includeInactive: boolean; //For user listing, whether to include inactive users (optional) (default to false)

const { status, data } = await apiInstance.listUsers(
    studyKey,
    page,
    size,
    sort,
    includeInactive
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **studyKey** | [**string**] | Study key identifying the study context for the request | defaults to undefined|
| **page** | [**number**] | Page index to retrieve (0-based) | (optional) defaults to 0|
| **size** | [**number**] | Number of items to return per page (max 500) | (optional) defaults to 25|
| **sort** | [**string**] | Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | (optional) defaults to undefined|
| **includeInactive** | [**boolean**] | For user listing, whether to include inactive users | (optional) defaults to false|


### Return type

**UserList**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response with list of users |  -  |
|**400** | Bad request (malformed or invalid input) |  -  |
|**401** | Authentication failed or was not provided |  -  |
|**403** | Authenticated but not allowed to access the resource |  -  |
|**404** | The requested resource was not found |  -  |
|**500** | Internal server error (unexpected condition encountered) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

