# OpenAPI\Client\AdministrationApi

All URIs are relative to https://edc.prod.imednetapi.com/api/v1/edc, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**listUsers()**](AdministrationApi.md#listUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study |


## `listUsers()`

```php
listUsers($study_key, $page, $size, $sort, $include_inactive): \OpenAPI\Client\Model\UserList
```

List users and their roles in a study

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


$apiInstance = new OpenAPI\Client\Api\AdministrationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$study_key = 'study_key_example'; // string | Study key identifying the study context for the request
$page = 0; // int | Page index to retrieve (0-based)
$size = 25; // int | Number of items to return per page (max 500)
$sort = 'sort_example'; // string | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
$include_inactive = false; // bool | For user listing, whether to include inactive users

try {
    $result = $apiInstance->listUsers($study_key, $page, $size, $sort, $include_inactive);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdministrationApi->listUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **study_key** | **string**| Study key identifying the study context for the request | |
| **page** | **int**| Page index to retrieve (0-based) | [optional] [default to 0] |
| **size** | **int**| Number of items to return per page (max 500) | [optional] [default to 25] |
| **sort** | **string**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] |
| **include_inactive** | **bool**| For user listing, whether to include inactive users | [optional] [default to false] |

### Return type

[**\OpenAPI\Client\Model\UserList**](../Model/UserList.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [securityKeyAuth](../../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
