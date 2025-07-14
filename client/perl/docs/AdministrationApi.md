# WWW::OpenAPIClient::AdministrationApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::AdministrationApi;
```

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_users**](AdministrationApi.md#list_users) | **GET** /studies/{studyKey}/users | List users and their roles in a study


# **list_users**
> UserList list_users(study_key => $study_key, page => $page, size => $size, sort => $sort, include_inactive => $include_inactive)

List users and their roles in a study

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AdministrationApi;
my $api_instance = WWW::OpenAPIClient::AdministrationApi->new(

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
my $include_inactive = false; # boolean | For user listing, whether to include inactive users

eval {
    my $result = $api_instance->list_users(study_key => $study_key, page => $page, size => $size, sort => $sort, include_inactive => $include_inactive);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AdministrationApi->list_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_key** | **string**| Study key identifying the study context for the request | 
 **page** | **int**| Page index to retrieve (0-based) | [optional] [default to 0]
 **size** | **int**| Number of items to return per page (max 500) | [optional] [default to 25]
 **sort** | **string**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] 
 **include_inactive** | **boolean**| For user listing, whether to include inactive users | [optional] [default to false]

### Return type

[**UserList**](UserList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

