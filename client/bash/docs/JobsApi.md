# JobsApi

All URIs are relative to */api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJobStatus**](JobsApi.md#getJobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID



## getJobStatus

Retrieve job status by batch ID

### Example

```bash
 getJobStatus studyKey=value batchId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **string** | Study key identifying the study context for the request | [default to null]
 **batchId** | **string** | Batch ID of the job to retrieve | [default to null]

### Return type

[**Job**](Job.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

