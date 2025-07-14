# OAIAdministrationApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listUsers**](OAIAdministrationApi.md#listusers) | **GET** /studies/{studyKey}/users | List users and their roles in a study


# **listUsers**
```objc
-(NSURLSessionTask*) listUsersWithStudyKey: (NSString*) studyKey
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    includeInactive: (NSNumber*) includeInactive
        completionHandler: (void (^)(OAIUserList* output, NSError* error)) handler;
```

List users and their roles in a study

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
NSNumber* includeInactive = @(NO); // For user listing, whether to include inactive users (optional) (default to @(NO))

OAIAdministrationApi*apiInstance = [[OAIAdministrationApi alloc] init];

// List users and their roles in a study
[apiInstance listUsersWithStudyKey:studyKey
              page:page
              size:size
              sort:sort
              includeInactive:includeInactive
          completionHandler: ^(OAIUserList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAdministrationApi->listUsers: %@", error);
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
 **includeInactive** | **NSNumber***| For user listing, whether to include inactive users | [optional] [default to @(NO)]

### Return type

[**OAIUserList***](OAIUserList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

