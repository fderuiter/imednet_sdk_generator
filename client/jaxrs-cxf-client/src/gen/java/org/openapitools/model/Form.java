package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Form  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Mednet Form ID")
 /**
   * Mednet Form ID
  **/
  private Integer formId;

  @ApiModelProperty(value = "User-defined form key")
 /**
   * User-defined form key
  **/
  private String formKey;

  @ApiModelProperty(value = "Name of the form (eCRF)")
 /**
   * Name of the form (eCRF)
  **/
  private String formName;

  @ApiModelProperty(value = "Type of the form (e.g., Subject or Site)")
 /**
   * Type of the form (e.g., Subject or Site)
  **/
  private String formType;

  @ApiModelProperty(value = "Number of modifications (revisions) of the form metadata")
 /**
   * Number of modifications (revisions) of the form metadata
  **/
  private Integer revision;

  @ApiModelProperty(value = "Whether the form has an embedded log")
 /**
   * Whether the form has an embedded log
  **/
  private Boolean embeddedLog;

  @ApiModelProperty(value = "Whether the form enforces record ownership")
 /**
   * Whether the form enforces record ownership
  **/
  private Boolean enforceOwnership;

  @ApiModelProperty(value = "Whether the form requires a user agreement")
 /**
   * Whether the form requires a user agreement
  **/
  private Boolean userAgreement;

  @ApiModelProperty(value = "Whether the form is marked as a subject record report")
 /**
   * Whether the form is marked as a subject record report
  **/
  private Boolean subjectRecordReport;

  @ApiModelProperty(value = "Whether the form is included in unscheduled visits")
 /**
   * Whether the form is included in unscheduled visits
  **/
  private Boolean unscheduledVisit;

  @ApiModelProperty(value = "Whether the form is included in Other Forms category")
 /**
   * Whether the form is included in Other Forms category
  **/
  private Boolean otherForms;

  @ApiModelProperty(value = "Whether the form is an ePRO (electronic patient reported outcome) form")
 /**
   * Whether the form is an ePRO (electronic patient reported outcome) form
  **/
  private Boolean eproForm;

  @ApiModelProperty(value = "Whether the form allows copying of data")
 /**
   * Whether the form allows copying of data
  **/
  private Boolean allowCopy;

  @ApiModelProperty(value = "Whether the form is soft-deleted (disabled)")
 /**
   * Whether the form is soft-deleted (disabled)
  **/
  private Boolean disabled;

  @ApiModelProperty(value = "Date when this form was created")
 /**
   * Date when this form was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Date when this form was last modified")
 /**
   * Date when this form was last modified
  **/
  private String dateModified;
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

  public Form studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Mednet Form ID
   * @return formId
  **/
  @JsonProperty("formId")
  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }

  public Form formId(Integer formId) {
    this.formId = formId;
    return this;
  }

 /**
   * User-defined form key
   * @return formKey
  **/
  @JsonProperty("formKey")
  public String getFormKey() {
    return formKey;
  }

  public void setFormKey(String formKey) {
    this.formKey = formKey;
  }

  public Form formKey(String formKey) {
    this.formKey = formKey;
    return this;
  }

 /**
   * Name of the form (eCRF)
   * @return formName
  **/
  @JsonProperty("formName")
  public String getFormName() {
    return formName;
  }

  public void setFormName(String formName) {
    this.formName = formName;
  }

  public Form formName(String formName) {
    this.formName = formName;
    return this;
  }

 /**
   * Type of the form (e.g., Subject or Site)
   * @return formType
  **/
  @JsonProperty("formType")
  public String getFormType() {
    return formType;
  }

  public void setFormType(String formType) {
    this.formType = formType;
  }

  public Form formType(String formType) {
    this.formType = formType;
    return this;
  }

 /**
   * Number of modifications (revisions) of the form metadata
   * @return revision
  **/
  @JsonProperty("revision")
  public Integer getRevision() {
    return revision;
  }

  public void setRevision(Integer revision) {
    this.revision = revision;
  }

  public Form revision(Integer revision) {
    this.revision = revision;
    return this;
  }

 /**
   * Whether the form has an embedded log
   * @return embeddedLog
  **/
  @JsonProperty("embeddedLog")
  public Boolean getEmbeddedLog() {
    return embeddedLog;
  }

  public void setEmbeddedLog(Boolean embeddedLog) {
    this.embeddedLog = embeddedLog;
  }

  public Form embeddedLog(Boolean embeddedLog) {
    this.embeddedLog = embeddedLog;
    return this;
  }

 /**
   * Whether the form enforces record ownership
   * @return enforceOwnership
  **/
  @JsonProperty("enforceOwnership")
  public Boolean getEnforceOwnership() {
    return enforceOwnership;
  }

  public void setEnforceOwnership(Boolean enforceOwnership) {
    this.enforceOwnership = enforceOwnership;
  }

  public Form enforceOwnership(Boolean enforceOwnership) {
    this.enforceOwnership = enforceOwnership;
    return this;
  }

 /**
   * Whether the form requires a user agreement
   * @return userAgreement
  **/
  @JsonProperty("userAgreement")
  public Boolean getUserAgreement() {
    return userAgreement;
  }

  public void setUserAgreement(Boolean userAgreement) {
    this.userAgreement = userAgreement;
  }

  public Form userAgreement(Boolean userAgreement) {
    this.userAgreement = userAgreement;
    return this;
  }

 /**
   * Whether the form is marked as a subject record report
   * @return subjectRecordReport
  **/
  @JsonProperty("subjectRecordReport")
  public Boolean getSubjectRecordReport() {
    return subjectRecordReport;
  }

  public void setSubjectRecordReport(Boolean subjectRecordReport) {
    this.subjectRecordReport = subjectRecordReport;
  }

  public Form subjectRecordReport(Boolean subjectRecordReport) {
    this.subjectRecordReport = subjectRecordReport;
    return this;
  }

 /**
   * Whether the form is included in unscheduled visits
   * @return unscheduledVisit
  **/
  @JsonProperty("unscheduledVisit")
  public Boolean getUnscheduledVisit() {
    return unscheduledVisit;
  }

  public void setUnscheduledVisit(Boolean unscheduledVisit) {
    this.unscheduledVisit = unscheduledVisit;
  }

  public Form unscheduledVisit(Boolean unscheduledVisit) {
    this.unscheduledVisit = unscheduledVisit;
    return this;
  }

 /**
   * Whether the form is included in Other Forms category
   * @return otherForms
  **/
  @JsonProperty("otherForms")
  public Boolean getOtherForms() {
    return otherForms;
  }

  public void setOtherForms(Boolean otherForms) {
    this.otherForms = otherForms;
  }

  public Form otherForms(Boolean otherForms) {
    this.otherForms = otherForms;
    return this;
  }

 /**
   * Whether the form is an ePRO (electronic patient reported outcome) form
   * @return eproForm
  **/
  @JsonProperty("eproForm")
  public Boolean getEproForm() {
    return eproForm;
  }

  public void setEproForm(Boolean eproForm) {
    this.eproForm = eproForm;
  }

  public Form eproForm(Boolean eproForm) {
    this.eproForm = eproForm;
    return this;
  }

 /**
   * Whether the form allows copying of data
   * @return allowCopy
  **/
  @JsonProperty("allowCopy")
  public Boolean getAllowCopy() {
    return allowCopy;
  }

  public void setAllowCopy(Boolean allowCopy) {
    this.allowCopy = allowCopy;
  }

  public Form allowCopy(Boolean allowCopy) {
    this.allowCopy = allowCopy;
    return this;
  }

 /**
   * Whether the form is soft-deleted (disabled)
   * @return disabled
  **/
  @JsonProperty("disabled")
  public Boolean getDisabled() {
    return disabled;
  }

  public void setDisabled(Boolean disabled) {
    this.disabled = disabled;
  }

  public Form disabled(Boolean disabled) {
    this.disabled = disabled;
    return this;
  }

 /**
   * Date when this form was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Form dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Date when this form was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public String getDateModified() {
    return dateModified;
  }

  public void setDateModified(String dateModified) {
    this.dateModified = dateModified;
  }

  public Form dateModified(String dateModified) {
    this.dateModified = dateModified;
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
    Form form = (Form) o;
    return Objects.equals(this.studyKey, form.studyKey) &&
        Objects.equals(this.formId, form.formId) &&
        Objects.equals(this.formKey, form.formKey) &&
        Objects.equals(this.formName, form.formName) &&
        Objects.equals(this.formType, form.formType) &&
        Objects.equals(this.revision, form.revision) &&
        Objects.equals(this.embeddedLog, form.embeddedLog) &&
        Objects.equals(this.enforceOwnership, form.enforceOwnership) &&
        Objects.equals(this.userAgreement, form.userAgreement) &&
        Objects.equals(this.subjectRecordReport, form.subjectRecordReport) &&
        Objects.equals(this.unscheduledVisit, form.unscheduledVisit) &&
        Objects.equals(this.otherForms, form.otherForms) &&
        Objects.equals(this.eproForm, form.eproForm) &&
        Objects.equals(this.allowCopy, form.allowCopy) &&
        Objects.equals(this.disabled, form.disabled) &&
        Objects.equals(this.dateCreated, form.dateCreated) &&
        Objects.equals(this.dateModified, form.dateModified);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, formId, formKey, formName, formType, revision, embeddedLog, enforceOwnership, userAgreement, subjectRecordReport, unscheduledVisit, otherForms, eproForm, allowCopy, disabled, dateCreated, dateModified);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Form {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    formId: ").append(toIndentedString(formId)).append("\n");
    sb.append("    formKey: ").append(toIndentedString(formKey)).append("\n");
    sb.append("    formName: ").append(toIndentedString(formName)).append("\n");
    sb.append("    formType: ").append(toIndentedString(formType)).append("\n");
    sb.append("    revision: ").append(toIndentedString(revision)).append("\n");
    sb.append("    embeddedLog: ").append(toIndentedString(embeddedLog)).append("\n");
    sb.append("    enforceOwnership: ").append(toIndentedString(enforceOwnership)).append("\n");
    sb.append("    userAgreement: ").append(toIndentedString(userAgreement)).append("\n");
    sb.append("    subjectRecordReport: ").append(toIndentedString(subjectRecordReport)).append("\n");
    sb.append("    unscheduledVisit: ").append(toIndentedString(unscheduledVisit)).append("\n");
    sb.append("    otherForms: ").append(toIndentedString(otherForms)).append("\n");
    sb.append("    eproForm: ").append(toIndentedString(eproForm)).append("\n");
    sb.append("    allowCopy: ").append(toIndentedString(allowCopy)).append("\n");
    sb.append("    disabled: ").append(toIndentedString(disabled)).append("\n");
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
    sb.append("    dateModified: ").append(toIndentedString(dateModified)).append("\n");
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

