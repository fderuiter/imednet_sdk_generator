# SUBJECT

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | [**STRING_32**](STRING_32.md) | Unique study key | [optional] [default to null]
**subject_id** | **INTEGER_32** | Mednet subject ID (internal numeric ID) | [optional] [default to null]
**subject_oid** | [**STRING_32**](STRING_32.md) | Client-assigned subject object identifier (OID) | [optional] [default to null]
**subject_key** | [**STRING_32**](STRING_32.md) | Protocol-assigned subject identifier (display ID) | [optional] [default to null]
**subject_status** | [**STRING_32**](STRING_32.md) | Current status of the subject (e.g., Enrolled) | [optional] [default to null]
**site_id** | **INTEGER_32** | Mednet site ID the subject is associated with | [optional] [default to null]
**site_name** | [**STRING_32**](STRING_32.md) | Name of the site the subject is associated with | [optional] [default to null]
**deleted** | **BOOLEAN** | Whether the subject is marked as deleted | [optional] [default to null]
**enrollment_start_date** | [**STRING_32**](STRING_32.md) | Subject’s enrollment start date | [optional] [default to null]
**date_created** | [**STRING_32**](STRING_32.md) | Date when this subject record was created | [optional] [default to null]
**date_modified** | [**STRING_32**](STRING_32.md) | Date when this subject record was last modified | [optional] [default to null]
**keywords** | [**LIST [KEYWORD]**](Keyword.md) | List of keywords associated with the subject | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


