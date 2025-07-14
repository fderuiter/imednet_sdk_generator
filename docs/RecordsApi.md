# WWW::OpenAPIClient::RecordsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::RecordsApi;
```

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_records**](RecordsApi.md#create_records) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
[**list_records**](RecordsApi.md#list_records) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study


# **create_records**
> RecordJobStatus create_records(study_key => $study_key, components_schemas_record_create_request_item => $components_schemas_record_create_request_item)

Add new record or update subject/record data

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecordsApi;
my $api_instance = WWW::OpenAPIClient::RecordsApi->new(

    # Configure API key authorization: apiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
    # Configure API key authorization: securityKeyAuth
    api_key => {'x-imn-security-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-imn-security-key' => 'Bearer'},
);

my $study_key = "study_key_example"; # string | Study key identifying the study context for the request
my $components_schemas_record_create_request_item = [WWW::OpenAPIClient::Object::ARRAY[ComponentsSchemasRecordCreateRequestItem]->new()]; # ARRAY[ComponentsSchemasRecordCreateRequestItem] | An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).

eval {
    my $result = $api_instance->create_records(study_key => $study_key, components_schemas_record_create_request_item => $components_schemas_record_create_request_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecordsApi->create_records: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_key** | **string**| Study key identifying the study context for the request | 
 **components_schemas_record_create_request_item** | [**ARRAY[ComponentsSchemasRecordCreateRequestItem]**](ComponentsSchemasRecordCreateRequestItem.md)| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). | 

### Return type

[**RecordJobStatus**](RecordJobStatus.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_records**
> RecordList list_records(study_key => $study_key, page => $page, size => $size, sort => $sort, filter => $filter, record_data_filter => $record_data_filter)

List records (eCRF instances) in a study

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RecordsApi;
my $api_instance = WWW::OpenAPIClient::RecordsApi->new(

    # Configure API key authorization: apiKeyAuth
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
    # Configure API key authorization: securityKeyAuth
    api_key => {'x-imn-security-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-imn-security-key' => 'Bearer'},
);

my $study_key = "study_key_example"; # string | Study key identifying the study context for the request
my $page = 0; # int | Page index to retrieve (0-based)
my $size = 25; # int | Number of items to return per page (max 500)
my $sort = "sort_example"; # string | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
my $filter = "filter_example"; # string | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
my $record_data_filter = "record_data_filter_example"; # string | Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).

eval {
    my $result = $api_instance->list_records(study_key => $study_key, page => $page, size => $size, sort => $sort, filter => $filter, record_data_filter => $record_data_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RecordsApi->list_records: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_key** | **string**| Study key identifying the study context for the request | 
 **page** | **int**| Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **int**| Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **string**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] 
 **filter** | **string**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] 
 **record_data_filter** | **string**| Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] 

### Return type

[**RecordList**](RecordList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

