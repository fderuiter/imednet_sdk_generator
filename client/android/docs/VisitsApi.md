# VisitsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listVisits**](VisitsApi.md#listVisits) | **GET** /studies/{studyKey}/visits | List visits (subject visit instances) in a study



## listVisits

> VisitList listVisits(studyKey, page, size, sort, filter)

List visits (subject visit instances) in a study

### Example

```java
// Import classes:
//import org.openapitools.client.api.VisitsApi;

VisitsApi apiInstance = new VisitsApi();
String studyKey = null; // String | Study key identifying the study context for the request
Integer page = 0; // Integer | Page index to retrieve (0-based)
Integer size = 25; // Integer | Number of items to return per page (max 500)
String sort = null; // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
String filter = null; // String | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
try {
    VisitList result = apiInstance.listVisits(studyKey, page, size, sort, filter);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling VisitsApi#listVisits");
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

### Return type

[**VisitList**](VisitList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

