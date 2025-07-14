# Study
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SponsorKey** | **String** | Sponsor key that this study belongs to | [optional] 
**StudyKey** | **String** | Unique study key | [optional] 
**StudyId** | **Int32** | Mednet study ID (internal numeric identifier) | [optional] 
**StudyName** | **String** | Name of the study | [optional] 
**StudyDescription** | **String** | Description of the study | [optional] 
**StudyType** | **String** | Type of study (e.g., STUDY) | [optional] 
**DateCreated** | **String** | Date when the study record was created | [optional] 
**DateModified** | **String** | Date when the study record was last modified | [optional] 

## Examples

- Prepare the resource
```powershell
$Study = Initialize-PSOpenAPIToolsStudy  -SponsorKey null `
 -StudyKey null `
 -StudyId null `
 -StudyName null `
 -StudyDescription null `
 -StudyType null `
 -DateCreated null `
 -DateModified null
```

- Convert the resource to JSON
```powershell
$Study | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

