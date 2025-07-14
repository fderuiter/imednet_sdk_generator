# AdministrationApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listUsers**](AdministrationApi.md#listUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study



## listUsers

> UserList listUsers(studyKey, page, size, sort, includeInactive)

List users and their roles in a study

### Example

```java
// Import classes:
//import org.openapitools.client.api.AdministrationApi;

AdministrationApi apiInstance = new AdministrationApi();
String studyKey = null; // String | Study key identifying the study context for the request
Integer page = 0; // Integer | Page index to retrieve (0-based)
Integer size = 25; // Integer | Number of items to return per page (max 500)
String sort = null; // String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
Boolean includeInactive = false; // Boolean | For user listing, whether to include inactive users
try {
    UserList result = apiInstance.listUsers(studyKey, page, size, sort, includeInactive);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AdministrationApi#listUsers");
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
 **includeInactive** | **Boolean**| For user listing, whether to include inactive users | [optional] [default to false]

### Return type

[**UserList**](UserList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

