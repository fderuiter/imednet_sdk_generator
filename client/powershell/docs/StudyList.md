# StudyList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Metadata** | [**Metadata**](Metadata.md) |  | [optional] 
**Pagination** | [**Pagination**](Pagination.md) |  | [optional] 
**VarData** | [**Study[]**](Study.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StudyList = Initialize-PSOpenAPIToolsStudyList  -Metadata null `
 -Pagination null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$StudyList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

