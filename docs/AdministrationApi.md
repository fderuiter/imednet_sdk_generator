# AdministrationApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**listUsers**](AdministrationApi.md#listUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study |


<a id="listUsers"></a>
# **listUsers**
> UserList listUsers(studyKey, page, size, sort, includeInactive)

List users and their roles in a study

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AdministrationApi()
val studyKey : kotlin.String = studyKey_example // kotlin.String | Study key identifying the study context for the request
val page : kotlin.Int = 0 // kotlin.Int | Page index to retrieve (0-based)
val size : kotlin.Int = 25 // kotlin.Int | Number of items to return per page (max 500)
val sort : kotlin.String = sort_example // kotlin.String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
val includeInactive : kotlin.Boolean = true // kotlin.Boolean | For user listing, whether to include inactive users
try {
    val result : UserList = apiInstance.listUsers(studyKey, page, size, sort, includeInactive)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AdministrationApi#listUsers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AdministrationApi#listUsers")
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
| **includeInactive** | **kotlin.Boolean**| For user listing, whether to include inactive users | [optional] [default to false] |

### Return type

[**UserList**](UserList.md)

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

