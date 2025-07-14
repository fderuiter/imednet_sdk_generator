# WWW::OpenAPIClient::Object::Form

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Form;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | **string** | Unique study key | [optional] 
**form_id** | **int** | Mednet Form ID | [optional] 
**form_key** | **string** | User-defined form key | [optional] 
**form_name** | **string** | Name of the form (eCRF) | [optional] 
**form_type** | **string** | Type of the form (e.g., Subject or Site) | [optional] 
**revision** | **int** | Number of modifications (revisions) of the form metadata | [optional] 
**embedded_log** | **boolean** | Whether the form has an embedded log | [optional] 
**enforce_ownership** | **boolean** | Whether the form enforces record ownership | [optional] 
**user_agreement** | **boolean** | Whether the form requires a user agreement | [optional] 
**subject_record_report** | **boolean** | Whether the form is marked as a subject record report | [optional] 
**unscheduled_visit** | **boolean** | Whether the form is included in unscheduled visits | [optional] 
**other_forms** | **boolean** | Whether the form is included in Other Forms category | [optional] 
**epro_form** | **boolean** | Whether the form is an ePRO (electronic patient reported outcome) form | [optional] 
**allow_copy** | **boolean** | Whether the form allows copying of data | [optional] 
**disabled** | **boolean** | Whether the form is soft-deleted (disabled) | [optional] 
**date_created** | **string** | Date when this form was created | [optional] 
**date_modified** | **string** | Date when this form was last modified | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


