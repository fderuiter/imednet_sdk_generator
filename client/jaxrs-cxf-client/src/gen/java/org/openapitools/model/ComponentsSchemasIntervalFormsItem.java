package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ComponentsSchemasIntervalFormsItem  {
  
  @ApiModelProperty(value = "Form ID scheduled in the interval")
 /**
   * Form ID scheduled in the interval
  **/
  private Integer formId;

  @ApiModelProperty(value = "Form key scheduled in the interval")
 /**
   * Form key scheduled in the interval
  **/
  private String formKey;

  @ApiModelProperty(value = "Form name scheduled in the interval")
 /**
   * Form name scheduled in the interval
  **/
  private String formName;
 /**
   * Form ID scheduled in the interval
   * @return formId
  **/
  @JsonProperty("formId")
  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }

  public ComponentsSchemasIntervalFormsItem formId(Integer formId) {
    this.formId = formId;
    return this;
  }

 /**
   * Form key scheduled in the interval
   * @return formKey
  **/
  @JsonProperty("formKey")
  public String getFormKey() {
    return formKey;
  }

  public void setFormKey(String formKey) {
    this.formKey = formKey;
  }

  public ComponentsSchemasIntervalFormsItem formKey(String formKey) {
    this.formKey = formKey;
    return this;
  }

 /**
   * Form name scheduled in the interval
   * @return formName
  **/
  @JsonProperty("formName")
  public String getFormName() {
    return formName;
  }

  public void setFormName(String formName) {
    this.formName = formName;
  }

  public ComponentsSchemasIntervalFormsItem formName(String formName) {
    this.formName = formName;
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
    ComponentsSchemasIntervalFormsItem componentsSchemasIntervalFormsItem = (ComponentsSchemasIntervalFormsItem) o;
    return Objects.equals(this.formId, componentsSchemasIntervalFormsItem.formId) &&
        Objects.equals(this.formKey, componentsSchemasIntervalFormsItem.formKey) &&
        Objects.equals(this.formName, componentsSchemasIntervalFormsItem.formName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(formId, formKey, formName);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ComponentsSchemasIntervalFormsItem {\n");
    
    sb.append("    formId: ").append(toIndentedString(formId)).append("\n");
    sb.append("    formKey: ").append(toIndentedString(formKey)).append("\n");
    sb.append("    formName: ").append(toIndentedString(formName)).append("\n");
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

