# Metadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | HTTP status of the response (e.g., OK or ERROR) | [optional] 
**Method** | **String** | HTTP method of the request | [optional] 
**Path** | **String** | Requested URI path | [optional] 
**Timestamp** | **System.DateTime** | Timestamp when response was generated | [optional] 
**VarError** | [**ComponentsSchemasMetadataError**](ComponentsSchemasMetadataError.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Metadata = Initialize-PSOpenAPIToolsMetadata  -Status null `
 -Method null `
 -Path null `
 -Timestamp null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$Metadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

