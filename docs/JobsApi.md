# WWW::OpenAPIClient::JobsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::JobsApi;
```

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_job_status**](JobsApi.md#get_job_status) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID


# **get_job_status**
> Job get_job_status(study_key => $study_key, batch_id => $batch_id)

Retrieve job status by batch ID

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::JobsApi;
my $api_instance = WWW::OpenAPIClient::JobsApi->new(

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
my $batch_id = "batch_id_example"; # string | Batch ID of the job to retrieve

eval {
    my $result = $api_instance->get_job_status(study_key => $study_key, batch_id => $batch_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling JobsApi->get_job_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_key** | **string**| Study key identifying the study context for the request | 
 **batch_id** | **string**| Batch ID of the job to retrieve | 

### Return type

[**Job**](Job.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

