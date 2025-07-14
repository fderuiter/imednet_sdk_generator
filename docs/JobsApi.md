# JobsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJobStatus**](JobsApi.md#getJobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID
[**getJobStatusWithHttpInfo**](JobsApi.md#getJobStatusWithHttpInfo) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID



## getJobStatus

> getJobStatus(getJobStatusRequest): ApiRequest[Job]

Retrieve job status by batch ID

### Example

```scala
// Import classes:
import 
import 
import 
import 
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import org.apache.pekko.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: apiKeyAuth
    implicit val apiKeyAuth: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure API key authorization: securityKeyAuth
    implicit val securityKeyAuth: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = JobsApi("https://edc.prod.imednetapi.com/api/v1/edc")
    val studyKey: String = studyKey_example // String | Study key identifying the study context for the request

    val batchId: String = batchId_example // String | Batch ID of the job to retrieve
    
    val request = apiInstance.getJobStatus(studyKey, batchId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling JobsApi#getJobStatus")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling JobsApi#getJobStatus")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String**| Study key identifying the study context for the request |
 **batchId** | **String**| Batch ID of the job to retrieve |

### Return type

ApiRequest[[**Job**](Job.md)]


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

