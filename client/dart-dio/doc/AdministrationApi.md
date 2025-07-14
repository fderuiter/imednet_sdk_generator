# openapi.api.AdministrationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listUsers**](AdministrationApi.md#listusers) | **GET** /studies/{studyKey}/users | List users and their roles in a study


# **listUsers**
> UserList listUsers(studyKey, page, size, sort, includeInactive)

List users and their roles in a study

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: securityKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('securityKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('securityKeyAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getAdministrationApi();
final String studyKey = studyKey_example; // String | Study key identifying the study context for the request
final int page = 0; // int | Page index to retrieve (0-based)
final int size = 25; // int | Number of items to return per page (max 500)
final String sort = sort_example; // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
final bool includeInactive = true; // bool | For user listing, whether to include inactive users

try {
    final response = api.listUsers(studyKey, page, size, sort, includeInactive);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdministrationApi->listUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String**| Study key identifying the study context for the request | 
 **page** | **int**| Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **int**| Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **String**| Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. | [optional] 
 **includeInactive** | **bool**| For user listing, whether to include inactive users | [optional] [default to false]

### Return type

[**UserList**](UserList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

