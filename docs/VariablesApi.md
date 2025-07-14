# VariablesApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_variables**](VariablesApi.md#list_variables) | **GET** /studies/{studyKey}/variables | List variables (fields) in a study


# **list_variables**
> list_variables(_api::VariablesApi, study_key::String; page=nothing, size=nothing, sort=nothing, filter=nothing, _mediaType=nothing) -> VariableList, OpenAPI.Clients.ApiResponse <br/>
> list_variables(_api::VariablesApi, response_stream::Channel, study_key::String; page=nothing, size=nothing, sort=nothing, filter=nothing, _mediaType=nothing) -> Channel{ VariableList }, OpenAPI.Clients.ApiResponse

List variables (fields) in a study

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **VariablesApi** | API context | 
**study_key** | **String** | Study key identifying the study context for the request |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64** | Page index to retrieve (0-based) | [default to 0]
 **size** | **Int64** | Number of items to return per page (max 500) | [default to 25]
 **sort** | **String** | Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [default to nothing]
 **filter** | **String** | Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [default to nothing]

### Return type

[**VariableList**](VariableList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

