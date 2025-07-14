# OpenAPI\Client\JobsApi

All URIs are relative to https://edc.prod.imednetapi.com/api/v1/edc, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getJobStatus()**](JobsApi.md#getJobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID |


## `getJobStatus()`

```php
getJobStatus($study_key, $batch_id): \OpenAPI\Client\Model\Job
```

Retrieve job status by batch ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');

// Configure API key authorization: securityKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-imn-security-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-imn-security-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\JobsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$study_key = 'study_key_example'; // string | Study key identifying the study context for the request
$batch_id = 'batch_id_example'; // string | Batch ID of the job to retrieve

try {
    $result = $apiInstance->getJobStatus($study_key, $batch_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JobsApi->getJobStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **study_key** | **string**| Study key identifying the study context for the request | |
| **batch_id** | **string**| Batch ID of the job to retrieve | |

### Return type

[**\OpenAPI\Client\Model\Job**](../Model/Job.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [securityKeyAuth](../../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
