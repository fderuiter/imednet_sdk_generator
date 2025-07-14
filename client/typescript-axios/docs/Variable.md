# Variable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | **string** | Unique study key | [optional] [default to undefined]
**variableId** | **number** | Mednet variable ID | [optional] [default to undefined]
**variableType** | **string** | Type of the variable (field type), e.g., RADIO, TEXT, etc. | [optional] [default to undefined]
**variableName** | **string** | Name of the variable (question text or label) | [optional] [default to undefined]
**sequence** | **number** | Sequence of the variable on the form | [optional] [default to undefined]
**revision** | **number** | Number of modifications of the variable (via form metadata revisions) | [optional] [default to undefined]
**disabled** | **boolean** | Whether the variable is marked as disabled (deleted) | [optional] [default to undefined]
**dateCreated** | **string** | Date when this variable was created | [optional] [default to undefined]
**dateModified** | **string** | Date when this variable was last modified | [optional] [default to undefined]
**formId** | **number** | ID of the form that this variable belongs to | [optional] [default to undefined]
**variableOid** | **string** | Client-assigned variable OID | [optional] [default to undefined]
**deleted** | **boolean** | Whether the variable is marked as deleted | [optional] [default to undefined]
**formKey** | **string** | Form key of the form that this variable belongs to | [optional] [default to undefined]
**formName** | **string** | Name of the form that this variable belongs to | [optional] [default to undefined]
**label** | **string** | User-defined identifier (field name) for the variable | [optional] [default to undefined]
**blinded** | **boolean** | Whether the variable is flagged as blinded (hidden in certain contexts) | [optional] [default to undefined]

## Example

```typescript
import { Variable } from './api';

const instance: Variable = {
    studyKey,
    variableId,
    variableType,
    variableName,
    sequence,
    revision,
    disabled,
    dateCreated,
    dateModified,
    formId,
    variableOid,
    deleted,
    formKey,
    formName,
    label,
    blinded,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
