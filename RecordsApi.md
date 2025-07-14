# .RecordsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecords**](RecordsApi.md#createRecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
[**listRecords**](RecordsApi.md#listRecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study


# **createRecords**
> RecordJobStatus createRecords(componentsSchemasRecordCreateRequestItem)


### Example


```typescript
import { createConfiguration, RecordsApi } from '';
import type { RecordsApiCreateRecordsRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RecordsApi(configuration);

const request: RecordsApiCreateRecordsRequest = {
    // Study key identifying the study context for the request
  studyKey: "studyKey_example",
    // An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
  componentsSchemasRecordCreateRequestItem: [
    {
      formKey: "formKey_example",
      formId: 1,
      siteName: "siteName_example",
      siteId: 1,
      subjectKey: "subjectKey_example",
      subjectId: 1,
      subjectOid: "subjectOid_example",
      intervalName: "intervalName_example",
      intervalId: 1,
      recordId: 1,
      recordOid: "recordOid_example",
      data: {},
    },
  ],
};

const data = await apiInstance.createRecords(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **componentsSchemasRecordCreateRequestItem** | **Array<ComponentsSchemasRecordCreateRequestItem>**| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). |
 **studyKey** | [**string**] | Study key identifying the study context for the request | defaults to undefined


### Return type

**RecordJobStatus**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [securityKeyAuth](README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**202** | Accepted request for record creation. Returns a job identifier to check status. |  -  |
**400** | Bad request (malformed or invalid input) |  -  |
**401** | Authentication failed or was not provided |  -  |
**403** | Authenticated but not allowed to access the resource |  -  |
**404** | The requested resource was not found |  -  |
**429** | Too many requests (rate limit exceeded) |  -  |
**500** | Internal server error (unexpected condition encountered) |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **listRecords**
> RecordList listRecords()


### Example


```typescript
import { createConfiguration, RecordsApi } from '';
import type { RecordsApiListRecordsRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RecordsApi(configuration);

const request: RecordsApiListRecordsRequest = {
    // Study key identifying the study context for the request
  studyKey: "studyKey_example",
    // Page index to retrieve (0-based) (optional)
  page: 0,
    // Number of items to return per page (max 500) (optional)
  size: 25,
    // Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional)
  sort: "sort_example",
    // Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR). (optional)
  filter: "filter_example",
    // Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR). (optional)
  recordDataFilter: "recordDataFilter_example",
};

const data = await apiInstance.listRecords(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | [**string**] | Study key identifying the study context for the request | defaults to undefined
 **page** | [**number**] | Page index to retrieve (0-based) | (optional) defaults to 0
 **size** | [**number**] | Number of items to return per page (max 500) | (optional) defaults to 25
 **sort** | [**string**] | Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | (optional) defaults to undefined
 **filter** | [**string**] | Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | (optional) defaults to undefined
 **recordDataFilter** | [**string**] | Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | (optional) defaults to undefined


### Return type

**RecordList**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [securityKeyAuth](README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful response with list of records |  -  |
**400** | Bad request (malformed or invalid input) |  -  |
**401** | Authentication failed or was not provided |  -  |
**403** | Authenticated but not allowed to access the resource |  -  |
**404** | The requested resource was not found |  -  |
**500** | Internal server error (unexpected condition encountered) |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


