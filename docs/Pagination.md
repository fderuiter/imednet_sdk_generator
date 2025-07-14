# Pagination
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CurrentPage** | **Int32** | Current index page returned | [optional] 
**Size** | **Int32** | Number of items per page returned | [optional] 
**TotalPages** | **Int32** | Total number of pages available | [optional] 
**TotalElements** | **Int32** | Total number of elements (items) available | [optional] 
**Sort** | [**Sort[]**](Sort.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Pagination = Initialize-PSOpenAPIToolsPagination  -CurrentPage null `
 -Size null `
 -TotalPages null `
 -TotalElements null `
 -Sort null
```

- Convert the resource to JSON
```powershell
$Pagination | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

