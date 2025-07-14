# Record
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**IntervalId** | **Int32** | Interval ID (visit definition) that this record is associated with | [optional] 
**FormId** | **Int32** | Form ID of the form this record instance belongs to | [optional] 
**FormKey** | **String** | Form key of the form for this record instance | [optional] 
**SiteId** | **Int32** | Site ID associated with the record | [optional] 
**RecordId** | **Int32** | Unique record ID | [optional] 
**RecordOid** | **String** | Client-assigned record OID | [optional] 
**RecordType** | **String** | Type of record (e.g., SUBJECT for subject-related forms) | [optional] 
**RecordStatus** | **String** | Current status of the record (e.g., Record Incomplete, Record Complete) | [optional] 
**Deleted** | **Boolean** | Whether the record is marked as deleted | [optional] 
**DateCreated** | **String** | Date when this record was created | [optional] 
**DateModified** | **String** | Date when this record was last modified | [optional] 
**SubjectId** | **Int32** | Mednet subject ID that this record is associated with | [optional] 
**SubjectOid** | **String** | Client-assigned subject OID for the subject this record is associated with | [optional] 
**SubjectKey** | **String** | Subject display ID that this record is associated with | [optional] 
**VisitId** | **Int32** | Visit instance ID that this record is associated with (if applicable) | [optional] 
**ParentRecordId** | **Int32** | Record ID of the parent record if this record is a subrecord (if applicable) | [optional] 
**Keywords** | [**Keyword[]**](Keyword.md) | List of keywords associated with the record | [optional] 
**RecordData** | [**System.Collections.Hashtable**](AnyType.md) | Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. | [optional] 

## Examples

- Prepare the resource
```powershell
$Record = Initialize-PSOpenAPIToolsRecord  -StudyKey null `
 -IntervalId null `
 -FormId null `
 -FormKey null `
 -SiteId null `
 -RecordId null `
 -RecordOid null `
 -RecordType null `
 -RecordStatus null `
 -Deleted null `
 -DateCreated null `
 -DateModified null `
 -SubjectId null `
 -SubjectOid null `
 -SubjectKey null `
 -VisitId null `
 -ParentRecordId null `
 -Keywords null `
 -RecordData null
```

- Convert the resource to JSON
```powershell
$Record | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

