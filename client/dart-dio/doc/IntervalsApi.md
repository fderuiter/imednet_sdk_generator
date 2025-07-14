# openapi.api.IntervalsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listIntervals**](IntervalsApi.md#listintervals) | **GET** /studies/{studyKey}/intervals | List intervals (visit definitions) in a study


# **listIntervals**
> IntervalList listIntervals(studyKey, page, size, sort, filter)

List intervals (visit definitions) in a study

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

final api = Openapi().getIntervalsApi();
final String studyKey = studyKey_example; // String | Study key identifying the study context for the request
final int page = 0; // int | Page index to retrieve (0-based)
final int size = 25; // int | Number of items to return per page (max 500)
final String sort = sort_example; // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
final String filter = filter_example; // String | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).

try {
    final response = api.listIntervals(studyKey, page, size, sort, filter);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntervalsApi->listIntervals: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String**| Study key identifying the study context for the request | 
 **page** | **int**| Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **int**| Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **String**| Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. | [optional] 
 **filter** | **String**| Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR). | [optional] 

### Return type

[**IntervalList**](IntervalList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

