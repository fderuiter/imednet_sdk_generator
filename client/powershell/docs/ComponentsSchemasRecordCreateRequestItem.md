# ComponentsSchemasRecordCreateRequestItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FormKey** | **String** | Form key identifying the eCRF to create or update | 
**FormId** | **Int32** | Form ID identifying the eCRF to create or update (alternative to formKey) | [optional] 
**SiteName** | **String** | Name of the site where the record should be created (for new subject registration) | [optional] 
**SiteId** | **Int32** | Site ID for the record (alternative to siteName) | [optional] 
**SubjectKey** | **String** | Subject identifier (display ID) for which to create or update the record | [optional] 
**SubjectId** | **Int32** | Subject ID for which to create or update the record (alternative to subjectKey) | [optional] 
**SubjectOid** | **String** | Subject OID for which to create or update the record (alternative to subjectKey) | [optional] 
**IntervalName** | **String** | Name of the interval (visit) for a scheduled record update | [optional] 
**IntervalId** | **Int32** | Interval ID for a scheduled record update (alternative to intervalName) | [optional] 
**RecordId** | **Int32** | Record ID for updating an existing unscheduled record (if applicable) | [optional] 
**RecordOid** | **String** | Record OID for updating an existing unscheduled record (if applicable) | [optional] 
**VarData** | [**System.Collections.Hashtable**](AnyType.md) | Key-value pairs of field names and values for the record data | 

## Examples

- Prepare the resource
```powershell
$ComponentsSchemasRecordCreateRequestItem = Initialize-PSOpenAPIToolsComponentsSchemasRecordCreateRequestItem  -FormKey null `
 -FormId null `
 -SiteName null `
 -SiteId null `
 -SubjectKey null `
 -SubjectId null `
 -SubjectOid null `
 -IntervalName null `
 -IntervalId null `
 -RecordId null `
 -RecordOid null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ComponentsSchemasRecordCreateRequestItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

