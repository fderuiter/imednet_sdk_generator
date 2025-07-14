package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.openapitools.model.Keyword;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Record  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Interval ID (visit definition) that this record is associated with")
 /**
   * Interval ID (visit definition) that this record is associated with
  **/
  private Integer intervalId;

  @ApiModelProperty(value = "Form ID of the form this record instance belongs to")
 /**
   * Form ID of the form this record instance belongs to
  **/
  private Integer formId;

  @ApiModelProperty(value = "Form key of the form for this record instance")
 /**
   * Form key of the form for this record instance
  **/
  private String formKey;

  @ApiModelProperty(value = "Site ID associated with the record")
 /**
   * Site ID associated with the record
  **/
  private Integer siteId;

  @ApiModelProperty(value = "Unique record ID")
 /**
   * Unique record ID
  **/
  private Integer recordId;

  @ApiModelProperty(value = "Client-assigned record OID")
 /**
   * Client-assigned record OID
  **/
  private String recordOid;

  @ApiModelProperty(value = "Type of record (e.g., SUBJECT for subject-related forms)")
 /**
   * Type of record (e.g., SUBJECT for subject-related forms)
  **/
  private String recordType;

  @ApiModelProperty(value = "Current status of the record (e.g., Record Incomplete, Record Complete)")
 /**
   * Current status of the record (e.g., Record Incomplete, Record Complete)
  **/
  private String recordStatus;

  @ApiModelProperty(value = "Whether the record is marked as deleted")
 /**
   * Whether the record is marked as deleted
  **/
  private Boolean deleted;

  @ApiModelProperty(value = "Date when this record was created")
 /**
   * Date when this record was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Date when this record was last modified")
 /**
   * Date when this record was last modified
  **/
  private String dateModified;

  @ApiModelProperty(value = "Mednet subject ID that this record is associated with")
 /**
   * Mednet subject ID that this record is associated with
  **/
  private Integer subjectId;

  @ApiModelProperty(value = "Client-assigned subject OID for the subject this record is associated with")
 /**
   * Client-assigned subject OID for the subject this record is associated with
  **/
  private String subjectOid;

  @ApiModelProperty(value = "Subject display ID that this record is associated with")
 /**
   * Subject display ID that this record is associated with
  **/
  private String subjectKey;

  @ApiModelProperty(value = "Visit instance ID that this record is associated with (if applicable)")
 /**
   * Visit instance ID that this record is associated with (if applicable)
  **/
  private Integer visitId;

  @ApiModelProperty(value = "Record ID of the parent record if this record is a subrecord (if applicable)")
 /**
   * Record ID of the parent record if this record is a subrecord (if applicable)
  **/
  private Integer parentRecordId;

  @ApiModelProperty(value = "List of keywords associated with the record")
 /**
   * List of keywords associated with the record
  **/
  private List<Keyword> keywords = new ArrayList<>();

  @ApiModelProperty(value = "Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.")
 /**
   * Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.
  **/
  private Map<String, Object> recordData = new HashMap<>();
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

  public Record studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Interval ID (visit definition) that this record is associated with
   * @return intervalId
  **/
  @JsonProperty("intervalId")
  public Integer getIntervalId() {
    return intervalId;
  }

  public void setIntervalId(Integer intervalId) {
    this.intervalId = intervalId;
  }

  public Record intervalId(Integer intervalId) {
    this.intervalId = intervalId;
    return this;
  }

 /**
   * Form ID of the form this record instance belongs to
   * @return formId
  **/
  @JsonProperty("formId")
  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }

  public Record formId(Integer formId) {
    this.formId = formId;
    return this;
  }

 /**
   * Form key of the form for this record instance
   * @return formKey
  **/
  @JsonProperty("formKey")
  public String getFormKey() {
    return formKey;
  }

  public void setFormKey(String formKey) {
    this.formKey = formKey;
  }

  public Record formKey(String formKey) {
    this.formKey = formKey;
    return this;
  }

 /**
   * Site ID associated with the record
   * @return siteId
  **/
  @JsonProperty("siteId")
  public Integer getSiteId() {
    return siteId;
  }

  public void setSiteId(Integer siteId) {
    this.siteId = siteId;
  }

  public Record siteId(Integer siteId) {
    this.siteId = siteId;
    return this;
  }

 /**
   * Unique record ID
   * @return recordId
  **/
  @JsonProperty("recordId")
  public Integer getRecordId() {
    return recordId;
  }

  public void setRecordId(Integer recordId) {
    this.recordId = recordId;
  }

  public Record recordId(Integer recordId) {
    this.recordId = recordId;
    return this;
  }

 /**
   * Client-assigned record OID
   * @return recordOid
  **/
  @JsonProperty("recordOid")
  public String getRecordOid() {
    return recordOid;
  }

  public void setRecordOid(String recordOid) {
    this.recordOid = recordOid;
  }

  public Record recordOid(String recordOid) {
    this.recordOid = recordOid;
    return this;
  }

 /**
   * Type of record (e.g., SUBJECT for subject-related forms)
   * @return recordType
  **/
  @JsonProperty("recordType")
  public String getRecordType() {
    return recordType;
  }

  public void setRecordType(String recordType) {
    this.recordType = recordType;
  }

  public Record recordType(String recordType) {
    this.recordType = recordType;
    return this;
  }

 /**
   * Current status of the record (e.g., Record Incomplete, Record Complete)
   * @return recordStatus
  **/
  @JsonProperty("recordStatus")
  public String getRecordStatus() {
    return recordStatus;
  }

  public void setRecordStatus(String recordStatus) {
    this.recordStatus = recordStatus;
  }

  public Record recordStatus(String recordStatus) {
    this.recordStatus = recordStatus;
    return this;
  }

 /**
   * Whether the record is marked as deleted
   * @return deleted
  **/
  @JsonProperty("deleted")
  public Boolean getDeleted() {
    return deleted;
  }

  public void setDeleted(Boolean deleted) {
    this.deleted = deleted;
  }

  public Record deleted(Boolean deleted) {
    this.deleted = deleted;
    return this;
  }

 /**
   * Date when this record was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Record dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Date when this record was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public String getDateModified() {
    return dateModified;
  }

  public void setDateModified(String dateModified) {
    this.dateModified = dateModified;
  }

  public Record dateModified(String dateModified) {
    this.dateModified = dateModified;
    return this;
  }

 /**
   * Mednet subject ID that this record is associated with
   * @return subjectId
  **/
  @JsonProperty("subjectId")
  public Integer getSubjectId() {
    return subjectId;
  }

  public void setSubjectId(Integer subjectId) {
    this.subjectId = subjectId;
  }

  public Record subjectId(Integer subjectId) {
    this.subjectId = subjectId;
    return this;
  }

 /**
   * Client-assigned subject OID for the subject this record is associated with
   * @return subjectOid
  **/
  @JsonProperty("subjectOid")
  public String getSubjectOid() {
    return subjectOid;
  }

  public void setSubjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
  }

  public Record subjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
    return this;
  }

 /**
   * Subject display ID that this record is associated with
   * @return subjectKey
  **/
  @JsonProperty("subjectKey")
  public String getSubjectKey() {
    return subjectKey;
  }

  public void setSubjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
  }

  public Record subjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
    return this;
  }

 /**
   * Visit instance ID that this record is associated with (if applicable)
   * @return visitId
  **/
  @JsonProperty("visitId")
  public Integer getVisitId() {
    return visitId;
  }

  public void setVisitId(Integer visitId) {
    this.visitId = visitId;
  }

  public Record visitId(Integer visitId) {
    this.visitId = visitId;
    return this;
  }

 /**
   * Record ID of the parent record if this record is a subrecord (if applicable)
   * @return parentRecordId
  **/
  @JsonProperty("parentRecordId")
  public Integer getParentRecordId() {
    return parentRecordId;
  }

  public void setParentRecordId(Integer parentRecordId) {
    this.parentRecordId = parentRecordId;
  }

  public Record parentRecordId(Integer parentRecordId) {
    this.parentRecordId = parentRecordId;
    return this;
  }

 /**
   * List of keywords associated with the record
   * @return keywords
  **/
  @JsonProperty("keywords")
  public List<Keyword> getKeywords() {
    return keywords;
  }

  public void setKeywords(List<Keyword> keywords) {
    this.keywords = keywords;
  }

  public Record keywords(List<Keyword> keywords) {
    this.keywords = keywords;
    return this;
  }

  public Record addKeywordsItem(Keyword keywordsItem) {
    this.keywords.add(keywordsItem);
    return this;
  }

 /**
   * Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.
   * @return recordData
  **/
  @JsonProperty("recordData")
  public Map<String, Object> getRecordData() {
    return recordData;
  }

  public void setRecordData(Map<String, Object> recordData) {
    this.recordData = recordData;
  }

  public Record recordData(Map<String, Object> recordData) {
    this.recordData = recordData;
    return this;
  }

  public Record putRecordDataItem(String key, Object recordDataItem) {
    this.recordData.put(key, recordDataItem);
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
    Record record = (Record) o;
    return Objects.equals(this.studyKey, record.studyKey) &&
        Objects.equals(this.intervalId, record.intervalId) &&
        Objects.equals(this.formId, record.formId) &&
        Objects.equals(this.formKey, record.formKey) &&
        Objects.equals(this.siteId, record.siteId) &&
        Objects.equals(this.recordId, record.recordId) &&
        Objects.equals(this.recordOid, record.recordOid) &&
        Objects.equals(this.recordType, record.recordType) &&
        Objects.equals(this.recordStatus, record.recordStatus) &&
        Objects.equals(this.deleted, record.deleted) &&
        Objects.equals(this.dateCreated, record.dateCreated) &&
        Objects.equals(this.dateModified, record.dateModified) &&
        Objects.equals(this.subjectId, record.subjectId) &&
        Objects.equals(this.subjectOid, record.subjectOid) &&
        Objects.equals(this.subjectKey, record.subjectKey) &&
        Objects.equals(this.visitId, record.visitId) &&
        Objects.equals(this.parentRecordId, record.parentRecordId) &&
        Objects.equals(this.keywords, record.keywords) &&
        Objects.equals(this.recordData, record.recordData);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, intervalId, formId, formKey, siteId, recordId, recordOid, recordType, recordStatus, deleted, dateCreated, dateModified, subjectId, subjectOid, subjectKey, visitId, parentRecordId, keywords, recordData);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Record {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    intervalId: ").append(toIndentedString(intervalId)).append("\n");
    sb.append("    formId: ").append(toIndentedString(formId)).append("\n");
    sb.append("    formKey: ").append(toIndentedString(formKey)).append("\n");
    sb.append("    siteId: ").append(toIndentedString(siteId)).append("\n");
    sb.append("    recordId: ").append(toIndentedString(recordId)).append("\n");
    sb.append("    recordOid: ").append(toIndentedString(recordOid)).append("\n");
    sb.append("    recordType: ").append(toIndentedString(recordType)).append("\n");
    sb.append("    recordStatus: ").append(toIndentedString(recordStatus)).append("\n");
    sb.append("    deleted: ").append(toIndentedString(deleted)).append("\n");
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
    sb.append("    dateModified: ").append(toIndentedString(dateModified)).append("\n");
    sb.append("    subjectId: ").append(toIndentedString(subjectId)).append("\n");
    sb.append("    subjectOid: ").append(toIndentedString(subjectOid)).append("\n");
    sb.append("    subjectKey: ").append(toIndentedString(subjectKey)).append("\n");
    sb.append("    visitId: ").append(toIndentedString(visitId)).append("\n");
    sb.append("    parentRecordId: ").append(toIndentedString(parentRecordId)).append("\n");
    sb.append("    keywords: ").append(toIndentedString(keywords)).append("\n");
    sb.append("    recordData: ").append(toIndentedString(recordData)).append("\n");
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

