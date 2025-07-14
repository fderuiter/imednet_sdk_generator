package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RecordRevision  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Unique system identifier for the record revision")
 /**
   * Unique system identifier for the record revision
  **/
  private Integer recordRevisionId;

  @ApiModelProperty(value = "Unique system identifier of the related record")
 /**
   * Unique system identifier of the related record
  **/
  private Integer recordId;

  @ApiModelProperty(value = "Client-assigned record OID (if any)")
 /**
   * Client-assigned record OID (if any)
  **/
  private String recordOid;

  @ApiModelProperty(value = "Revision number of the record (version of the record status)")
 /**
   * Revision number of the record (version of the record status)
  **/
  private Integer recordRevision;

  @ApiModelProperty(value = "Revision number of the data within the record")
 /**
   * Revision number of the data within the record
  **/
  private Integer dataRevision;

  @ApiModelProperty(value = "Status of the record at this revision (user-defined status label)")
 /**
   * Status of the record at this revision (user-defined status label)
  **/
  private String recordStatus;

  @ApiModelProperty(value = "Mednet subject ID related to the record")
 /**
   * Mednet subject ID related to the record
  **/
  private Integer subjectId;

  @ApiModelProperty(value = "Client-assigned subject OID related to the record")
 /**
   * Client-assigned subject OID related to the record
  **/
  private String subjectOid;

  @ApiModelProperty(value = "Subject display ID related to the record")
 /**
   * Subject display ID related to the record
  **/
  private String subjectKey;

  @ApiModelProperty(value = "Site ID related to the record")
 /**
   * Site ID related to the record
  **/
  private Integer siteId;

  @ApiModelProperty(value = "Form key of the form that the record belongs to")
 /**
   * Form key of the form that the record belongs to
  **/
  private String formKey;

  @ApiModelProperty(value = "Interval ID (visit definition) related to the record")
 /**
   * Interval ID (visit definition) related to the record
  **/
  private Integer intervalId;

  @ApiModelProperty(value = "Role name of the user who saved the record revision")
 /**
   * Role name of the user who saved the record revision
  **/
  private String role;

  @ApiModelProperty(value = "Username of the user who saved the record revision")
 /**
   * Username of the user who saved the record revision
  **/
  private String user;

  @ApiModelProperty(value = "Reason for change, if provided (for audit trail)")
 /**
   * Reason for change, if provided (for audit trail)
  **/
  private String reasonForChange;

  @ApiModelProperty(value = "Whether the record was deleted in this revision")
 /**
   * Whether the record was deleted in this revision
  **/
  private Boolean deleted;

  @ApiModelProperty(value = "Date when this record revision was created")
 /**
   * Date when this record revision was created
  **/
  private String dateCreated;
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

  public RecordRevision studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Unique system identifier for the record revision
   * @return recordRevisionId
  **/
  @JsonProperty("recordRevisionId")
  public Integer getRecordRevisionId() {
    return recordRevisionId;
  }

  public void setRecordRevisionId(Integer recordRevisionId) {
    this.recordRevisionId = recordRevisionId;
  }

  public RecordRevision recordRevisionId(Integer recordRevisionId) {
    this.recordRevisionId = recordRevisionId;
    return this;
  }

 /**
   * Unique system identifier of the related record
   * @return recordId
  **/
  @JsonProperty("recordId")
  public Integer getRecordId() {
    return recordId;
  }

  public void setRecordId(Integer recordId) {
    this.recordId = recordId;
  }

  public RecordRevision recordId(Integer recordId) {
    this.recordId = recordId;
    return this;
  }

 /**
   * Client-assigned record OID (if any)
   * @return recordOid
  **/
  @JsonProperty("recordOid")
  public String getRecordOid() {
    return recordOid;
  }

  public void setRecordOid(String recordOid) {
    this.recordOid = recordOid;
  }

  public RecordRevision recordOid(String recordOid) {
    this.recordOid = recordOid;
    return this;
  }

 /**
   * Revision number of the record (version of the record status)
   * @return recordRevision
  **/
  @JsonProperty("recordRevision")
  public Integer getRecordRevision() {
    return recordRevision;
  }

  public void setRecordRevision(Integer recordRevision) {
    this.recordRevision = recordRevision;
  }

  public RecordRevision recordRevision(Integer recordRevision) {
    this.recordRevision = recordRevision;
    return this;
  }

 /**
   * Revision number of the data within the record
   * @return dataRevision
  **/
  @JsonProperty("dataRevision")
  public Integer getDataRevision() {
    return dataRevision;
  }

  public void setDataRevision(Integer dataRevision) {
    this.dataRevision = dataRevision;
  }

  public RecordRevision dataRevision(Integer dataRevision) {
    this.dataRevision = dataRevision;
    return this;
  }

 /**
   * Status of the record at this revision (user-defined status label)
   * @return recordStatus
  **/
  @JsonProperty("recordStatus")
  public String getRecordStatus() {
    return recordStatus;
  }

  public void setRecordStatus(String recordStatus) {
    this.recordStatus = recordStatus;
  }

  public RecordRevision recordStatus(String recordStatus) {
    this.recordStatus = recordStatus;
    return this;
  }

 /**
   * Mednet subject ID related to the record
   * @return subjectId
  **/
  @JsonProperty("subjectId")
  public Integer getSubjectId() {
    return subjectId;
  }

  public void setSubjectId(Integer subjectId) {
    this.subjectId = subjectId;
  }

  public RecordRevision subjectId(Integer subjectId) {
    this.subjectId = subjectId;
    return this;
  }

 /**
   * Client-assigned subject OID related to the record
   * @return subjectOid
  **/
  @JsonProperty("subjectOid")
  public String getSubjectOid() {
    return subjectOid;
  }

  public void setSubjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
  }

  public RecordRevision subjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
    return this;
  }

 /**
   * Subject display ID related to the record
   * @return subjectKey
  **/
  @JsonProperty("subjectKey")
  public String getSubjectKey() {
    return subjectKey;
  }

  public void setSubjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
  }

  public RecordRevision subjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
    return this;
  }

 /**
   * Site ID related to the record
   * @return siteId
  **/
  @JsonProperty("siteId")
  public Integer getSiteId() {
    return siteId;
  }

  public void setSiteId(Integer siteId) {
    this.siteId = siteId;
  }

  public RecordRevision siteId(Integer siteId) {
    this.siteId = siteId;
    return this;
  }

 /**
   * Form key of the form that the record belongs to
   * @return formKey
  **/
  @JsonProperty("formKey")
  public String getFormKey() {
    return formKey;
  }

  public void setFormKey(String formKey) {
    this.formKey = formKey;
  }

  public RecordRevision formKey(String formKey) {
    this.formKey = formKey;
    return this;
  }

 /**
   * Interval ID (visit definition) related to the record
   * @return intervalId
  **/
  @JsonProperty("intervalId")
  public Integer getIntervalId() {
    return intervalId;
  }

  public void setIntervalId(Integer intervalId) {
    this.intervalId = intervalId;
  }

  public RecordRevision intervalId(Integer intervalId) {
    this.intervalId = intervalId;
    return this;
  }

 /**
   * Role name of the user who saved the record revision
   * @return role
  **/
  @JsonProperty("role")
  public String getRole() {
    return role;
  }

  public void setRole(String role) {
    this.role = role;
  }

  public RecordRevision role(String role) {
    this.role = role;
    return this;
  }

 /**
   * Username of the user who saved the record revision
   * @return user
  **/
  @JsonProperty("user")
  public String getUser() {
    return user;
  }

  public void setUser(String user) {
    this.user = user;
  }

  public RecordRevision user(String user) {
    this.user = user;
    return this;
  }

 /**
   * Reason for change, if provided (for audit trail)
   * @return reasonForChange
  **/
  @JsonProperty("reasonForChange")
  public String getReasonForChange() {
    return reasonForChange;
  }

  public void setReasonForChange(String reasonForChange) {
    this.reasonForChange = reasonForChange;
  }

  public RecordRevision reasonForChange(String reasonForChange) {
    this.reasonForChange = reasonForChange;
    return this;
  }

 /**
   * Whether the record was deleted in this revision
   * @return deleted
  **/
  @JsonProperty("deleted")
  public Boolean getDeleted() {
    return deleted;
  }

  public void setDeleted(Boolean deleted) {
    this.deleted = deleted;
  }

  public RecordRevision deleted(Boolean deleted) {
    this.deleted = deleted;
    return this;
  }

 /**
   * Date when this record revision was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public RecordRevision dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
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
    RecordRevision recordRevision = (RecordRevision) o;
    return Objects.equals(this.studyKey, recordRevision.studyKey) &&
        Objects.equals(this.recordRevisionId, recordRevision.recordRevisionId) &&
        Objects.equals(this.recordId, recordRevision.recordId) &&
        Objects.equals(this.recordOid, recordRevision.recordOid) &&
        Objects.equals(this.recordRevision, recordRevision.recordRevision) &&
        Objects.equals(this.dataRevision, recordRevision.dataRevision) &&
        Objects.equals(this.recordStatus, recordRevision.recordStatus) &&
        Objects.equals(this.subjectId, recordRevision.subjectId) &&
        Objects.equals(this.subjectOid, recordRevision.subjectOid) &&
        Objects.equals(this.subjectKey, recordRevision.subjectKey) &&
        Objects.equals(this.siteId, recordRevision.siteId) &&
        Objects.equals(this.formKey, recordRevision.formKey) &&
        Objects.equals(this.intervalId, recordRevision.intervalId) &&
        Objects.equals(this.role, recordRevision.role) &&
        Objects.equals(this.user, recordRevision.user) &&
        Objects.equals(this.reasonForChange, recordRevision.reasonForChange) &&
        Objects.equals(this.deleted, recordRevision.deleted) &&
        Objects.equals(this.dateCreated, recordRevision.dateCreated);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, recordRevisionId, recordId, recordOid, recordRevision, dataRevision, recordStatus, subjectId, subjectOid, subjectKey, siteId, formKey, intervalId, role, user, reasonForChange, deleted, dateCreated);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RecordRevision {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    recordRevisionId: ").append(toIndentedString(recordRevisionId)).append("\n");
    sb.append("    recordId: ").append(toIndentedString(recordId)).append("\n");
    sb.append("    recordOid: ").append(toIndentedString(recordOid)).append("\n");
    sb.append("    recordRevision: ").append(toIndentedString(recordRevision)).append("\n");
    sb.append("    dataRevision: ").append(toIndentedString(dataRevision)).append("\n");
    sb.append("    recordStatus: ").append(toIndentedString(recordStatus)).append("\n");
    sb.append("    subjectId: ").append(toIndentedString(subjectId)).append("\n");
    sb.append("    subjectOid: ").append(toIndentedString(subjectOid)).append("\n");
    sb.append("    subjectKey: ").append(toIndentedString(subjectKey)).append("\n");
    sb.append("    siteId: ").append(toIndentedString(siteId)).append("\n");
    sb.append("    formKey: ").append(toIndentedString(formKey)).append("\n");
    sb.append("    intervalId: ").append(toIndentedString(intervalId)).append("\n");
    sb.append("    role: ").append(toIndentedString(role)).append("\n");
    sb.append("    user: ").append(toIndentedString(user)).append("\n");
    sb.append("    reasonForChange: ").append(toIndentedString(reasonForChange)).append("\n");
    sb.append("    deleted: ").append(toIndentedString(deleted)).append("\n");
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
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

