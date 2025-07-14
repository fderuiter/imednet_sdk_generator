# PSOpenAPITools.PSOpenAPITools\Api.RecordsApi

All URIs are relative to *https://edc.prod.imednetapi.com/api/v1/edc*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Records**](RecordsApi.md#New-Records) | **POST** /studies/{studyKey}/records | Add new record or update subject/record data
[**Invoke-ListRecords**](RecordsApi.md#Invoke-ListRecords) | **GET** /studies/{studyKey}/records | List records (eCRF instances) in a study


<a id="New-Records"></a>
# **New-Records**
> RecordJobStatus New-Records<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StudyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ComponentsSchemasRecordCreateRequestItem] <PSCustomObject[]><br>

Add new record or update subject/record data

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
$ComponentsSchemasRecordCreateRequestItem = Initialize-ComponentsSchemasRecordCreateRequestItem -FormKey "MyFormKey" -FormId 0 -SiteName "MySiteName" -SiteId 0 -SubjectKey "MySubjectKey" -SubjectId 0 -SubjectOid "MySubjectOid" -IntervalName "MyIntervalName" -IntervalId 0 -RecordId 0 -RecordOid "MyRecordOid" -VarData @{ key_example =  } # ComponentsSchemasRecordCreateRequestItem[] | An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).

# Add new record or update subject/record data
try {
    $Result = New-Records -StudyKey $StudyKey -ComponentsSchemasRecordCreateRequestItem $ComponentsSchemasRecordCreateRequestItem
} catch {
    Write-Host ("Exception occurred when calling New-Records: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StudyKey** | **String**| Study key identifying the study context for the request | 
 **ComponentsSchemasRecordCreateRequestItem** | [**ComponentsSchemasRecordCreateRequestItem[]**](ComponentsSchemasRecordCreateRequestItem.md)| An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update). | 

### Return type

[**RecordJobStatus**](RecordJobStatus.md) (PSCustomObject)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ListRecords"></a>
# **Invoke-ListRecords**
> RecordList Invoke-ListRecords<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StudyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RecordDataFilter] <String><br>

List records (eCRF instances) in a study

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
$Filter = "MyFilter" # String | Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR). (optional)
$RecordDataFilter = "MyRecordDataFilter" # String | Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR). (optional)

# List records (eCRF instances) in a study
try {
    $Result = Invoke-ListRecords -StudyKey $StudyKey -Page $Page -Size $Size -Sort $Sort -Filter $Filter -RecordDataFilter $RecordDataFilter
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListRecords: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Filter** | **String**| Optional filter criteria to apply, in the format &#x60;attribute&#x3D;&#x3D;value&#x60; with support for &gt;, &gt;&#x3D;, &lt;, &lt;&#x3D;, !&#x3D;. Multiple criteria can be combined with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] 
 **RecordDataFilter** | **String**| Optional filter criteria to apply on recordData fields (question responses). Supports &#x3D;&#x3D;, !&#x3D;, &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;~ (contains) and can combine multiple criteria with &#x60;;&#x60; (AND) or &#x60;,&#x60; (OR). | [optional] 

### Return type

[**RecordList**](RecordList.md) (PSCustomObject)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [securityKeyAuth](../README.md#securityKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

