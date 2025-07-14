

# ComponentsSchemasRecordCreateRequestItem

The class is defined in **[ComponentsSchemasRecordCreateRequestItem.java](../../src/main/java/org/openapitools/model/ComponentsSchemasRecordCreateRequestItem.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formKey** | `String` | Form key identifying the eCRF to create or update | 
**formId** | `Integer` | Form ID identifying the eCRF to create or update (alternative to formKey) |  [optional property]
**siteName** | `String` | Name of the site where the record should be created (for new subject registration) |  [optional property]
**siteId** | `Integer` | Site ID for the record (alternative to siteName) |  [optional property]
**subjectKey** | `String` | Subject identifier (display ID) for which to create or update the record |  [optional property]
**subjectId** | `Integer` | Subject ID for which to create or update the record (alternative to subjectKey) |  [optional property]
**subjectOid** | `String` | Subject OID for which to create or update the record (alternative to subjectKey) |  [optional property]
**intervalName** | `String` | Name of the interval (visit) for a scheduled record update |  [optional property]
**intervalId** | `Integer` | Interval ID for a scheduled record update (alternative to intervalName) |  [optional property]
**recordId** | `Integer` | Record ID for updating an existing unscheduled record (if applicable) |  [optional property]
**recordOid** | `String` | Record OID for updating an existing unscheduled record (if applicable) |  [optional property]
**data** | `Map&lt;String, Object&gt;` | Key-value pairs of field names and values for the record data | 














