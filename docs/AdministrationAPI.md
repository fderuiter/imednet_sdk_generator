# AdministrationAPI

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listUsers**](AdministrationAPI.md#listusers) | **GET** /studies/{studyKey}/users | List users and their roles in a study


# **listUsers**
```swift
    open class func listUsers(studyKey: String, page: Int? = nil, size: Int? = nil, sort: String? = nil, includeInactive: Bool? = nil, completion: @escaping (_ data: UserList?, _ error: Error?) -> Void)
```

List users and their roles in a study

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let studyKey = "studyKey_example" // String | Study key identifying the study context for the request
let page = 987 // Int | Page index to retrieve (0-based) (optional) (default to 0)
let size = 987 // Int | Number of items to return per page (max 500) (optional) (default to 25)
let sort = "sort_example" // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional)
let includeInactive = true // Bool | For user listing, whether to include inactive users (optional) (default to false)

// List users and their roles in a study
AdministrationAPI.listUsers(studyKey: studyKey, page: page, size: size, sort: sort, includeInactive: includeInactive) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String** | Study key identifying the study context for the request | 
 **page** | **Int** | Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **Int** | Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **String** | Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] 
 **includeInactive** | **Bool** | For user listing, whether to include inactive users | [optional] [default to false]

### Return type

[**UserList**](UserList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

