# OAIRecordsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecords**](OAIRecordsApi.md#createrecords) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
[**listRecords**](OAIRecordsApi.md#listrecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study


# **createRecords**
```objc
-(NSURLSessionTask*) createRecordsWithStudyKey: (NSString*) studyKey
    componentsSchemasRecordCreateRequestItem: (NSArray<OAIComponentsSchemasRecordCreateRequestItem>*) componentsSchemasRecordCreateRequestItem
        completionHandler: (void (^)(OAIRecordJobStatus* output, NSError* error)) handler;
```

Add new record or update subject/record data

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];

// Configure API key authorization: (authentication scheme: securityKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-imn-security-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-imn-security-key"];


NSString* studyKey = @"studyKey_example"; // Study key identifying the study context for the request
NSArray<OAIComponentsSchemasRecordCreateRequestItem>* componentsSchemasRecordCreateRequestItem = @[[[OAIComponentsSchemasRecordCreateRequestItem alloc] init]]; // An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).

OAIRecordsApi*apiInstance = [[OAIRecordsApi alloc] init];

// Add new record or update subject/record data
[apiInstance createRecordsWithStudyKey:studyKey
              componentsSchemasRecordCreateRequestItem:componentsSchemasRecordCreateRequestItem
          completionHandler: ^(OAIRecordJobStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRecordsApi->createRecords: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **NSString***| Study key identifying the study context for the request | 
 **componentsSchemasRecordCreateRequestItem** | [**NSArray&lt;OAIComponentsSchemasRecordCreateRequestItem&gt;***](OAIComponentsSchemasRecordCreateRequestItem.md)| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). | 

### Return type

[**OAIRecordJobStatus***](OAIRecordJobStatus.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecords**
```objc
-(NSURLSessionTask*) listRecordsWithStudyKey: (NSString*) studyKey
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    filter: (NSString*) filter
    recordDataFilter: (NSString*) recordDataFilter
        completionHandler: (void (^)(OAIRecordList* output, NSError* error)) handler;
```

List records (eCRF instances) in a study

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];

// Configure API key authorization: (authentication scheme: securityKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-imn-security-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-imn-security-key"];


NSString* studyKey = @"studyKey_example"; // Study key identifying the study context for the request
NSNumber* page = 0; // Page index to retrieve (0-based) (optional) (default to @0)
NSNumber* size = 25; // Number of items to return per page (max 500) (optional) (default to @25)
NSString* sort = @"sort_example"; // Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional)
NSString* filter = @"filter_example"; // Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR). (optional)
NSString* recordDataFilter = @"recordDataFilter_example"; // Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR). (optional)

OAIRecordsApi*apiInstance = [[OAIRecordsApi alloc] init];

// List records (eCRF instances) in a study
[apiInstance listRecordsWithStudyKey:studyKey
              page:page
              size:size
              sort:sort
              filter:filter
              recordDataFilter:recordDataFilter
          completionHandler: ^(OAIRecordList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRecordsApi->listRecords: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **NSString***| Study key identifying the study context for the request | 
 **page** | **NSNumber***| Page index to retrieve (0-based) | [optional] [default to @0]
 **size** | **NSNumber***| Number of items to return per page (max 500) | [optional] [default to @25]
 **sort** | **NSString***| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] 
 **filter** | **NSString***| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] 
 **recordDataFilter** | **NSString***| Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] 

### Return type

[**OAIRecordList***](OAIRecordList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

