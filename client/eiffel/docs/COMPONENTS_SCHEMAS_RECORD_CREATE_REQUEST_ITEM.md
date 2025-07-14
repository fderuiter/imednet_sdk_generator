# COMPONENTS_SCHEMAS_RECORD_CREATE_REQUEST_ITEM

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**form_key** | [**STRING_32**](STRING_32.md) | Form key identifying the eCRF to create or update | [default to null]
**form_id** | **INTEGER_32** | Form ID identifying the eCRF to create or update (alternative to formKey) | [optional] [default to null]
**site_name** | [**STRING_32**](STRING_32.md) | Name of the site where the record should be created (for new subject registration) | [optional] [default to null]
**site_id** | **INTEGER_32** | Site ID for the record (alternative to siteName) | [optional] [default to null]
**subject_key** | [**STRING_32**](STRING_32.md) | Subject identifier (display ID) for which to create or update the record | [optional] [default to null]
**subject_id** | **INTEGER_32** | Subject ID for which to create or update the record (alternative to subjectKey) | [optional] [default to null]
**subject_oid** | [**STRING_32**](STRING_32.md) | Subject OID for which to create or update the record (alternative to subjectKey) | [optional] [default to null]
**interval_name** | [**STRING_32**](STRING_32.md) | Name of the interval (visit) for a scheduled record update | [optional] [default to null]
**interval_id** | **INTEGER_32** | Interval ID for a scheduled record update (alternative to intervalName) | [optional] [default to null]
**record_id** | **INTEGER_32** | Record ID for updating an existing unscheduled record (if applicable) | [optional] [default to null]
**record_oid** | [**STRING_32**](STRING_32.md) | Record OID for updating an existing unscheduled record (if applicable) | [optional] [default to null]
**data** | [**STRING_TABLE [ANY]**](ANY.md) | Key-value pairs of field names and values for the record data | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


