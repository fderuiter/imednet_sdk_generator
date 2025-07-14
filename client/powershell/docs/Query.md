# Query
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**SubjectId** | **Int32** | Mednet subject ID associated with the query (if applicable) | [optional] 
**SubjectOid** | **String** | Client-assigned subject OID (if applicable) | [optional] 
**AnnotationType** | **String** | Category/type of the query (e.g., subject, record, question) | [optional] 
**AnnotationId** | **Int32** | Unique system identifier for the query | [optional] 
**Type** | **String** | System text identifier for the query type/location (subject, record, question) | [optional] 
**Description** | **String** | Description of the query (e.g., reason or context) | [optional] 
**RecordId** | **Int32** | Record ID associated with the query (if applicable) | [optional] 
**Variable** | **String** | Variable name (field) associated with the query (if applicable) | [optional] 
**SubjectKey** | **String** | Subject display ID associated with the query (if applicable) | [optional] 
**DateCreated** | **String** | Date when the query was created | [optional] 
**DateModified** | **String** | Date when the query was last modified | [optional] 
**QueryComments** | [**QueryComment[]**](QueryComment.md) | History of comments/actions on the query | [optional] 

## Examples

- Prepare the resource
```powershell
$Query = Initialize-PSOpenAPIToolsQuery  -StudyKey null `
 -SubjectId null `
 -SubjectOid null `
 -AnnotationType null `
 -AnnotationId null `
 -Type null `
 -Description null `
 -RecordId null `
 -Variable null `
 -SubjectKey null `
 -DateCreated null `
 -DateModified null `
 -QueryComments null
```

- Convert the resource to JSON
```powershell
$Query | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

