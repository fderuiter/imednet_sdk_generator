# WWW::OpenAPIClient::Object::Visit

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Visit;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | **string** | Unique study key | [optional] 
**visit_id** | **int** | Unique system identifier for the subject visit instance | [optional] 
**interval_id** | **int** | Unique system identifier of the interval definition for this visit | [optional] 
**interval_name** | **string** | Name of the interval (visit) for this visit instance | [optional] 
**subject_id** | **int** | Mednet subject ID of the subject | [optional] 
**subject_key** | **string** | Protocol-assigned subject identifier | [optional] 
**start_date** | **string** | Start date of the visit window (in YYYY-MM-DD format) | [optional] 
**end_date** | **string** | End date of the visit window (in YYYY-MM-DD format) | [optional] 
**due_date** | **string** | Due date of the visit (in YYYY-MM-DD format), if applicable | [optional] 
**visit_date** | **string** | Actual date the visit took place (in YYYY-MM-DD format) | [optional] 
**visit_date_form** | **string** | Name of the form used to capture the actual visit date | [optional] 
**visit_date_question** | **string** | Variable name of the field capturing the actual visit date | [optional] 
**deleted** | **boolean** | Whether the visit instance is marked as deleted | [optional] 
**date_created** | **string** | Date when this visit record was created | [optional] 
**date_modified** | **string** | Date when this visit record was last modified | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


