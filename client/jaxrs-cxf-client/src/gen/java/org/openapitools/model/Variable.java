package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Variable  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Mednet variable ID")
 /**
   * Mednet variable ID
  **/
  private Integer variableId;

public enum VariableTypeEnum {

TEXT(String.valueOf("TEXT")), TEXTAREA(String.valueOf("TEXTAREA")), RADIO(String.valueOf("RADIO")), CHECKBOX(String.valueOf("CHECKBOX")), DROPDOWN(String.valueOf("DROPDOWN")), DATE(String.valueOf("DATE")), NUMBER(String.valueOf("NUMBER"));


    private String value;

    VariableTypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static VariableTypeEnum fromValue(String value) {
        for (VariableTypeEnum b : VariableTypeEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(value = "Type of the variable (field type), e.g., RADIO, TEXT, etc.")
 /**
   * Type of the variable (field type), e.g., RADIO, TEXT, etc.
  **/
  private VariableTypeEnum variableType;

  @ApiModelProperty(value = "Name of the variable (question text or label)")
 /**
   * Name of the variable (question text or label)
  **/
  private String variableName;

  @ApiModelProperty(value = "Sequence of the variable on the form")
 /**
   * Sequence of the variable on the form
  **/
  private Integer sequence;

  @ApiModelProperty(value = "Number of modifications of the variable (via form metadata revisions)")
 /**
   * Number of modifications of the variable (via form metadata revisions)
  **/
  private Integer revision;

  @ApiModelProperty(value = "Whether the variable is marked as disabled (deleted)")
 /**
   * Whether the variable is marked as disabled (deleted)
  **/
  private Boolean disabled;

  @ApiModelProperty(value = "Date when this variable was created")
 /**
   * Date when this variable was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Date when this variable was last modified")
 /**
   * Date when this variable was last modified
  **/
  private String dateModified;

  @ApiModelProperty(value = "ID of the form that this variable belongs to")
 /**
   * ID of the form that this variable belongs to
  **/
  private Integer formId;

  @ApiModelProperty(value = "Client-assigned variable OID")
 /**
   * Client-assigned variable OID
  **/
  private String variableOid;

  @ApiModelProperty(value = "Whether the variable is marked as deleted")
 /**
   * Whether the variable is marked as deleted
  **/
  private Boolean deleted;

  @ApiModelProperty(value = "Form key of the form that this variable belongs to")
 /**
   * Form key of the form that this variable belongs to
  **/
  private String formKey;

  @ApiModelProperty(value = "Name of the form that this variable belongs to")
 /**
   * Name of the form that this variable belongs to
  **/
  private String formName;

  @ApiModelProperty(value = "User-defined identifier (field name) for the variable")
 /**
   * User-defined identifier (field name) for the variable
  **/
  private String label;

  @ApiModelProperty(value = "Whether the variable is flagged as blinded (hidden in certain contexts)")
 /**
   * Whether the variable is flagged as blinded (hidden in certain contexts)
  **/
  private Boolean blinded;
 /**
   * Unique study key
   * @return studyKey
  **/
  @JsonProperty("studyKey")
  public String getStudyKey() {
    return studyKey;
  }

  public void setStudyKey(String studyKey) {
    this.studyKey = studyKey;
  }

  public Variable studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Mednet variable ID
   * @return variableId
  **/
  @JsonProperty("variableId")
  public Integer getVariableId() {
    return variableId;
  }

  public void setVariableId(Integer variableId) {
    this.variableId = variableId;
  }

  public Variable variableId(Integer variableId) {
    this.variableId = variableId;
    return this;
  }

 /**
   * Type of the variable (field type), e.g., RADIO, TEXT, etc.
   * @return variableType
  **/
  @JsonProperty("variableType")
  public String getVariableType() {
    if (variableType == null) {
      return null;
    }
    return variableType.value();
  }

  public void setVariableType(VariableTypeEnum variableType) {
    this.variableType = variableType;
  }

  public Variable variableType(VariableTypeEnum variableType) {
    this.variableType = variableType;
    return this;
  }

 /**
   * Name of the variable (question text or label)
   * @return variableName
  **/
  @JsonProperty("variableName")
  public String getVariableName() {
    return variableName;
  }

  public void setVariableName(String variableName) {
    this.variableName = variableName;
  }

  public Variable variableName(String variableName) {
    this.variableName = variableName;
    return this;
  }

 /**
   * Sequence of the variable on the form
   * @return sequence
  **/
  @JsonProperty("sequence")
  public Integer getSequence() {
    return sequence;
  }

  public void setSequence(Integer sequence) {
    this.sequence = sequence;
  }

  public Variable sequence(Integer sequence) {
    this.sequence = sequence;
    return this;
  }

 /**
   * Number of modifications of the variable (via form metadata revisions)
   * @return revision
  **/
  @JsonProperty("revision")
  public Integer getRevision() {
    return revision;
  }

  public void setRevision(Integer revision) {
    this.revision = revision;
  }

  public Variable revision(Integer revision) {
    this.revision = revision;
    return this;
  }

 /**
   * Whether the variable is marked as disabled (deleted)
   * @return disabled
  **/
  @JsonProperty("disabled")
  public Boolean getDisabled() {
    return disabled;
  }

  public void setDisabled(Boolean disabled) {
    this.disabled = disabled;
  }

  public Variable disabled(Boolean disabled) {
    this.disabled = disabled;
    return this;
  }

 /**
   * Date when this variable was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Variable dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Date when this variable was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public String getDateModified() {
    return dateModified;
  }

  public void setDateModified(String dateModified) {
    this.dateModified = dateModified;
  }

  public Variable dateModified(String dateModified) {
    this.dateModified = dateModified;
    return this;
  }

 /**
   * ID of the form that this variable belongs to
   * @return formId
  **/
  @JsonProperty("formId")
  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }

  public Variable formId(Integer formId) {
    this.formId = formId;
    return this;
  }

 /**
   * Client-assigned variable OID
   * @return variableOid
  **/
  @JsonProperty("variableOid")
  public String getVariableOid() {
    return variableOid;
  }

  public void setVariableOid(String variableOid) {
    this.variableOid = variableOid;
  }

  public Variable variableOid(String variableOid) {
    this.variableOid = variableOid;
    return this;
  }

 /**
   * Whether the variable is marked as deleted
   * @return deleted
  **/
  @JsonProperty("deleted")
  public Boolean getDeleted() {
    return deleted;
  }

  public void setDeleted(Boolean deleted) {
    this.deleted = deleted;
  }

  public Variable deleted(Boolean deleted) {
    this.deleted = deleted;
    return this;
  }

 /**
   * Form key of the form that this variable belongs to
   * @return formKey
  **/
  @JsonProperty("formKey")
  public String getFormKey() {
    return formKey;
  }

  public void setFormKey(String formKey) {
    this.formKey = formKey;
  }

  public Variable formKey(String formKey) {
    this.formKey = formKey;
    return this;
  }

 /**
   * Name of the form that this variable belongs to
   * @return formName
  **/
  @JsonProperty("formName")
  public String getFormName() {
    return formName;
  }

  public void setFormName(String formName) {
    this.formName = formName;
  }

  public Variable formName(String formName) {
    this.formName = formName;
    return this;
  }

 /**
   * User-defined identifier (field name) for the variable
   * @return label
  **/
  @JsonProperty("label")
  public String getLabel() {
    return label;
  }

  public void setLabel(String label) {
    this.label = label;
  }

  public Variable label(String label) {
    this.label = label;
    return this;
  }

 /**
   * Whether the variable is flagged as blinded (hidden in certain contexts)
   * @return blinded
  **/
  @JsonProperty("blinded")
  public Boolean getBlinded() {
    return blinded;
  }

  public void setBlinded(Boolean blinded) {
    this.blinded = blinded;
  }

  public Variable blinded(Boolean blinded) {
    this.blinded = blinded;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Variable variable = (Variable) o;
    return Objects.equals(this.studyKey, variable.studyKey) &&
        Objects.equals(this.variableId, variable.variableId) &&
        Objects.equals(this.variableType, variable.variableType) &&
        Objects.equals(this.variableName, variable.variableName) &&
        Objects.equals(this.sequence, variable.sequence) &&
        Objects.equals(this.revision, variable.revision) &&
        Objects.equals(this.disabled, variable.disabled) &&
        Objects.equals(this.dateCreated, variable.dateCreated) &&
        Objects.equals(this.dateModified, variable.dateModified) &&
        Objects.equals(this.formId, variable.formId) &&
        Objects.equals(this.variableOid, variable.variableOid) &&
        Objects.equals(this.deleted, variable.deleted) &&
        Objects.equals(this.formKey, variable.formKey) &&
        Objects.equals(this.formName, variable.formName) &&
        Objects.equals(this.label, variable.label) &&
        Objects.equals(this.blinded, variable.blinded);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, variableId, variableType, variableName, sequence, revision, disabled, dateCreated, dateModified, formId, variableOid, deleted, formKey, formName, label, blinded);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Variable {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    variableId: ").append(toIndentedString(variableId)).append("\n");
    sb.append("    variableType: ").append(toIndentedString(variableType)).append("\n");
    sb.append("    variableName: ").append(toIndentedString(variableName)).append("\n");
    sb.append("    sequence: ").append(toIndentedString(sequence)).append("\n");
    sb.append("    revision: ").append(toIndentedString(revision)).append("\n");
    sb.append("    disabled: ").append(toIndentedString(disabled)).append("\n");
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
    sb.append("    dateModified: ").append(toIndentedString(dateModified)).append("\n");
    sb.append("    formId: ").append(toIndentedString(formId)).append("\n");
    sb.append("    variableOid: ").append(toIndentedString(variableOid)).append("\n");
    sb.append("    deleted: ").append(toIndentedString(deleted)).append("\n");
    sb.append("    formKey: ").append(toIndentedString(formKey)).append("\n");
    sb.append("    formName: ").append(toIndentedString(formName)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    blinded: ").append(toIndentedString(blinded)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

