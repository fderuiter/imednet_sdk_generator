# WWW::OpenAPIClient::Object::Query

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Query;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | **string** | Unique study key | [optional] 
**subject_id** | **int** | Mednet subject ID associated with the query (if applicable) | [optional] 
**subject_oid** | **string** | Client-assigned subject OID (if applicable) | [optional] 
**annotation_type** | **string** | Category/type of the query (e.g., subject, record, question) | [optional] 
**annotation_id** | **int** | Unique system identifier for the query | [optional] 
**type** | **string** | System text identifier for the query type/location (subject, record, question) | [optional] 
**description** | **string** | Description of the query (e.g., reason or context) | [optional] 
**record_id** | **int** | Record ID associated with the query (if applicable) | [optional] 
**variable** | **string** | Variable name (field) associated with the query (if applicable) | [optional] 
**subject_key** | **string** | Subject display ID associated with the query (if applicable) | [optional] 
**date_created** | **string** | Date when the query was created | [optional] 
**date_modified** | **string** | Date when the query was last modified | [optional] 
**query_comments** | [**ARRAY[QueryComment]**](QueryComment.md) | History of comments/actions on the query | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


