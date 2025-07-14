# RecordRevisionList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Metadata** | [**Metadata**](Metadata.md) |  | [optional] 
**Pagination** | [**Pagination**](Pagination.md) |  | [optional] 
**VarData** | [**RecordRevision[]**](RecordRevision.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecordRevisionList = Initialize-PSOpenAPIToolsRecordRevisionList  -Metadata null `
 -Pagination null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$RecordRevisionList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

