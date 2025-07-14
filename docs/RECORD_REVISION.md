# RECORD_REVISION

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | [**STRING_32**](STRING_32.md) | Unique study key | [optional] [default to null]
**record_revision_id** | **INTEGER_32** | Unique system identifier for the record revision | [optional] [default to null]
**record_id** | **INTEGER_32** | Unique system identifier of the related record | [optional] [default to null]
**record_oid** | [**STRING_32**](STRING_32.md) | Client-assigned record OID (if any) | [optional] [default to null]
**record_revision** | **INTEGER_32** | Revision number of the record (version of the record status) | [optional] [default to null]
**data_revision** | **INTEGER_32** | Revision number of the data within the record | [optional] [default to null]
**record_status** | [**STRING_32**](STRING_32.md) | Status of the record at this revision (user-defined status label) | [optional] [default to null]
**subject_id** | **INTEGER_32** | Mednet subject ID related to the record | [optional] [default to null]
**subject_oid** | [**STRING_32**](STRING_32.md) | Client-assigned subject OID related to the record | [optional] [default to null]
**subject_key** | [**STRING_32**](STRING_32.md) | Subject display ID related to the record | [optional] [default to null]
**site_id** | **INTEGER_32** | Site ID related to the record | [optional] [default to null]
**form_key** | [**STRING_32**](STRING_32.md) | Form key of the form that the record belongs to | [optional] [default to null]
**interval_id** | **INTEGER_32** | Interval ID (visit definition) related to the record | [optional] [default to null]
**role** | [**STRING_32**](STRING_32.md) | Role name of the user who saved the record revision | [optional] [default to null]
**user** | [**STRING_32**](STRING_32.md) | Username of the user who saved the record revision | [optional] [default to null]
**reason_for_change** | [**STRING_32**](STRING_32.md) | Reason for change, if provided (for audit trail) | [optional] [default to null]
**deleted** | **BOOLEAN** | Whether the record was deleted in this revision | [optional] [default to null]
**date_created** | [**STRING_32**](STRING_32.md) | Date when this record revision was created | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


