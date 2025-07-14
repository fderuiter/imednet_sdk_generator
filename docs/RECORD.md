# RECORD

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | [**STRING_32**](STRING_32.md) | Unique study key | [optional] [default to null]
**interval_id** | **INTEGER_32** | Interval ID (visit definition) that this record is associated with | [optional] [default to null]
**form_id** | **INTEGER_32** | Form ID of the form this record instance belongs to | [optional] [default to null]
**form_key** | [**STRING_32**](STRING_32.md) | Form key of the form for this record instance | [optional] [default to null]
**site_id** | **INTEGER_32** | Site ID associated with the record | [optional] [default to null]
**record_id** | **INTEGER_32** | Unique record ID | [optional] [default to null]
**record_oid** | [**STRING_32**](STRING_32.md) | Client-assigned record OID | [optional] [default to null]
**record_type** | [**STRING_32**](STRING_32.md) | Type of record (e.g., SUBJECT for subject-related forms) | [optional] [default to null]
**record_status** | [**STRING_32**](STRING_32.md) | Current status of the record (e.g., Record Incomplete, Record Complete) | [optional] [default to null]
**deleted** | **BOOLEAN** | Whether the record is marked as deleted | [optional] [default to null]
**date_created** | [**STRING_32**](STRING_32.md) | Date when this record was created | [optional] [default to null]
**date_modified** | [**STRING_32**](STRING_32.md) | Date when this record was last modified | [optional] [default to null]
**subject_id** | **INTEGER_32** | Mednet subject ID that this record is associated with | [optional] [default to null]
**subject_oid** | [**STRING_32**](STRING_32.md) | Client-assigned subject OID for the subject this record is associated with | [optional] [default to null]
**subject_key** | [**STRING_32**](STRING_32.md) | Subject display ID that this record is associated with | [optional] [default to null]
**visit_id** | **INTEGER_32** | Visit instance ID that this record is associated with (if applicable) | [optional] [default to null]
**parent_record_id** | **INTEGER_32** | Record ID of the parent record if this record is a subrecord (if applicable) | [optional] [default to null]
**keywords** | [**LIST [KEYWORD]**](Keyword.md) | List of keywords associated with the record | [optional] [default to null]
**record_data** | [**STRING_TABLE [ANY]**](ANY.md) | Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


