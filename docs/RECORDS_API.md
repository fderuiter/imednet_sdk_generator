# RECORDS_API

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**create_records**](RECORDS_API.md#create_records) | **Post** /studies/{studyKey}/records | Add new record or update subject/record data
[**list_records**](RECORDS_API.md#list_records) | **Get** /studies/{studyKey}/records | List records (eCRF instances) in a study


# **create_records**
> create_records (study_key: STRING_32 ; components_schemas__record_create_request_item: LIST [COMPONENTS_SCHEMAS_RECORD_CREATE_REQUEST_ITEM] ): detachable RECORD_JOB_STATUS


Add new record or update subject/record data


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_key** | **STRING_32**| Study key identifying the study context for the request | [default to null]
 **components_schemas__record_create_request_item** | [**LIST [COMPONENTS_SCHEMAS_RECORD_CREATE_REQUEST_ITEM]**](components_schemas_RecordCreateRequest_item.md)| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). | 

### Return type

[**RECORD_JOB_STATUS**](RecordJobStatus.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_records**
> list_records (study_key: STRING_32 ; page:  detachable INTEGER_32 ; size:  detachable INTEGER_32 ; sort:  detachable STRING_32 ; filter:  detachable STRING_32 ; record_data_filter:  detachable STRING_32 ): detachable RECORD_LIST


List records (eCRF instances) in a study


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_key** | **STRING_32**| Study key identifying the study context for the request | [default to null]
 **page** | **INTEGER_32**| Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **INTEGER_32**| Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **STRING_32**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] [default to null]
 **filter** | **STRING_32**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] [default to null]
 **record_data_filter** | **STRING_32**| Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] [default to null]

### Return type

[**RECORD_LIST**](RecordList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

