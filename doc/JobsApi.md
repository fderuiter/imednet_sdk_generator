# openapi.api.JobsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJobStatus**](JobsApi.md#getjobstatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID


# **getJobStatus**
> Job getJobStatus(studyKey, batchId)

Retrieve job status by batch ID

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

final api = Openapi().getJobsApi();
final String studyKey = studyKey_example; // String | Study key identifying the study context for the request
final String batchId = batchId_example; // String | Batch ID of the job to retrieve

try {
    final response = api.getJobStatus(studyKey, batchId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling JobsApi->getJobStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String**| Study key identifying the study context for the request | 
 **batchId** | **String**| Batch ID of the job to retrieve | 

### Return type

[**Job**](Job.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

