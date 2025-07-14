# Keyword
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**KeywordName** | **String** | Name of the keyword | [optional] 
**KeywordKey** | **String** | Key of the keyword (short code) | [optional] 
**KeywordId** | **Int32** | Internal keyword ID | [optional] 
**DateAdded** | **String** | Date when this keyword was added | [optional] 

## Examples

- Prepare the resource
```powershell
$Keyword = Initialize-PSOpenAPIToolsKeyword  -KeywordName null `
 -KeywordKey null `
 -KeywordId null `
 -DateAdded null
```

- Convert the resource to JSON
```powershell
$Keyword | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

