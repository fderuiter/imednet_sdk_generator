# OAIJobsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJobStatus**](OAIJobsApi.md#getjobstatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID


# **getJobStatus**
```objc
-(NSURLSessionTask*) getJobStatusWithStudyKey: (NSString*) studyKey
    batchId: (NSString*) batchId
        completionHandler: (void (^)(OAIJob* output, NSError* error)) handler;
```

Retrieve job status by batch ID

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
NSString* batchId = @"batchId_example"; // Batch ID of the job to retrieve

OAIJobsApi*apiInstance = [[OAIJobsApi alloc] init];

// Retrieve job status by batch ID
[apiInstance getJobStatusWithStudyKey:studyKey
              batchId:batchId
          completionHandler: ^(OAIJob* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobsApi->getJobStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyKey** | **NSString***| Study key identifying the study context for the request | 
 **batchId** | **NSString***| Batch ID of the job to retrieve | 

### Return type

[**OAIJob***](OAIJob.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

