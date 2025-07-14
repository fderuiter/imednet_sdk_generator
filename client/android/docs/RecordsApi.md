# RecordsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecords**](RecordsApi.md#createRecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
[**listRecords**](RecordsApi.md#listRecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study



## createRecords

> RecordJobStatus createRecords(studyKey, componentsSchemasRecordCreateRequestItem)

Add new record or update subject/record data

### Example

```java
// Import classes:
//import org.openapitools.client.api.RecordsApi;

RecordsApi apiInstance = new RecordsApi();
String studyKey = null; // String | Study key identifying the study context for the request
List<ComponentsSchemasRecordCreateRequestItem> componentsSchemasRecordCreateRequestItem = Arrays.asList(new ComponentsSchemasRecordCreateRequestItem()); // List<ComponentsSchemasRecordCreateRequestItem> | An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
try {
    RecordJobStatus result = apiInstance.createRecords(studyKey, componentsSchemasRecordCreateRequestItem);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RecordsApi#createRecords");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String**| Study key identifying the study context for the request | [default to null]
 **componentsSchemasRecordCreateRequestItem** | [**List&lt;ComponentsSchemasRecordCreateRequestItem&gt;**](ComponentsSchemasRecordCreateRequestItem.md)| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). |

### Return type

[**RecordJobStatus**](RecordJobStatus.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## listRecords

> RecordList listRecords(studyKey, page, size, sort, filter, recordDataFilter)

List records (eCRF instances) in a study

### Example

```java
// Import classes:
//import org.openapitools.client.api.RecordsApi;

RecordsApi apiInstance = new RecordsApi();
String studyKey = null; // String | Study key identifying the study context for the request
Integer page = 0; // Integer | Page index to retrieve (0-based)
Integer size = 25; // Integer | Number of items to return per page (max 500)
String sort = null; // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
String filter = null; // String | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
String recordDataFilter = null; // String | Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).
try {
    RecordList result = apiInstance.listRecords(studyKey, page, size, sort, filter, recordDataFilter);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RecordsApi#listRecords");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **String**| Study key identifying the study context for the request | [default to null]
 **page** | **Integer**| Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **Integer**| Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **String**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] [default to null]
 **filter** | **String**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] [default to null]
 **recordDataFilter** | **String**| Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] [default to null]

### Return type

[**RecordList**](RecordList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

