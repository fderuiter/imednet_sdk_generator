# OpenAPI\Client\StudiesApi

All URIs are relative to https://edc.prod.imednetapi.com/api/v1/edc, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**listStudies()**](StudiesApi.md#listStudies) | **GET** /studies | List studies accessible by API key |


## `listStudies()`

```php
listStudies($page, $size, $sort, $filter): \OpenAPI\Client\Model\StudyList
```

List studies accessible by API key

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


$apiInstance = new OpenAPI\Client\Api\StudiesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$page = 0; // int | Page index to retrieve (0-based)
$size = 25; // int | Number of items to return per page (max 500)
$sort = 'sort_example'; // string | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
$filter = 'filter_example'; // string | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).

try {
    $result = $apiInstance->listStudies($page, $size, $sort, $filter);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudiesApi->listStudies: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **page** | **int**| Page index to retrieve (0-based) | [optional] [default to 0] |
| **size** | **int**| Number of items to return per page (max 500) | [optional] [default to 25] |
| **sort** | **string**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] |
| **filter** | **string**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] |

### Return type

[**\OpenAPI\Client\Model\StudyList**](../Model/StudyList.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [securityKeyAuth](../../README.md#securityKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
