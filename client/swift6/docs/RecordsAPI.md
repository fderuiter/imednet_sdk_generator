# RecordsAPI

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecords**](RecordsAPI.md#createrecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
[**listRecords**](RecordsAPI.md#listrecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study


# **createRecords**
```swift
    open class func createRecords(studyKey: String, componentsSchemasRecordCreateRequestItem: [ComponentsSchemasRecordCreateRequestItem], completion: @escaping (_ data: RecordJobStatus?, _ error: Error?) -> Void)
```

Add new record or update subject/record data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let studyKey = "studyKey_example" // String | Study key identifying the study context for the request
let componentsSchemasRecordCreateRequestItem = [components_schemas_RecordCreateRequest_item(formKey: "formKey_example", formId: 123, siteName: "siteName_example", siteId: 123, subjectKey: "subjectKey_example", subjectId: 123, subjectOid: "subjectOid_example", intervalName: "intervalName_example", intervalId: 123, recordId: 123, recordOid: "recordOid_example", data: "TODO")] // [ComponentsSchemasRecordCreateRequestItem] | An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).

// Add new record or update subject/record data
RecordsAPI.createRecords(studyKey: studyKey, componentsSchemasRecordCreateRequestItem: componentsSchemasRecordCreateRequestItem) { (response, error) in
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
 **componentsSchemasRecordCreateRequestItem** | [**[ComponentsSchemasRecordCreateRequestItem]**](ComponentsSchemasRecordCreateRequestItem.md) | An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). | 

### Return type

[**RecordJobStatus**](RecordJobStatus.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecords**
```swift
    open class func listRecords(studyKey: String, page: Int? = nil, size: Int? = nil, sort: String? = nil, filter: String? = nil, recordDataFilter: String? = nil, completion: @escaping (_ data: RecordList?, _ error: Error?) -> Void)
```

List records (eCRF instances) in a study

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let studyKey = "studyKey_example" // String | Study key identifying the study context for the request
let page = 987 // Int | Page index to retrieve (0-based) (optional) (default to 0)
let size = 987 // Int | Number of items to return per page (max 500) (optional) (default to 25)
let sort = "sort_example" // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional)
let filter = "filter_example" // String | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR). (optional)
let recordDataFilter = "recordDataFilter_example" // String | Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR). (optional)

// List records (eCRF instances) in a study
RecordsAPI.listRecords(studyKey: studyKey, page: page, size: size, sort: sort, filter: filter, recordDataFilter: recordDataFilter) { (response, error) in
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
 **filter** | **String** | Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] 
 **recordDataFilter** | **String** | Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] 

### Return type

[**RecordList**](RecordList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

