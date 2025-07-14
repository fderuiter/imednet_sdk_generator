# QueryComment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sequence** | **Int32** | Sequence number of the comment/action in the query history | [optional] 
**AnnotationStatus** | **String** | Status of the query after this comment (e.g., Open, Closed) | [optional] 
**User** | **String** | Username of the user who made the comment or action | [optional] 
**Comment** | **String** | Text of the comment | [optional] 
**Closed** | **Boolean** | Whether the query was marked closed at this step | [optional] 
**Date** | **String** | Date of the comment or action | [optional] 

## Examples

- Prepare the resource
```powershell
$QueryComment = Initialize-PSOpenAPIToolsQueryComment  -Sequence null `
 -AnnotationStatus null `
 -User null `
 -Comment null `
 -Closed null `
 -Date null
```

- Convert the resource to JSON
```powershell
$QueryComment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

