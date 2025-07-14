# # ComponentsSchemasRecordCreateRequestItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**form_key** | **string** | Form key identifying the eCRF to create or update |
**form_id** | **int** | Form ID identifying the eCRF to create or update (alternative to formKey) | [optional]
**site_name** | **string** | Name of the site where the record should be created (for new subject registration) | [optional]
**site_id** | **int** | Site ID for the record (alternative to siteName) | [optional]
**subject_key** | **string** | Subject identifier (display ID) for which to create or update the record | [optional]
**subject_id** | **int** | Subject ID for which to create or update the record (alternative to subjectKey) | [optional]
**subject_oid** | **string** | Subject OID for which to create or update the record (alternative to subjectKey) | [optional]
**interval_name** | **string** | Name of the interval (visit) for a scheduled record update | [optional]
**interval_id** | **int** | Interval ID for a scheduled record update (alternative to intervalName) | [optional]
**record_id** | **int** | Record ID for updating an existing unscheduled record (if applicable) | [optional]
**record_oid** | **string** | Record OID for updating an existing unscheduled record (if applicable) | [optional]
**data** | **array<string,mixed>** | Key-value pairs of field names and values for the record data |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
