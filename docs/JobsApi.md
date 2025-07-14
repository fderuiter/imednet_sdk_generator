# JobsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getJobStatus**](JobsApi.md#getJobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID |



## getJobStatus

> Job getJobStatus(studyKey, batchId)

Retrieve job status by batch ID

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **studyKey** | **String**| Study key identifying the study context for the request | |
| **batchId** | **String**| Batch ID of the job to retrieve | |

### Return type

[**Job**](Job.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response with job status information |  -  |
| **400** | Bad request (malformed or invalid input) |  -  |
| **401** | Authentication failed or was not provided |  -  |
| **403** | Authenticated but not allowed to access the resource |  -  |
| **404** | The requested resource was not found |  -  |
| **500** | Internal server error (unexpected condition encountered) |  -  |

