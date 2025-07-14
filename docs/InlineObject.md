# InlineObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Metadata** | [**Metadata**](Metadata.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InlineObject = Initialize-PSOpenAPIToolsInlineObject  -Metadata null
```

- Convert the resource to JSON
```powershell
$InlineObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

