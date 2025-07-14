# ComponentsSchemasIntervalFormsItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FormId** | **Int32** | Form ID scheduled in the interval | [optional] 
**FormKey** | **String** | Form key scheduled in the interval | [optional] 
**FormName** | **String** | Form name scheduled in the interval | [optional] 

## Examples

- Prepare the resource
```powershell
$ComponentsSchemasIntervalFormsItem = Initialize-PSOpenAPIToolsComponentsSchemasIntervalFormsItem  -FormId null `
 -FormKey null `
 -FormName null
```

- Convert the resource to JSON
```powershell
$ComponentsSchemasIntervalFormsItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

