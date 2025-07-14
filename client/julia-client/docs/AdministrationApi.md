# AdministrationApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_users**](AdministrationApi.md#list_users) | **GET** /studies/{studyKey}/users | List users and their roles in a study


# **list_users**
> list_users(_api::AdministrationApi, study_key::String; page=nothing, size=nothing, sort=nothing, include_inactive=nothing, _mediaType=nothing) -> UserList, OpenAPI.Clients.ApiResponse <br/>
> list_users(_api::AdministrationApi, response_stream::Channel, study_key::String; page=nothing, size=nothing, sort=nothing, include_inactive=nothing, _mediaType=nothing) -> Channel{ UserList }, OpenAPI.Clients.ApiResponse

List users and their roles in a study

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AdministrationApi** | API context | 
**study_key** | **String** | Study key identifying the study context for the request |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64** | Page index to retrieve (0-based) | [default to 0]
 **size** | **Int64** | Number of items to return per page (max 500) | [default to 25]
 **sort** | **String** | Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [default to nothing]
 **include_inactive** | **Bool** | For user listing, whether to include inactive users | [default to false]

### Return type

[**UserList**](UserList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

