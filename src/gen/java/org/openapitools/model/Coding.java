package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Coding  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Name of the site associated with the coded data")
 /**
   * Name of the site associated with the coded data
  **/
  private String siteName;

  @ApiModelProperty(value = "Site ID associated with the coded data")
 /**
   * Site ID associated with the coded data
  **/
  private Integer siteId;

  @ApiModelProperty(value = "Subject ID associated with the coded data")
 /**
   * Subject ID associated with the coded data
  **/
  private Integer subjectId;

  @ApiModelProperty(value = "Subject key (display ID) associated with the coded data")
 /**
   * Subject key (display ID) associated with the coded data
  **/
  private String subjectKey;

  @ApiModelProperty(value = "Form ID where the coded data originates")
 /**
   * Form ID where the coded data originates
  **/
  private Integer formId;

  @ApiModelProperty(value = "Name of the form where the coded data originates")
 /**
   * Name of the form where the coded data originates
  **/
  private String formName;

  @ApiModelProperty(value = "Form key where the coded data originates")
 /**
   * Form key where the coded data originates
  **/
  private String formKey;

  @ApiModelProperty(value = "Revision number of the coding entry")
 /**
   * Revision number of the coding entry
  **/
  private Integer revision;

  @ApiModelProperty(value = "Record ID associated with the coded data")
 /**
   * Record ID associated with the coded data
  **/
  private Integer recordId;

  @ApiModelProperty(value = "Variable name (field) that was coded")
 /**
   * Variable name (field) that was coded
  **/
  private String variable;

  @ApiModelProperty(value = "Original value entered that required coding")
 /**
   * Original value entered that required coding
  **/
  private String value;

  @ApiModelProperty(value = "Mednet coding ID")
 /**
   * Mednet coding ID
  **/
  private Integer codingId;

  @ApiModelProperty(value = "Standardized code assigned (e.g., dictionary term)")
 /**
   * Standardized code assigned (e.g., dictionary term)
  **/
  private String code;

  @ApiModelProperty(value = "Name of the user who performed the coding")
 /**
   * Name of the user who performed the coding
  **/
  private String codedBy;

  @ApiModelProperty(value = "Reason for coding or any notes on changes")
 /**
   * Reason for coding or any notes on changes
  **/
  private String reason;

  @ApiModelProperty(value = "Name of the dictionary used (e.g., MedDRA)")
 /**
   * Name of the dictionary used (e.g., MedDRA)
  **/
  private String dictionaryName;

  @ApiModelProperty(value = "Version of the dictionary used")
 /**
   * Version of the dictionary used
  **/
  private String dictionaryVersion;

  @ApiModelProperty(value = "Date when the coding was performed")
 /**
   * Date when the coding was performed
  **/
  private String dateCoded;
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

  public Coding studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Name of the site associated with the coded data
   * @return siteName
  **/
  @JsonProperty("siteName")
  public String getSiteName() {
    return siteName;
  }

  public void setSiteName(String siteName) {
    this.siteName = siteName;
  }

  public Coding siteName(String siteName) {
    this.siteName = siteName;
    return this;
  }

 /**
   * Site ID associated with the coded data
   * @return siteId
  **/
  @JsonProperty("siteId")
  public Integer getSiteId() {
    return siteId;
  }

  public void setSiteId(Integer siteId) {
    this.siteId = siteId;
  }

  public Coding siteId(Integer siteId) {
    this.siteId = siteId;
    return this;
  }

 /**
   * Subject ID associated with the coded data
   * @return subjectId
  **/
  @JsonProperty("subjectId")
  public Integer getSubjectId() {
    return subjectId;
  }

  public void setSubjectId(Integer subjectId) {
    this.subjectId = subjectId;
  }

  public Coding subjectId(Integer subjectId) {
    this.subjectId = subjectId;
    return this;
  }

 /**
   * Subject key (display ID) associated with the coded data
   * @return subjectKey
  **/
  @JsonProperty("subjectKey")
  public String getSubjectKey() {
    return subjectKey;
  }

  public void setSubjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
  }

  public Coding subjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
    return this;
  }

 /**
   * Form ID where the coded data originates
   * @return formId
  **/
  @JsonProperty("formId")
  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }

  public Coding formId(Integer formId) {
    this.formId = formId;
    return this;
  }

 /**
   * Name of the form where the coded data originates
   * @return formName
  **/
  @JsonProperty("formName")
  public String getFormName() {
    return formName;
  }

  public void setFormName(String formName) {
    this.formName = formName;
  }

  public Coding formName(String formName) {
    this.formName = formName;
    return this;
  }

 /**
   * Form key where the coded data originates
   * @return formKey
  **/
  @JsonProperty("formKey")
  public String getFormKey() {
    return formKey;
  }

  public void setFormKey(String formKey) {
    this.formKey = formKey;
  }

  public Coding formKey(String formKey) {
    this.formKey = formKey;
    return this;
  }

 /**
   * Revision number of the coding entry
   * @return revision
  **/
  @JsonProperty("revision")
  public Integer getRevision() {
    return revision;
  }

  public void setRevision(Integer revision) {
    this.revision = revision;
  }

  public Coding revision(Integer revision) {
    this.revision = revision;
    return this;
  }

 /**
   * Record ID associated with the coded data
   * @return recordId
  **/
  @JsonProperty("recordId")
  public Integer getRecordId() {
    return recordId;
  }

  public void setRecordId(Integer recordId) {
    this.recordId = recordId;
  }

  public Coding recordId(Integer recordId) {
    this.recordId = recordId;
    return this;
  }

 /**
   * Variable name (field) that was coded
   * @return variable
  **/
  @JsonProperty("variable")
  public String getVariable() {
    return variable;
  }

  public void setVariable(String variable) {
    this.variable = variable;
  }

  public Coding variable(String variable) {
    this.variable = variable;
    return this;
  }

 /**
   * Original value entered that required coding
   * @return value
  **/
  @JsonProperty("value")
  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }

  public Coding value(String value) {
    this.value = value;
    return this;
  }

 /**
   * Mednet coding ID
   * @return codingId
  **/
  @JsonProperty("codingId")
  public Integer getCodingId() {
    return codingId;
  }

  public void setCodingId(Integer codingId) {
    this.codingId = codingId;
  }

  public Coding codingId(Integer codingId) {
    this.codingId = codingId;
    return this;
  }

 /**
   * Standardized code assigned (e.g., dictionary term)
   * @return code
  **/
  @JsonProperty("code")
  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public Coding code(String code) {
    this.code = code;
    return this;
  }

 /**
   * Name of the user who performed the coding
   * @return codedBy
  **/
  @JsonProperty("codedBy")
  public String getCodedBy() {
    return codedBy;
  }

  public void setCodedBy(String codedBy) {
    this.codedBy = codedBy;
  }

  public Coding codedBy(String codedBy) {
    this.codedBy = codedBy;
    return this;
  }

 /**
   * Reason for coding or any notes on changes
   * @return reason
  **/
  @JsonProperty("reason")
  public String getReason() {
    return reason;
  }

  public void setReason(String reason) {
    this.reason = reason;
  }

  public Coding reason(String reason) {
    this.reason = reason;
    return this;
  }

 /**
   * Name of the dictionary used (e.g., MedDRA)
   * @return dictionaryName
  **/
  @JsonProperty("dictionaryName")
  public String getDictionaryName() {
    return dictionaryName;
  }

  public void setDictionaryName(String dictionaryName) {
    this.dictionaryName = dictionaryName;
  }

  public Coding dictionaryName(String dictionaryName) {
    this.dictionaryName = dictionaryName;
    return this;
  }

 /**
   * Version of the dictionary used
   * @return dictionaryVersion
  **/
  @JsonProperty("dictionaryVersion")
  public String getDictionaryVersion() {
    return dictionaryVersion;
  }

  public void setDictionaryVersion(String dictionaryVersion) {
    this.dictionaryVersion = dictionaryVersion;
  }

  public Coding dictionaryVersion(String dictionaryVersion) {
    this.dictionaryVersion = dictionaryVersion;
    return this;
  }

 /**
   * Date when the coding was performed
   * @return dateCoded
  **/
  @JsonProperty("dateCoded")
  public String getDateCoded() {
    return dateCoded;
  }

  public void setDateCoded(String dateCoded) {
    this.dateCoded = dateCoded;
  }

  public Coding dateCoded(String dateCoded) {
    this.dateCoded = dateCoded;
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
    Coding coding = (Coding) o;
    return Objects.equals(this.studyKey, coding.studyKey) &&
        Objects.equals(this.siteName, coding.siteName) &&
        Objects.equals(this.siteId, coding.siteId) &&
        Objects.equals(this.subjectId, coding.subjectId) &&
        Objects.equals(this.subjectKey, coding.subjectKey) &&
        Objects.equals(this.formId, coding.formId) &&
        Objects.equals(this.formName, coding.formName) &&
        Objects.equals(this.formKey, coding.formKey) &&
        Objects.equals(this.revision, coding.revision) &&
        Objects.equals(this.recordId, coding.recordId) &&
        Objects.equals(this.variable, coding.variable) &&
        Objects.equals(this.value, coding.value) &&
        Objects.equals(this.codingId, coding.codingId) &&
        Objects.equals(this.code, coding.code) &&
        Objects.equals(this.codedBy, coding.codedBy) &&
        Objects.equals(this.reason, coding.reason) &&
        Objects.equals(this.dictionaryName, coding.dictionaryName) &&
        Objects.equals(this.dictionaryVersion, coding.dictionaryVersion) &&
        Objects.equals(this.dateCoded, coding.dateCoded);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, siteName, siteId, subjectId, subjectKey, formId, formName, formKey, revision, recordId, variable, value, codingId, code, codedBy, reason, dictionaryName, dictionaryVersion, dateCoded);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Coding {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    siteName: ").append(toIndentedString(siteName)).append("\n");
    sb.append("    siteId: ").append(toIndentedString(siteId)).append("\n");
    sb.append("    subjectId: ").append(toIndentedString(subjectId)).append("\n");
    sb.append("    subjectKey: ").append(toIndentedString(subjectKey)).append("\n");
    sb.append("    formId: ").append(toIndentedString(formId)).append("\n");
    sb.append("    formName: ").append(toIndentedString(formName)).append("\n");
    sb.append("    formKey: ").append(toIndentedString(formKey)).append("\n");
    sb.append("    revision: ").append(toIndentedString(revision)).append("\n");
    sb.append("    recordId: ").append(toIndentedString(recordId)).append("\n");
    sb.append("    variable: ").append(toIndentedString(variable)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("    codingId: ").append(toIndentedString(codingId)).append("\n");
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
    sb.append("    codedBy: ").append(toIndentedString(codedBy)).append("\n");
    sb.append("    reason: ").append(toIndentedString(reason)).append("\n");
    sb.append("    dictionaryName: ").append(toIndentedString(dictionaryName)).append("\n");
    sb.append("    dictionaryVersion: ").append(toIndentedString(dictionaryVersion)).append("\n");
    sb.append("    dateCoded: ").append(toIndentedString(dateCoded)).append("\n");
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

