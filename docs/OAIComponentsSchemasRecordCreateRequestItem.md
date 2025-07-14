# OAIComponentsSchemasRecordCreateRequestItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formKey** | **NSString*** | Form key identifying the eCRF to create or update | 
**formId** | **NSNumber*** | Form ID identifying the eCRF to create or update (alternative to formKey) | [optional] 
**siteName** | **NSString*** | Name of the site where the record should be created (for new subject registration) | [optional] 
**siteId** | **NSNumber*** | Site ID for the record (alternative to siteName) | [optional] 
**subjectKey** | **NSString*** | Subject identifier (display ID) for which to create or update the record | [optional] 
**subjectId** | **NSNumber*** | Subject ID for which to create or update the record (alternative to subjectKey) | [optional] 
**subjectOid** | **NSString*** | Subject OID for which to create or update the record (alternative to subjectKey) | [optional] 
**intervalName** | **NSString*** | Name of the interval (visit) for a scheduled record update | [optional] 
**intervalId** | **NSNumber*** | Interval ID for a scheduled record update (alternative to intervalName) | [optional] 
**recordId** | **NSNumber*** | Record ID for updating an existing unscheduled record (if applicable) | [optional] 
**recordOid** | **NSString*** | Record OID for updating an existing unscheduled record (if applicable) | [optional] 
**data** | [**NSDictionary&lt;OAIAnyType&gt;***](OAIAnyType.md) | Key-value pairs of field names and values for the record data | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


