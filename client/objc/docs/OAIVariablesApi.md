# OAIVariablesApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listVariables**](OAIVariablesApi.md#listvariables) | **GET** /studies/{studyKey}/variables | List variables (fields) in a study


# **listVariables**
```objc
-(NSURLSessionTask*) listVariablesWithStudyKey: (NSString*) studyKey
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    filter: (NSString*) filter
        completionHandler: (void (^)(OAIVariableList* output, NSError* error)) handler;
```

List variables (fields) in a study

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

OAIVariablesApi*apiInstance = [[OAIVariablesApi alloc] init];

// List variables (fields) in a study
[apiInstance listVariablesWithStudyKey:studyKey
              page:page
              size:size
              sort:sort
              filter:filter
          completionHandler: ^(OAIVariableList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIVariablesApi->listVariables: %@", error);
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

### Return type

[**OAIVariableList***](OAIVariableList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

