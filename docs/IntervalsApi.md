# IntervalsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listIntervals**](IntervalsApi.md#listIntervals) | **GET** /studies/{studyKey}/intervals | List intervals (visit definitions) in a study
[**listIntervalsWithHttpInfo**](IntervalsApi.md#listIntervalsWithHttpInfo) | **GET** /studies/{studyKey}/intervals | List intervals (visit definitions) in a study



## listIntervals

> listIntervals(listIntervalsRequest): ApiRequest[IntervalList]

List intervals (visit definitions) in a study

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
    val apiInstance = IntervalsApi("https://edc.prod.imednetapi.com/api/v1/edc")
    val studyKey: String = studyKey_example // String | Study key identifying the study context for the request

    val page: Int = 0 // Int | Page index to retrieve (0-based)

    val size: Int = 25 // Int | Number of items to return per page (max 500)

    val sort: String = sort_example // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.

    val filter: String = filter_example // String | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
    
    val request = apiInstance.listIntervals(studyKey, page, size, sort, filter)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IntervalsApi#listIntervals")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IntervalsApi#listIntervals")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String**| Study key identifying the study context for the request |
 **page** | **Int**| Page index to retrieve (0-based) | [optional]
 **size** | **Int**| Number of items to return per page (max 500) | [optional]
 **sort** | **String**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional]
 **filter** | **String**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional]

### Return type

ApiRequest[[**IntervalList**](IntervalList.md)]


### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response with list of intervals |  -  |
| **400** | Bad request (malformed or invalid input) |  -  |
| **401** | Authentication failed or was not provided |  -  |
| **403** | Authenticated but not allowed to access the resource |  -  |
| **404** | The requested resource was not found |  -  |
| **500** | Internal server error (unexpected condition encountered) |  -  |

