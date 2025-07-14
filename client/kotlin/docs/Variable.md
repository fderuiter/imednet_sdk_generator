
# Variable

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **studyKey** | **kotlin.String** | Unique study key |  [optional] |
| **variableId** | **kotlin.Int** | Mednet variable ID |  [optional] |
| **variableType** | [**inline**](#VariableType) | Type of the variable (field type), e.g., RADIO, TEXT, etc. |  [optional] |
| **variableName** | **kotlin.String** | Name of the variable (question text or label) |  [optional] |
| **sequence** | **kotlin.Int** | Sequence of the variable on the form |  [optional] |
| **revision** | **kotlin.Int** | Number of modifications of the variable (via form metadata revisions) |  [optional] |
| **disabled** | **kotlin.Boolean** | Whether the variable is marked as disabled (deleted) |  [optional] |
| **dateCreated** | **kotlin.String** | Date when this variable was created |  [optional] |
| **dateModified** | **kotlin.String** | Date when this variable was last modified |  [optional] |
| **formId** | **kotlin.Int** | ID of the form that this variable belongs to |  [optional] |
| **variableOid** | **kotlin.String** | Client-assigned variable OID |  [optional] |
| **deleted** | **kotlin.Boolean** | Whether the variable is marked as deleted |  [optional] |
| **formKey** | **kotlin.String** | Form key of the form that this variable belongs to |  [optional] |
| **formName** | **kotlin.String** | Name of the form that this variable belongs to |  [optional] |
| **label** | **kotlin.String** | User-defined identifier (field name) for the variable |  [optional] |
| **blinded** | **kotlin.Boolean** | Whether the variable is flagged as blinded (hidden in certain contexts) |  [optional] |


<a id="VariableType"></a>
## Enum: variableType
| Name | Value |
| ---- | ----- |
| variableType | TEXT, TEXTAREA, RADIO, CHECKBOX, DROPDOWN, DATE, NUMBER |



