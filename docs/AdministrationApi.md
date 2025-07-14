# AdministrationApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**listUsers**](AdministrationApi.md#listUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study |



## listUsers

> UserList listUsers(studyKey, page, size, sort, includeInactive)

List users and their roles in a study

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **studyKey** | **String**| Study key identifying the study context for the request | |
| **page** | **Integer**| Page index to retrieve (0-based) | [optional] [default to 0] |
| **size** | **Integer**| Number of items to return per page (max 500) | [optional] [default to 25] |
| **sort** | **String**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] |
| **includeInactive** | **Boolean**| For user listing, whether to include inactive users | [optional] [default to false] |

### Return type

[**UserList**](UserList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response with list of users |  -  |
| **400** | Bad request (malformed or invalid input) |  -  |
| **401** | Authentication failed or was not provided |  -  |
| **403** | Authenticated but not allowed to access the resource |  -  |
| **404** | The requested resource was not found |  -  |
| **500** | Internal server error (unexpected condition encountered) |  -  |

