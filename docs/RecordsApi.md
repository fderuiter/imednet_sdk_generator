# RecordsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_records**](RecordsApi.md#create_records) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
[**list_records**](RecordsApi.md#list_records) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study


# **create_records**
> create_records(_api::RecordsApi, study_key::String, components_schemas_record_create_request_item::Vector{ComponentsSchemasRecordCreateRequestItem}; _mediaType=nothing) -> RecordJobStatus, OpenAPI.Clients.ApiResponse <br/>
> create_records(_api::RecordsApi, response_stream::Channel, study_key::String, components_schemas_record_create_request_item::Vector{ComponentsSchemasRecordCreateRequestItem}; _mediaType=nothing) -> Channel{ RecordJobStatus }, OpenAPI.Clients.ApiResponse

Add new record or update subject/record data

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RecordsApi** | API context | 
**study_key** | **String** | Study key identifying the study context for the request |
**components_schemas_record_create_request_item** | [**Vector{ComponentsSchemasRecordCreateRequestItem}**](ComponentsSchemasRecordCreateRequestItem.md) | An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). |

### Return type

[**RecordJobStatus**](RecordJobStatus.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_records**
> list_records(_api::RecordsApi, study_key::String; page=nothing, size=nothing, sort=nothing, filter=nothing, record_data_filter=nothing, _mediaType=nothing) -> RecordList, OpenAPI.Clients.ApiResponse <br/>
> list_records(_api::RecordsApi, response_stream::Channel, study_key::String; page=nothing, size=nothing, sort=nothing, filter=nothing, record_data_filter=nothing, _mediaType=nothing) -> Channel{ RecordList }, OpenAPI.Clients.ApiResponse

List records (eCRF instances) in a study

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RecordsApi** | API context | 
**study_key** | **String** | Study key identifying the study context for the request |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64** | Page index to retrieve (0-based) | [default to 0]
 **size** | **Int64** | Number of items to return per page (max 500) | [default to 25]
 **sort** | **String** | Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [default to nothing]
 **filter** | **String** | Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [default to nothing]
 **record_data_filter** | **String** | Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [default to nothing]

### Return type

[**RecordList**](RecordList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

