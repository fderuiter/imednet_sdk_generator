# openapi.api.RecordsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecords**](RecordsApi.md#createrecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
[**listRecords**](RecordsApi.md#listrecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study


# **createRecords**
> RecordJobStatus createRecords(studyKey, componentsSchemasRecordCreateRequestItem)

Add new record or update subject/record data

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

final api_instance = RecordsApi();
final studyKey = studyKey_example; // String | Study key identifying the study context for the request
final componentsSchemasRecordCreateRequestItem = [List<ComponentsSchemasRecordCreateRequestItem>()]; // List<ComponentsSchemasRecordCreateRequestItem> | An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).

try {
    final result = api_instance.createRecords(studyKey, componentsSchemasRecordCreateRequestItem);
    print(result);
} catch (e) {
    print('Exception when calling RecordsApi->createRecords: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String**| Study key identifying the study context for the request | 
 **componentsSchemasRecordCreateRequestItem** | [**List<ComponentsSchemasRecordCreateRequestItem>**](ComponentsSchemasRecordCreateRequestItem.md)| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). | 

### Return type

[**RecordJobStatus**](RecordJobStatus.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecords**
> RecordList listRecords(studyKey, page, size, sort, filter, recordDataFilter)

List records (eCRF instances) in a study

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

final api_instance = RecordsApi();
final studyKey = studyKey_example; // String | Study key identifying the study context for the request
final page = 0; // int | Page index to retrieve (0-based)
final size = 25; // int | Number of items to return per page (max 500)
final sort = sort_example; // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
final filter = filter_example; // String | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
final recordDataFilter = recordDataFilter_example; // String | Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).

try {
    final result = api_instance.listRecords(studyKey, page, size, sort, filter, recordDataFilter);
    print(result);
} catch (e) {
    print('Exception when calling RecordsApi->listRecords: $e\n');
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
 **recordDataFilter** | **String**| Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR). | [optional] 

### Return type

[**RecordList**](RecordList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

