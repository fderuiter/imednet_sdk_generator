# PSOpenAPITools.PSOpenAPITools\Api.JobsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-JobStatus**](JobsApi.md#Get-JobStatus) | **GET** /studies/{studyKey}/jobs/{batchId} | Retrieve job status by batch ID


<a id="Get-JobStatus"></a>
# **Get-JobStatus**
> Job Get-JobStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StudyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BatchId] <String><br>

Retrieve job status by batch ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiKeyAuth
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

# Configure API key authorization: securityKeyAuth
$Configuration.ApiKey.x-imn-security-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-imn-security-key = "Bearer"

$StudyKey = "MyStudyKey" # String | Study key identifying the study context for the request
$BatchId = "MyBatchId" # String | Batch ID of the job to retrieve

# Retrieve job status by batch ID
try {
    $Result = Get-JobStatus -StudyKey $StudyKey -BatchId $BatchId
} catch {
    Write-Host ("Exception occurred when calling Get-JobStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StudyKey** | **String**| Study key identifying the study context for the request | 
 **BatchId** | **String**| Batch ID of the job to retrieve | 

### Return type

[**Job**](Job.md) (PSCustomObject)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

