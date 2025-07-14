# JobsAPI

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJobStatus**](JobsAPI.md#getjobstatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID


# **getJobStatus**
```swift
    open class func getJobStatus(studyKey: String, batchId: String, completion: @escaping (_ data: Job?, _ error: Error?) -> Void)
```

Retrieve job status by batch ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let studyKey = "studyKey_example" // String | Study key identifying the study context for the request
let batchId = "batchId_example" // String | Batch ID of the job to retrieve

// Retrieve job status by batch ID
JobsAPI.getJobStatus(studyKey: studyKey, batchId: batchId) { (response, error) in
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
 **batchId** | **String** | Batch ID of the job to retrieve | 

### Return type

[**Job**](Job.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

