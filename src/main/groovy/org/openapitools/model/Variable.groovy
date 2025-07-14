package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Variable {
    /* Unique study key */
    String studyKey
    /* Mednet variable ID */
    Integer variableId

    enum VariableTypeEnum {
    
        TEXT("TEXT"),
        
        TEXTAREA("TEXTAREA"),
        
        RADIO("RADIO"),
        
        CHECKBOX("CHECKBOX"),
        
        DROPDOWN("DROPDOWN"),
        
        DATE("DATE"),
        
        NUMBER("NUMBER")
    
        private final String value
    
        VariableTypeEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    /* Type of the variable (field type), e.g., RADIO, TEXT, etc. */
    VariableTypeEnum variableType
    /* Name of the variable (question text or label) */
    String variableName
    /* Sequence of the variable on the form */
    Integer sequence
    /* Number of modifications of the variable (via form metadata revisions) */
    Integer revision
    /* Whether the variable is marked as disabled (deleted) */
    Boolean disabled
    /* Date when this variable was created */
    String dateCreated
    /* Date when this variable was last modified */
    String dateModified
    /* ID of the form that this variable belongs to */
    Integer formId
    /* Client-assigned variable OID */
    String variableOid
    /* Whether the variable is marked as deleted */
    Boolean deleted
    /* Form key of the form that this variable belongs to */
    String formKey
    /* Name of the form that this variable belongs to */
    String formName
    /* User-defined identifier (field name) for the variable */
    String label
    /* Whether the variable is flagged as blinded (hidden in certain contexts) */
    Boolean blinded
}
