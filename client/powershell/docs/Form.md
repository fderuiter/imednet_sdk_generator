# Form
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**FormId** | **Int32** | Mednet Form ID | [optional] 
**FormKey** | **String** | User-defined form key | [optional] 
**FormName** | **String** | Name of the form (eCRF) | [optional] 
**FormType** | **String** | Type of the form (e.g., Subject or Site) | [optional] 
**Revision** | **Int32** | Number of modifications (revisions) of the form metadata | [optional] 
**EmbeddedLog** | **Boolean** | Whether the form has an embedded log | [optional] 
**EnforceOwnership** | **Boolean** | Whether the form enforces record ownership | [optional] 
**UserAgreement** | **Boolean** | Whether the form requires a user agreement | [optional] 
**SubjectRecordReport** | **Boolean** | Whether the form is marked as a subject record report | [optional] 
**UnscheduledVisit** | **Boolean** | Whether the form is included in unscheduled visits | [optional] 
**OtherForms** | **Boolean** | Whether the form is included in Other Forms category | [optional] 
**EproForm** | **Boolean** | Whether the form is an ePRO (electronic patient reported outcome) form | [optional] 
**AllowCopy** | **Boolean** | Whether the form allows copying of data | [optional] 
**Disabled** | **Boolean** | Whether the form is soft-deleted (disabled) | [optional] 
**DateCreated** | **String** | Date when this form was created | [optional] 
**DateModified** | **String** | Date when this form was last modified | [optional] 

## Examples

- Prepare the resource
```powershell
$Form = Initialize-PSOpenAPIToolsForm  -StudyKey null `
 -FormId null `
 -FormKey null `
 -FormName null `
 -FormType null `
 -Revision null `
 -EmbeddedLog null `
 -EnforceOwnership null `
 -UserAgreement null `
 -SubjectRecordReport null `
 -UnscheduledVisit null `
 -OtherForms null `
 -EproForm null `
 -AllowCopy null `
 -Disabled null `
 -DateCreated null `
 -DateModified null
```

- Convert the resource to JSON
```powershell
$Form | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

