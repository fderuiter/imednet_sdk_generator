# RecordRevision
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**RecordRevisionId** | **Int32** | Unique system identifier for the record revision | [optional] 
**RecordId** | **Int32** | Unique system identifier of the related record | [optional] 
**RecordOid** | **String** | Client-assigned record OID (if any) | [optional] 
**RecordRevision** | **Int32** | Revision number of the record (version of the record status) | [optional] 
**DataRevision** | **Int32** | Revision number of the data within the record | [optional] 
**RecordStatus** | **String** | Status of the record at this revision (user-defined status label) | [optional] 
**SubjectId** | **Int32** | Mednet subject ID related to the record | [optional] 
**SubjectOid** | **String** | Client-assigned subject OID related to the record | [optional] 
**SubjectKey** | **String** | Subject display ID related to the record | [optional] 
**SiteId** | **Int32** | Site ID related to the record | [optional] 
**FormKey** | **String** | Form key of the form that the record belongs to | [optional] 
**IntervalId** | **Int32** | Interval ID (visit definition) related to the record | [optional] 
**Role** | **String** | Role name of the user who saved the record revision | [optional] 
**User** | **String** | Username of the user who saved the record revision | [optional] 
**ReasonForChange** | **String** | Reason for change, if provided (for audit trail) | [optional] 
**Deleted** | **Boolean** | Whether the record was deleted in this revision | [optional] 
**DateCreated** | **String** | Date when this record revision was created | [optional] 

## Examples

- Prepare the resource
```powershell
$RecordRevision = Initialize-PSOpenAPIToolsRecordRevision  -StudyKey null `
 -RecordRevisionId null `
 -RecordId null `
 -RecordOid null `
 -RecordRevision null `
 -DataRevision null `
 -RecordStatus null `
 -SubjectId null `
 -SubjectOid null `
 -SubjectKey null `
 -SiteId null `
 -FormKey null `
 -IntervalId null `
 -Role null `
 -User null `
 -ReasonForChange null `
 -Deleted null `
 -DateCreated null
```

- Convert the resource to JSON
```powershell
$RecordRevision | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

