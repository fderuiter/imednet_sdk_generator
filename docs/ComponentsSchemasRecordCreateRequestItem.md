# ComponentsSchemasRecordCreateRequestItem


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formKey** | **String** | Form key identifying the eCRF to create or update | [default to nothing]
**formId** | **Int64** | Form ID identifying the eCRF to create or update (alternative to formKey) | [optional] [default to nothing]
**siteName** | **String** | Name of the site where the record should be created (for new subject registration) | [optional] [default to nothing]
**siteId** | **Int64** | Site ID for the record (alternative to siteName) | [optional] [default to nothing]
**subjectKey** | **String** | Subject identifier (display ID) for which to create or update the record | [optional] [default to nothing]
**subjectId** | **Int64** | Subject ID for which to create or update the record (alternative to subjectKey) | [optional] [default to nothing]
**subjectOid** | **String** | Subject OID for which to create or update the record (alternative to subjectKey) | [optional] [default to nothing]
**intervalName** | **String** | Name of the interval (visit) for a scheduled record update | [optional] [default to nothing]
**intervalId** | **Int64** | Interval ID for a scheduled record update (alternative to intervalName) | [optional] [default to nothing]
**recordId** | **Int64** | Record ID for updating an existing unscheduled record (if applicable) | [optional] [default to nothing]
**recordOid** | **String** | Record OID for updating an existing unscheduled record (if applicable) | [optional] [default to nothing]
**data** | **Dict{String, Any}** | Key-value pairs of field names and values for the record data | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


