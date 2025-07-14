# RecordsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createRecords**](RecordsApi.md#createRecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data |
| [**listRecords**](RecordsApi.md#listRecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study |


<a id="createRecords"></a>
# **createRecords**
> RecordJobStatus createRecords(studyKey, componentsSchemasRecordCreateRequestItem)

Add new record or update subject/record data

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = RecordsApi()
val studyKey : kotlin.String = studyKey_example // kotlin.String | Study key identifying the study context for the request
val componentsSchemasRecordCreateRequestItem : kotlin.collections.List<ComponentsSchemasRecordCreateRequestItem> =  // kotlin.collections.List<ComponentsSchemasRecordCreateRequestItem> | An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
try {
    val result : RecordJobStatus = apiInstance.createRecords(studyKey, componentsSchemasRecordCreateRequestItem)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecordsApi#createRecords")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecordsApi#createRecords")
    e.printStackTrace()
}
```

### Parameters
| **studyKey** | **kotlin.String**| Study key identifying the study context for the request | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **componentsSchemasRecordCreateRequestItem** | [**kotlin.collections.List&lt;ComponentsSchemasRecordCreateRequestItem&gt;**](ComponentsSchemasRecordCreateRequestItem.md)| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). | |

### Return type

[**RecordJobStatus**](RecordJobStatus.md)

### Authorization


Configure apiKeyAuth:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure securityKeyAuth:
    ApiClient.apiKey["x-imn-security-key"] = ""
    ApiClient.apiKeyPrefix["x-imn-security-key"] = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="listRecords"></a>
# **listRecords**
> RecordList listRecords(studyKey, page, size, sort, filter, recordDataFilter)

List records (eCRF instances) in a study

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = RecordsApi()
val studyKey : kotlin.String = studyKey_example // kotlin.String | Study key identifying the study context for the request
val page : kotlin.Int = 0 // kotlin.Int | Page index to retrieve (0-based)
val size : kotlin.Int = 25 // kotlin.Int | Number of items to return per page (max 500)
val sort : kotlin.String = sort_example // kotlin.String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
val filter : kotlin.String = filter_example // kotlin.String | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
val recordDataFilter : kotlin.String = recordDataFilter_example // kotlin.String | Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).
try {
    val result : RecordList = apiInstance.listRecords(studyKey, page, size, sort, filter, recordDataFilter)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RecordsApi#listRecords")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RecordsApi#listRecords")
    e.printStackTrace()
}
```

### Parameters
| **studyKey** | **kotlin.String**| Study key identifying the study context for the request | |
| **page** | **kotlin.Int**| Page index to retrieve (0-based) | [optional] [default to 0] |
| **size** | **kotlin.Int**| Number of items to return per page (max 500) | [optional] [default to 25] |
| **sort** | **kotlin.String**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] |
| **filter** | **kotlin.String**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **recordDataFilter** | **kotlin.String**| Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] |

### Return type

[**RecordList**](RecordList.md)

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

