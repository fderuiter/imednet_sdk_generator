package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.Keyword;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Subject  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Mednet subject ID (internal numeric ID)")
 /**
   * Mednet subject ID (internal numeric ID)
  **/
  private Integer subjectId;

  @ApiModelProperty(value = "Client-assigned subject object identifier (OID)")
 /**
   * Client-assigned subject object identifier (OID)
  **/
  private String subjectOid;

  @ApiModelProperty(value = "Protocol-assigned subject identifier (display ID)")
 /**
   * Protocol-assigned subject identifier (display ID)
  **/
  private String subjectKey;

  @ApiModelProperty(value = "Current status of the subject (e.g., Enrolled)")
 /**
   * Current status of the subject (e.g., Enrolled)
  **/
  private String subjectStatus;

  @ApiModelProperty(value = "Mednet site ID the subject is associated with")
 /**
   * Mednet site ID the subject is associated with
  **/
  private Integer siteId;

  @ApiModelProperty(value = "Name of the site the subject is associated with")
 /**
   * Name of the site the subject is associated with
  **/
  private String siteName;

  @ApiModelProperty(value = "Whether the subject is marked as deleted")
 /**
   * Whether the subject is marked as deleted
  **/
  private Boolean deleted;

  @ApiModelProperty(value = "Subject’s enrollment start date")
 /**
   * Subject’s enrollment start date
  **/
  private String enrollmentStartDate;

  @ApiModelProperty(value = "Date when this subject record was created")
 /**
   * Date when this subject record was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Date when this subject record was last modified")
 /**
   * Date when this subject record was last modified
  **/
  private String dateModified;

  @ApiModelProperty(value = "List of keywords associated with the subject")
 /**
   * List of keywords associated with the subject
  **/
  private List<Keyword> keywords = new ArrayList<>();
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

  public Subject studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Mednet subject ID (internal numeric ID)
   * @return subjectId
  **/
  @JsonProperty("subjectId")
  public Integer getSubjectId() {
    return subjectId;
  }

  public void setSubjectId(Integer subjectId) {
    this.subjectId = subjectId;
  }

  public Subject subjectId(Integer subjectId) {
    this.subjectId = subjectId;
    return this;
  }

 /**
   * Client-assigned subject object identifier (OID)
   * @return subjectOid
  **/
  @JsonProperty("subjectOid")
  public String getSubjectOid() {
    return subjectOid;
  }

  public void setSubjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
  }

  public Subject subjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
    return this;
  }

 /**
   * Protocol-assigned subject identifier (display ID)
   * @return subjectKey
  **/
  @JsonProperty("subjectKey")
  public String getSubjectKey() {
    return subjectKey;
  }

  public void setSubjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
  }

  public Subject subjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
    return this;
  }

 /**
   * Current status of the subject (e.g., Enrolled)
   * @return subjectStatus
  **/
  @JsonProperty("subjectStatus")
  public String getSubjectStatus() {
    return subjectStatus;
  }

  public void setSubjectStatus(String subjectStatus) {
    this.subjectStatus = subjectStatus;
  }

  public Subject subjectStatus(String subjectStatus) {
    this.subjectStatus = subjectStatus;
    return this;
  }

 /**
   * Mednet site ID the subject is associated with
   * @return siteId
  **/
  @JsonProperty("siteId")
  public Integer getSiteId() {
    return siteId;
  }

  public void setSiteId(Integer siteId) {
    this.siteId = siteId;
  }

  public Subject siteId(Integer siteId) {
    this.siteId = siteId;
    return this;
  }

 /**
   * Name of the site the subject is associated with
   * @return siteName
  **/
  @JsonProperty("siteName")
  public String getSiteName() {
    return siteName;
  }

  public void setSiteName(String siteName) {
    this.siteName = siteName;
  }

  public Subject siteName(String siteName) {
    this.siteName = siteName;
    return this;
  }

 /**
   * Whether the subject is marked as deleted
   * @return deleted
  **/
  @JsonProperty("deleted")
  public Boolean getDeleted() {
    return deleted;
  }

  public void setDeleted(Boolean deleted) {
    this.deleted = deleted;
  }

  public Subject deleted(Boolean deleted) {
    this.deleted = deleted;
    return this;
  }

 /**
   * Subject’s enrollment start date
   * @return enrollmentStartDate
  **/
  @JsonProperty("enrollmentStartDate")
  public String getEnrollmentStartDate() {
    return enrollmentStartDate;
  }

  public void setEnrollmentStartDate(String enrollmentStartDate) {
    this.enrollmentStartDate = enrollmentStartDate;
  }

  public Subject enrollmentStartDate(String enrollmentStartDate) {
    this.enrollmentStartDate = enrollmentStartDate;
    return this;
  }

 /**
   * Date when this subject record was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Subject dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Date when this subject record was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public String getDateModified() {
    return dateModified;
  }

  public void setDateModified(String dateModified) {
    this.dateModified = dateModified;
  }

  public Subject dateModified(String dateModified) {
    this.dateModified = dateModified;
    return this;
  }

 /**
   * List of keywords associated with the subject
   * @return keywords
  **/
  @JsonProperty("keywords")
  public List<Keyword> getKeywords() {
    return keywords;
  }

  public void setKeywords(List<Keyword> keywords) {
    this.keywords = keywords;
  }

  public Subject keywords(List<Keyword> keywords) {
    this.keywords = keywords;
    return this;
  }

  public Subject addKeywordsItem(Keyword keywordsItem) {
    this.keywords.add(keywordsItem);
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
    Subject subject = (Subject) o;
    return Objects.equals(this.studyKey, subject.studyKey) &&
        Objects.equals(this.subjectId, subject.subjectId) &&
        Objects.equals(this.subjectOid, subject.subjectOid) &&
        Objects.equals(this.subjectKey, subject.subjectKey) &&
        Objects.equals(this.subjectStatus, subject.subjectStatus) &&
        Objects.equals(this.siteId, subject.siteId) &&
        Objects.equals(this.siteName, subject.siteName) &&
        Objects.equals(this.deleted, subject.deleted) &&
        Objects.equals(this.enrollmentStartDate, subject.enrollmentStartDate) &&
        Objects.equals(this.dateCreated, subject.dateCreated) &&
        Objects.equals(this.dateModified, subject.dateModified) &&
        Objects.equals(this.keywords, subject.keywords);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, subjectId, subjectOid, subjectKey, subjectStatus, siteId, siteName, deleted, enrollmentStartDate, dateCreated, dateModified, keywords);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Subject {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    subjectId: ").append(toIndentedString(subjectId)).append("\n");
    sb.append("    subjectOid: ").append(toIndentedString(subjectOid)).append("\n");
    sb.append("    subjectKey: ").append(toIndentedString(subjectKey)).append("\n");
    sb.append("    subjectStatus: ").append(toIndentedString(subjectStatus)).append("\n");
    sb.append("    siteId: ").append(toIndentedString(siteId)).append("\n");
    sb.append("    siteName: ").append(toIndentedString(siteName)).append("\n");
    sb.append("    deleted: ").append(toIndentedString(deleted)).append("\n");
    sb.append("    enrollmentStartDate: ").append(toIndentedString(enrollmentStartDate)).append("\n");
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
    sb.append("    dateModified: ").append(toIndentedString(dateModified)).append("\n");
    sb.append("    keywords: ").append(toIndentedString(keywords)).append("\n");
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

