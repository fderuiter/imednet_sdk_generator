# ComponentsSchemasRecordCreateRequestItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formKey** | **String** | Form key identifying the eCRF to create or update | 
**formId** | **Int** | Form ID identifying the eCRF to create or update (alternative to formKey) | [optional] 
**siteName** | **String** | Name of the site where the record should be created (for new subject registration) | [optional] 
**siteId** | **Int** | Site ID for the record (alternative to siteName) | [optional] 
**subjectKey** | **String** | Subject identifier (display ID) for which to create or update the record | [optional] 
**subjectId** | **Int** | Subject ID for which to create or update the record (alternative to subjectKey) | [optional] 
**subjectOid** | **String** | Subject OID for which to create or update the record (alternative to subjectKey) | [optional] 
**intervalName** | **String** | Name of the interval (visit) for a scheduled record update | [optional] 
**intervalId** | **Int** | Interval ID for a scheduled record update (alternative to intervalName) | [optional] 
**recordId** | **Int** | Record ID for updating an existing unscheduled record (if applicable) | [optional] 
**recordOid** | **String** | Record OID for updating an existing unscheduled record (if applicable) | [optional] 
**data** | **[String: AnyCodable]** | Key-value pairs of field names and values for the record data | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


