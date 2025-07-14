# RecordList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Metadata** | [**Metadata**](Metadata.md) |  | [optional] 
**Pagination** | [**Pagination**](Pagination.md) |  | [optional] 
**VarData** | [**Record[]**](Record.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecordList = Initialize-PSOpenAPIToolsRecordList  -Metadata null `
 -Pagination null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$RecordList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

