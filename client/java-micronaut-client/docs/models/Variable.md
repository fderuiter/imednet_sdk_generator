

# Variable

The class is defined in **[Variable.java](../../src/main/java/org/openapitools/model/Variable.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**studyKey** | `String` | Unique study key |  [optional property]
**variableId** | `Integer` | Mednet variable ID |  [optional property]
**variableType** | [**VariableTypeEnum**](#VariableTypeEnum) | Type of the variable (field type), e.g., RADIO, TEXT, etc. |  [optional property]
**variableName** | `String` | Name of the variable (question text or label) |  [optional property]
**sequence** | `Integer` | Sequence of the variable on the form |  [optional property]
**revision** | `Integer` | Number of modifications of the variable (via form metadata revisions) |  [optional property]
**disabled** | `Boolean` | Whether the variable is marked as disabled (deleted) |  [optional property]
**dateCreated** | `String` | Date when this variable was created |  [optional property]
**dateModified** | `String` | Date when this variable was last modified |  [optional property]
**formId** | `Integer` | ID of the form that this variable belongs to |  [optional property]
**variableOid** | `String` | Client-assigned variable OID |  [optional property]
**deleted** | `Boolean` | Whether the variable is marked as deleted |  [optional property]
**formKey** | `String` | Form key of the form that this variable belongs to |  [optional property]
**formName** | `String` | Name of the form that this variable belongs to |  [optional property]
**label** | `String` | User-defined identifier (field name) for the variable |  [optional property]
**blinded** | `Boolean` | Whether the variable is flagged as blinded (hidden in certain contexts) |  [optional property]



## VariableTypeEnum

Name | Value
---- | -----
TEXT | `"TEXT"`
TEXTAREA | `"TEXTAREA"`
RADIO | `"RADIO"`
CHECKBOX | `"CHECKBOX"`
DROPDOWN | `"DROPDOWN"`
DATE | `"DATE"`
NUMBER | `"NUMBER"`















