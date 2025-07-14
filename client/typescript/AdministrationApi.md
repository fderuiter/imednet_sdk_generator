# .AdministrationApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listUsers**](AdministrationApi.md#listUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study


# **listUsers**
> UserList listUsers()


### Example


```typescript
import { createConfiguration, AdministrationApi } from '';
import type { AdministrationApiListUsersRequest } from '';

const configuration = createConfiguration();
const apiInstance = new AdministrationApi(configuration);

const request: AdministrationApiListUsersRequest = {
    // Study key identifying the study context for the request
  studyKey: "studyKey_example",
    // Page index to retrieve (0-based) (optional)
  page: 0,
    // Number of items to return per page (max 500) (optional)
  size: 25,
    // Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional)
  sort: "sort_example",
    // For user listing, whether to include inactive users (optional)
  includeInactive: false,
};

const data = await apiInstance.listUsers(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | [**string**] | Study key identifying the study context for the request | defaults to undefined
 **page** | [**number**] | Page index to retrieve (0-based) | (optional) defaults to 0
 **size** | [**number**] | Number of items to return per page (max 500) | (optional) defaults to 25
 **sort** | [**string**] | Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | (optional) defaults to undefined
 **includeInactive** | [**boolean**] | For user listing, whether to include inactive users | (optional) defaults to false


### Return type

**UserList**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [securityKeyAuth](README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful response with list of users |  -  |
**400** | Bad request (malformed or invalid input) |  -  |
**401** | Authentication failed or was not provided |  -  |
**403** | Authenticated but not allowed to access the resource |  -  |
**404** | The requested resource was not found |  -  |
**500** | Internal server error (unexpected condition encountered) |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


