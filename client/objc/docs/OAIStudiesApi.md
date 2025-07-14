# OAIStudiesApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listStudies**](OAIStudiesApi.md#liststudies) | **GET** /studies | List studies accessible by API key


# **listStudies**
```objc
-(NSURLSessionTask*) listStudiesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    filter: (NSString*) filter
        completionHandler: (void (^)(OAIStudyList* output, NSError* error)) handler;
```

List studies accessible by API key

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


NSNumber* page = 0; // Page index to retrieve (0-based) (optional) (default to @0)
NSNumber* size = 25; // Number of items to return per page (max 500) (optional) (default to @25)
NSString* sort = @"sort_example"; // Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional)
NSString* filter = @"filter_example"; // Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR). (optional)

OAIStudiesApi*apiInstance = [[OAIStudiesApi alloc] init];

// List studies accessible by API key
[apiInstance listStudiesWithPage:page
              size:size
              sort:sort
              filter:filter
          completionHandler: ^(OAIStudyList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStudiesApi->listStudies: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Page index to retrieve (0-based) | [optional] [default to @0]
 **size** | **NSNumber***| Number of items to return per page (max 500) | [optional] [default to @25]
 **sort** | **NSString***| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] 
 **filter** | **NSString***| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] 

### Return type

[**OAIStudyList***](OAIStudyList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

