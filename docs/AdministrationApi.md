# AdministrationApi

All URIs are relative to */api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listUsers**](AdministrationApi.md#listUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study



## listUsers

List users and their roles in a study

### Example

```bash
 listUsers studyKey=value  page=value  size=value  sort=value  includeInactive=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **string** | Study key identifying the study context for the request | [default to null]
 **page** | **integer** | Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **integer** | Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **string** | Sorting criteria in the format 'property,ASC' or 'property,DESC'. Can be repeated. | [optional] [default to null]
 **includeInactive** | **boolean** | For user listing, whether to include inactive users | [optional] [default to false]

### Return type

[**UserList**](UserList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

