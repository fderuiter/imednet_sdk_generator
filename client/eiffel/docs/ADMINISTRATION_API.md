# ADMINISTRATION_API

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**list_users**](ADMINISTRATION_API.md#list_users) | **Get** /studies/{studyKey}/users | List users and their roles in a study


# **list_users**
> list_users (study_key: STRING_32 ; page:  detachable INTEGER_32 ; size:  detachable INTEGER_32 ; sort:  detachable STRING_32 ; include_inactive:  detachable BOOLEAN ): detachable USER_LIST


List users and their roles in a study


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_key** | **STRING_32**| Study key identifying the study context for the request | [default to null]
 **page** | **INTEGER_32**| Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **INTEGER_32**| Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **STRING_32**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] [default to null]
 **include_inactive** | **BOOLEAN**| For user listing, whether to include inactive users | [optional] [default to false]

### Return type

[**USER_LIST**](UserList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

