# JobsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_job_status**](JobsApi.md#get_job_status) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID


# **get_job_status**
> get_job_status(_api::JobsApi, study_key::String, batch_id::String; _mediaType=nothing) -> Job, OpenAPI.Clients.ApiResponse <br/>
> get_job_status(_api::JobsApi, response_stream::Channel, study_key::String, batch_id::String; _mediaType=nothing) -> Channel{ Job }, OpenAPI.Clients.ApiResponse

Retrieve job status by batch ID

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **JobsApi** | API context | 
**study_key** | **String** | Study key identifying the study context for the request |
**batch_id** | **String** | Batch ID of the job to retrieve |

### Return type

[**Job**](Job.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

