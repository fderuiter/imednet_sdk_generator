# WWW::OpenAPIClient::IntervalsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::IntervalsApi;
```

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_intervals**](IntervalsApi.md#list_intervals) | **GET** /studies/{studyKey}/intervals | List intervals (visit definitions) in a study


# **list_intervals**
> IntervalList list_intervals(study_key => $study_key, page => $page, size => $size, sort => $sort, filter => $filter)

List intervals (visit definitions) in a study

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::IntervalsApi;
my $api_instance = WWW::OpenAPIClient::IntervalsApi->new(

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

eval {
    my $result = $api_instance->list_intervals(study_key => $study_key, page => $page, size => $size, sort => $sort, filter => $filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling IntervalsApi->list_intervals: $@\n";
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

### Return type

[**IntervalList**](IntervalList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

