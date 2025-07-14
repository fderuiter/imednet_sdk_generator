# Visit
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**VisitId** | **Int32** | Unique system identifier for the subject visit instance | [optional] 
**IntervalId** | **Int32** | Unique system identifier of the interval definition for this visit | [optional] 
**IntervalName** | **String** | Name of the interval (visit) for this visit instance | [optional] 
**SubjectId** | **Int32** | Mednet subject ID of the subject | [optional] 
**SubjectKey** | **String** | Protocol-assigned subject identifier | [optional] 
**StartDate** | **String** | Start date of the visit window (in YYYY-MM-DD format) | [optional] 
**EndDate** | **String** | End date of the visit window (in YYYY-MM-DD format) | [optional] 
**DueDate** | **String** | Due date of the visit (in YYYY-MM-DD format), if applicable | [optional] 
**VisitDate** | **String** | Actual date the visit took place (in YYYY-MM-DD format) | [optional] 
**VisitDateForm** | **String** | Name of the form used to capture the actual visit date | [optional] 
**VisitDateQuestion** | **String** | Variable name of the field capturing the actual visit date | [optional] 
**Deleted** | **Boolean** | Whether the visit instance is marked as deleted | [optional] 
**DateCreated** | **String** | Date when this visit record was created | [optional] 
**DateModified** | **String** | Date when this visit record was last modified | [optional] 

## Examples

- Prepare the resource
```powershell
$Visit = Initialize-PSOpenAPIToolsVisit  -StudyKey null `
 -VisitId null `
 -IntervalId null `
 -IntervalName null `
 -SubjectId null `
 -SubjectKey null `
 -StartDate null `
 -EndDate null `
 -DueDate null `
 -VisitDate null `
 -VisitDateForm null `
 -VisitDateQuestion null `
 -Deleted null `
 -DateCreated null `
 -DateModified null
```

- Convert the resource to JSON
```powershell
$Visit | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

