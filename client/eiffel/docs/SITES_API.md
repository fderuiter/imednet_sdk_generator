# SITES_API

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**list_sites**](SITES_API.md#list_sites) | **Get** /studies/{studyKey}/sites | List sites for a study


# **list_sites**
> list_sites (study_key: STRING_32 ; page:  detachable INTEGER_32 ; size:  detachable INTEGER_32 ; sort:  detachable STRING_32 ; filter:  detachable STRING_32 ): detachable SITE_LIST


List sites for a study


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_key** | **STRING_32**| Study key identifying the study context for the request | [default to null]
 **page** | **INTEGER_32**| Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **INTEGER_32**| Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **STRING_32**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] [default to null]
 **filter** | **STRING_32**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] [default to null]

### Return type

[**SITE_LIST**](SiteList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

