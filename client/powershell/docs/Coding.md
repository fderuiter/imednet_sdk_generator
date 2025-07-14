# Coding
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**SiteName** | **String** | Name of the site associated with the coded data | [optional] 
**SiteId** | **Int32** | Site ID associated with the coded data | [optional] 
**SubjectId** | **Int32** | Subject ID associated with the coded data | [optional] 
**SubjectKey** | **String** | Subject key (display ID) associated with the coded data | [optional] 
**FormId** | **Int32** | Form ID where the coded data originates | [optional] 
**FormName** | **String** | Name of the form where the coded data originates | [optional] 
**FormKey** | **String** | Form key where the coded data originates | [optional] 
**Revision** | **Int32** | Revision number of the coding entry | [optional] 
**RecordId** | **Int32** | Record ID associated with the coded data | [optional] 
**Variable** | **String** | Variable name (field) that was coded | [optional] 
**Value** | **String** | Original value entered that required coding | [optional] 
**CodingId** | **Int32** | Mednet coding ID | [optional] 
**Code** | **String** | Standardized code assigned (e.g., dictionary term) | [optional] 
**CodedBy** | **String** | Name of the user who performed the coding | [optional] 
**Reason** | **String** | Reason for coding or any notes on changes | [optional] 
**DictionaryName** | **String** | Name of the dictionary used (e.g., MedDRA) | [optional] 
**DictionaryVersion** | **String** | Version of the dictionary used | [optional] 
**DateCoded** | **String** | Date when the coding was performed | [optional] 

## Examples

- Prepare the resource
```powershell
$Coding = Initialize-PSOpenAPIToolsCoding  -StudyKey null `
 -SiteName null `
 -SiteId null `
 -SubjectId null `
 -SubjectKey null `
 -FormId null `
 -FormName null `
 -FormKey null `
 -Revision null `
 -RecordId null `
 -Variable null `
 -Value null `
 -CodingId null `
 -Code null `
 -CodedBy null `
 -Reason null `
 -DictionaryName null `
 -DictionaryVersion null `
 -DateCoded null
```

- Convert the resource to JSON
```powershell
$Coding | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

