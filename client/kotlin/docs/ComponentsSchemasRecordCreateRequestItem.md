
# ComponentsSchemasRecordCreateRequestItem

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **formKey** | **kotlin.String** | Form key identifying the eCRF to create or update |  |
| **&#x60;data&#x60;** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | Key-value pairs of field names and values for the record data |  |
| **formId** | **kotlin.Int** | Form ID identifying the eCRF to create or update (alternative to formKey) |  [optional] |
| **siteName** | **kotlin.String** | Name of the site where the record should be created (for new subject registration) |  [optional] |
| **siteId** | **kotlin.Int** | Site ID for the record (alternative to siteName) |  [optional] |
| **subjectKey** | **kotlin.String** | Subject identifier (display ID) for which to create or update the record |  [optional] |
| **subjectId** | **kotlin.Int** | Subject ID for which to create or update the record (alternative to subjectKey) |  [optional] |
| **subjectOid** | **kotlin.String** | Subject OID for which to create or update the record (alternative to subjectKey) |  [optional] |
| **intervalName** | **kotlin.String** | Name of the interval (visit) for a scheduled record update |  [optional] |
| **intervalId** | **kotlin.Int** | Interval ID for a scheduled record update (alternative to intervalName) |  [optional] |
| **recordId** | **kotlin.Int** | Record ID for updating an existing unscheduled record (if applicable) |  [optional] |
| **recordOid** | **kotlin.String** | Record OID for updating an existing unscheduled record (if applicable) |  [optional] |



