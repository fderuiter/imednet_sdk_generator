# PSOpenAPITools.PSOpenAPITools\Api.AdministrationApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ListUsers**](AdministrationApi.md#Invoke-ListUsers) | **GET** /studies/{studyKey}/users | List users and their roles in a study


<a id="Invoke-ListUsers"></a>
# **Invoke-ListUsers**
> UserList Invoke-ListUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StudyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeInactive] <System.Nullable[Boolean]><br>

List users and their roles in a study

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
$Page = 0 # Int32 | Page index to retrieve (0-based) (optional) (default to 0)
$Size = 25 # Int32 | Number of items to return per page (max 500) (optional) (default to 25)
$Sort = "MySort" # String | Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated. (optional)
$IncludeInactive = $true # Boolean | For user listing, whether to include inactive users (optional) (default to $false)

# List users and their roles in a study
try {
    $Result = Invoke-ListUsers -StudyKey $StudyKey -Page $Page -Size $Size -Sort $Sort -IncludeInactive $IncludeInactive
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StudyKey** | **String**| Study key identifying the study context for the request | 
 **Page** | **Int32**| Page index to retrieve (0-based) | [optional] [default to 0]
 **Size** | **Int32**| Number of items to return per page (max 500) | [optional] [default to 25]
 **Sort** | **String**| Sorting criteria in the format &#x60;property,ASC&#x60; or &#x60;property,DESC&#x60;. Can be repeated. | [optional] 
 **IncludeInactive** | **Boolean**| For user listing, whether to include inactive users | [optional] [default to $false]

### Return type

[**UserList**](UserList.md) (PSCustomObject)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

