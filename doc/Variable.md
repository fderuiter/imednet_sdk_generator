# openapi.model.Variable

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **String** | Unique study key | [optional] 
**variableId** | **int** | Mednet variable ID | [optional] 
**variableType** | **String** | Type of the variable (field type), e.g., RADIO, TEXT, etc. | [optional] 
**variableName** | **String** | Name of the variable (question text or label) | [optional] 
**sequence** | **int** | Sequence of the variable on the form | [optional] 
**revision** | **int** | Number of modifications of the variable (via form metadata revisions) | [optional] 
**disabled** | **bool** | Whether the variable is marked as disabled (deleted) | [optional] 
**dateCreated** | **String** | Date when this variable was created | [optional] 
**dateModified** | **String** | Date when this variable was last modified | [optional] 
**formId** | **int** | ID of the form that this variable belongs to | [optional] 
**variableOid** | **String** | Client-assigned variable OID | [optional] 
**deleted** | **bool** | Whether the variable is marked as deleted | [optional] 
**formKey** | **String** | Form key of the form that this variable belongs to | [optional] 
**formName** | **String** | Name of the form that this variable belongs to | [optional] 
**label** | **String** | User-defined identifier (field name) for the variable | [optional] 
**blinded** | **bool** | Whether the variable is flagged as blinded (hidden in certain contexts) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


