# JobsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getJobStatus**](JobsApi.md#getJobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID |


<a id="getJobStatus"></a>
# **getJobStatus**
> Job getJobStatus(studyKey, batchId)

Retrieve job status by batch ID

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = JobsApi()
val studyKey : kotlin.String = studyKey_example // kotlin.String | Study key identifying the study context for the request
val batchId : kotlin.String = batchId_example // kotlin.String | Batch ID of the job to retrieve
try {
    val result : Job = apiInstance.getJobStatus(studyKey, batchId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling JobsApi#getJobStatus")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling JobsApi#getJobStatus")
    e.printStackTrace()
}
```

### Parameters
| **studyKey** | **kotlin.String**| Study key identifying the study context for the request | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **batchId** | **kotlin.String**| Batch ID of the job to retrieve | |

### Return type

[**Job**](Job.md)

### Authorization


Configure apiKeyAuth:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure securityKeyAuth:
    ApiClient.apiKey["x-imn-security-key"] = ""
    ApiClient.apiKeyPrefix["x-imn-security-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

