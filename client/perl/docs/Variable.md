# WWW::OpenAPIClient::Object::Variable

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Variable;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**study_key** | **string** | Unique study key | [optional] 
**variable_id** | **int** | Mednet variable ID | [optional] 
**variable_type** | **string** | Type of the variable (field type), e.g., RADIO, TEXT, etc. | [optional] 
**variable_name** | **string** | Name of the variable (question text or label) | [optional] 
**sequence** | **int** | Sequence of the variable on the form | [optional] 
**revision** | **int** | Number of modifications of the variable (via form metadata revisions) | [optional] 
**disabled** | **boolean** | Whether the variable is marked as disabled (deleted) | [optional] 
**date_created** | **string** | Date when this variable was created | [optional] 
**date_modified** | **string** | Date when this variable was last modified | [optional] 
**form_id** | **int** | ID of the form that this variable belongs to | [optional] 
**variable_oid** | **string** | Client-assigned variable OID | [optional] 
**deleted** | **boolean** | Whether the variable is marked as deleted | [optional] 
**form_key** | **string** | Form key of the form that this variable belongs to | [optional] 
**form_name** | **string** | Name of the form that this variable belongs to | [optional] 
**label** | **string** | User-defined identifier (field name) for the variable | [optional] 
**blinded** | **boolean** | Whether the variable is flagged as blinded (hidden in certain contexts) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


