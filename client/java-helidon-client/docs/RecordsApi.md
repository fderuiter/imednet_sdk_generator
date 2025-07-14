# RecordsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createRecords**](RecordsApi.md#createRecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data |
| [**listRecords**](RecordsApi.md#listRecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study |



## createRecords

> RecordJobStatus createRecords(studyKey, componentsSchemasRecordCreateRequestItem)

Add new record or update subject/record data

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **studyKey** | **String**| Study key identifying the study context for the request | |
| **componentsSchemasRecordCreateRequestItem** | [**List&lt;ComponentsSchemasRecordCreateRequestItem&gt;**](ComponentsSchemasRecordCreateRequestItem.md)| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). | |

### Return type

[**RecordJobStatus**](RecordJobStatus.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted request for record creation. Returns a job identifier to check status. |  -  |
| **400** | Bad request (malformed or invalid input) |  -  |
| **401** | Authentication failed or was not provided |  -  |
| **403** | Authenticated but not allowed to access the resource |  -  |
| **404** | The requested resource was not found |  -  |
| **429** | Too many requests (rate limit exceeded) |  -  |
| **500** | Internal server error (unexpected condition encountered) |  -  |


## listRecords

> RecordList listRecords(studyKey, page, size, sort, filter, recordDataFilter)

List records (eCRF instances) in a study

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **studyKey** | **String**| Study key identifying the study context for the request | |
| **page** | **Integer**| Page index to retrieve (0-based) | [optional] [default to 0] |
| **size** | **Integer**| Number of items to return per page (max 500) | [optional] [default to 25] |
| **sort** | **String**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] |
| **filter** | **String**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] |
| **recordDataFilter** | **String**| Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] |

### Return type

[**RecordList**](RecordList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response with list of records |  -  |
| **400** | Bad request (malformed or invalid input) |  -  |
| **401** | Authentication failed or was not provided |  -  |
| **403** | Authenticated but not allowed to access the resource |  -  |
| **404** | The requested resource was not found |  -  |
| **500** | Internal server error (unexpected condition encountered) |  -  |

