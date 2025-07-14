# Variable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StudyKey** | **String** | Unique study key | [optional] 
**VariableId** | **Int32** | Mednet variable ID | [optional] 
**VariableType** | **String** | Type of the variable (field type), e.g., RADIO, TEXT, etc. | [optional] 
**VariableName** | **String** | Name of the variable (question text or label) | [optional] 
**Sequence** | **Int32** | Sequence of the variable on the form | [optional] 
**Revision** | **Int32** | Number of modifications of the variable (via form metadata revisions) | [optional] 
**Disabled** | **Boolean** | Whether the variable is marked as disabled (deleted) | [optional] 
**DateCreated** | **String** | Date when this variable was created | [optional] 
**DateModified** | **String** | Date when this variable was last modified | [optional] 
**FormId** | **Int32** | ID of the form that this variable belongs to | [optional] 
**VariableOid** | **String** | Client-assigned variable OID | [optional] 
**Deleted** | **Boolean** | Whether the variable is marked as deleted | [optional] 
**FormKey** | **String** | Form key of the form that this variable belongs to | [optional] 
**FormName** | **String** | Name of the form that this variable belongs to | [optional] 
**Label** | **String** | User-defined identifier (field name) for the variable | [optional] 
**Blinded** | **Boolean** | Whether the variable is flagged as blinded (hidden in certain contexts) | [optional] 

## Examples

- Prepare the resource
```powershell
$Variable = Initialize-PSOpenAPIToolsVariable  -StudyKey null `
 -VariableId null `
 -VariableType null `
 -VariableName null `
 -Sequence null `
 -Revision null `
 -Disabled null `
 -DateCreated null `
 -DateModified null `
 -FormId null `
 -VariableOid null `
 -Deleted null `
 -FormKey null `
 -FormName null `
 -Label null `
 -Blinded null
```

- Convert the resource to JSON
```powershell
$Variable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

