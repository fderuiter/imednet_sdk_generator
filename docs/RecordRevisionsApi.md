# RecordRevisionsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**listRecordRevisions**](RecordRevisionsApi.md#listRecordRevisions) | **GET** /studies/{studyKey}/recordRevisions | List record revisions (audit trail entries) in a study |


<a id="listRecordRevisions"></a>
# **listRecordRevisions**
> RecordRevisionList listRecordRevisions(studyKey, page, size, sort, filter)

List record revisions (audit trail entries) in a study

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = RecordRevisionsApi()
val studyKey : kotlin.String = studyKey_example // kotlin.String | Study key identifying the study context for the request
val page : kotlin.Int = 0 // kotlin.Int | Page index to retrieve (0-based)
val size : kotlin.Int = 25 // kotlin.Int | Number of items to return per page (max 500)
val sort : kotlin.String = sort_example // kotlin.String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
val filter : kotlin.String = filter_example // kotlin.String | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
try {
    val result : RecordRevisionList = apiInstance.listRecordRevisions(studyKey, page, size, sort, filter)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecordRevisionsApi#listRecordRevisions")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecordRevisionsApi#listRecordRevisions")
    e.printStackTrace()
}
```

### Parameters
| **studyKey** | **kotlin.String**| Study key identifying the study context for the request | |
| **page** | **kotlin.Int**| Page index to retrieve (0-based) | [optional] [default to 0] |
| **size** | **kotlin.Int**| Number of items to return per page (max 500) | [optional] [default to 25] |
| **sort** | **kotlin.String**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter** | **kotlin.String**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] |

### Return type

[**RecordRevisionList**](RecordRevisionList.md)

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

