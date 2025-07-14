# .JobsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJobStatus**](JobsApi.md#getJobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID


# **getJobStatus**
> Job getJobStatus()


### Example


```typescript
import { createConfiguration, JobsApi } from '';
import type { JobsApiGetJobStatusRequest } from '';

const configuration = createConfiguration();
const apiInstance = new JobsApi(configuration);

const request: JobsApiGetJobStatusRequest = {
    // Study key identifying the study context for the request
  studyKey: "studyKey_example",
    // Batch ID of the job to retrieve
  batchId: "batchId_example",
};

const data = await apiInstance.getJobStatus(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | [**string**] | Study key identifying the study context for the request | defaults to undefined
 **batchId** | [**string**] | Batch ID of the job to retrieve | defaults to undefined


### Return type

**Job**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [securityKeyAuth](README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful response with job status information |  -  |
**400** | Bad request (malformed or invalid input) |  -  |
**401** | Authentication failed or was not provided |  -  |
**403** | Authenticated but not allowed to access the resource |  -  |
**404** | The requested resource was not found |  -  |
**500** | Internal server error (unexpected condition encountered) |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


