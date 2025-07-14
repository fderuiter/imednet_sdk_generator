# JobsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJobStatus**](JobsApi.md#getJobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID



## getJobStatus

> Job getJobStatus(studyKey, batchId)

Retrieve job status by batch ID

### Example

```java
// Import classes:
//import org.openapitools.client.api.JobsApi;

JobsApi apiInstance = new JobsApi();
String studyKey = null; // String | Study key identifying the study context for the request
String batchId = null; // String | Batch ID of the job to retrieve
try {
    Job result = apiInstance.getJobStatus(studyKey, batchId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JobsApi#getJobStatus");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String**| Study key identifying the study context for the request | [default to null]
 **batchId** | **String**| Batch ID of the job to retrieve | [default to null]

### Return type

[**Job**](Job.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

