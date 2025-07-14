# JOBS_API

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**job_status**](JOBS_API.md#job_status) | **Get** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID


# **job_status**
> job_status (study_key: STRING_32 ; batch_id: STRING_32 ): detachable JOB


Retrieve job status by batch ID


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_key** | **STRING_32**| Study key identifying the study context for the request | [default to null]
 **batch_id** | **STRING_32**| Batch ID of the job to retrieve | [default to null]

### Return type

[**JOB**](Job.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

