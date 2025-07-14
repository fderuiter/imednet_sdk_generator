# FORM

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | [**STRING_32**](STRING_32.md) | Unique study key | [optional] [default to null]
**form_id** | **INTEGER_32** | Mednet Form ID | [optional] [default to null]
**form_key** | [**STRING_32**](STRING_32.md) | User-defined form key | [optional] [default to null]
**form_name** | [**STRING_32**](STRING_32.md) | Name of the form (eCRF) | [optional] [default to null]
**form_type** | [**STRING_32**](STRING_32.md) | Type of the form (e.g., Subject or Site) | [optional] [default to null]
**revision** | **INTEGER_32** | Number of modifications (revisions) of the form metadata | [optional] [default to null]
**embedded_log** | **BOOLEAN** | Whether the form has an embedded log | [optional] [default to null]
**enforce_ownership** | **BOOLEAN** | Whether the form enforces record ownership | [optional] [default to null]
**user_agreement** | **BOOLEAN** | Whether the form requires a user agreement | [optional] [default to null]
**subject_record_report** | **BOOLEAN** | Whether the form is marked as a subject record report | [optional] [default to null]
**unscheduled_visit** | **BOOLEAN** | Whether the form is included in unscheduled visits | [optional] [default to null]
**other_forms** | **BOOLEAN** | Whether the form is included in Other Forms category | [optional] [default to null]
**epro_form** | **BOOLEAN** | Whether the form is an ePRO (electronic patient reported outcome) form | [optional] [default to null]
**allow_copy** | **BOOLEAN** | Whether the form allows copying of data | [optional] [default to null]
**disabled** | **BOOLEAN** | Whether the form is soft-deleted (disabled) | [optional] [default to null]
**date_created** | [**STRING_32**](STRING_32.md) | Date when this form was created | [optional] [default to null]
**date_modified** | [**STRING_32**](STRING_32.md) | Date when this form was last modified | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


