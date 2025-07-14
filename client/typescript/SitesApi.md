# .SitesApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listSites**](SitesApi.md#listSites) | **GET** /studies/{studyKey}/sites | List sites for a study


# **listSites**
> SiteList listSites()


### Example


```typescript
import { createConfiguration, SitesApi } from '';
import type { SitesApiListSitesRequest } from '';

const configuration = createConfiguration();
const apiInstance = new SitesApi(configuration);

const request: SitesApiListSitesRequest = {
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
};

const data = await apiInstance.listSites(request);
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


### Return type

**SiteList**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [securityKeyAuth](README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful response with list of sites |  -  |
**400** | Bad request (malformed or invalid input) |  -  |
**401** | Authentication failed or was not provided |  -  |
**403** | Authenticated but not allowed to access the resource |  -  |
**404** | The requested resource was not found |  -  |
**500** | Internal server error (unexpected condition encountered) |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


