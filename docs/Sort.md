# Sort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Property** | **String** | Name of the property by which the result is sorted | [optional] 
**Direction** | **String** | Sort direction (ASC or DESC) | [optional] 

## Examples

- Prepare the resource
```powershell
$Sort = Initialize-PSOpenAPIToolsSort  -Property null `
 -Direction null
```

- Convert the resource to JSON
```powershell
$Sort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

