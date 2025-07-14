# WWW::OpenAPIClient::Object::RecordRevision

## Load the model package
```perl
use WWW::OpenAPIClient::Object::RecordRevision;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | **string** | Unique study key | [optional] 
**record_revision_id** | **int** | Unique system identifier for the record revision | [optional] 
**record_id** | **int** | Unique system identifier of the related record | [optional] 
**record_oid** | **string** | Client-assigned record OID (if any) | [optional] 
**record_revision** | **int** | Revision number of the record (version of the record status) | [optional] 
**data_revision** | **int** | Revision number of the data within the record | [optional] 
**record_status** | **string** | Status of the record at this revision (user-defined status label) | [optional] 
**subject_id** | **int** | Mednet subject ID related to the record | [optional] 
**subject_oid** | **string** | Client-assigned subject OID related to the record | [optional] 
**subject_key** | **string** | Subject display ID related to the record | [optional] 
**site_id** | **int** | Site ID related to the record | [optional] 
**form_key** | **string** | Form key of the form that the record belongs to | [optional] 
**interval_id** | **int** | Interval ID (visit definition) related to the record | [optional] 
**role** | **string** | Role name of the user who saved the record revision | [optional] 
**user** | **string** | Username of the user who saved the record revision | [optional] 
**reason_for_change** | **string** | Reason for change, if provided (for audit trail) | [optional] 
**deleted** | **boolean** | Whether the record was deleted in this revision | [optional] 
**date_created** | **string** | Date when this record revision was created | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


