package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Visit  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Unique system identifier for the subject visit instance")
 /**
   * Unique system identifier for the subject visit instance
  **/
  private Integer visitId;

  @ApiModelProperty(value = "Unique system identifier of the interval definition for this visit")
 /**
   * Unique system identifier of the interval definition for this visit
  **/
  private Integer intervalId;

  @ApiModelProperty(value = "Name of the interval (visit) for this visit instance")
 /**
   * Name of the interval (visit) for this visit instance
  **/
  private String intervalName;

  @ApiModelProperty(value = "Mednet subject ID of the subject")
 /**
   * Mednet subject ID of the subject
  **/
  private Integer subjectId;

  @ApiModelProperty(value = "Protocol-assigned subject identifier")
 /**
   * Protocol-assigned subject identifier
  **/
  private String subjectKey;

  @ApiModelProperty(value = "Start date of the visit window (in YYYY-MM-DD format)")
 /**
   * Start date of the visit window (in YYYY-MM-DD format)
  **/
  private String startDate;

  @ApiModelProperty(value = "End date of the visit window (in YYYY-MM-DD format)")
 /**
   * End date of the visit window (in YYYY-MM-DD format)
  **/
  private String endDate;

  @ApiModelProperty(value = "Due date of the visit (in YYYY-MM-DD format), if applicable")
 /**
   * Due date of the visit (in YYYY-MM-DD format), if applicable
  **/
  private String dueDate;

  @ApiModelProperty(value = "Actual date the visit took place (in YYYY-MM-DD format)")
 /**
   * Actual date the visit took place (in YYYY-MM-DD format)
  **/
  private String visitDate;

  @ApiModelProperty(value = "Name of the form used to capture the actual visit date")
 /**
   * Name of the form used to capture the actual visit date
  **/
  private String visitDateForm;

  @ApiModelProperty(value = "Variable name of the field capturing the actual visit date")
 /**
   * Variable name of the field capturing the actual visit date
  **/
  private String visitDateQuestion;

  @ApiModelProperty(value = "Whether the visit instance is marked as deleted")
 /**
   * Whether the visit instance is marked as deleted
  **/
  private Boolean deleted;

  @ApiModelProperty(value = "Date when this visit record was created")
 /**
   * Date when this visit record was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Date when this visit record was last modified")
 /**
   * Date when this visit record was last modified
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

  public Visit studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Unique system identifier for the subject visit instance
   * @return visitId
  **/
  @JsonProperty("visitId")
  public Integer getVisitId() {
    return visitId;
  }

  public void setVisitId(Integer visitId) {
    this.visitId = visitId;
  }

  public Visit visitId(Integer visitId) {
    this.visitId = visitId;
    return this;
  }

 /**
   * Unique system identifier of the interval definition for this visit
   * @return intervalId
  **/
  @JsonProperty("intervalId")
  public Integer getIntervalId() {
    return intervalId;
  }

  public void setIntervalId(Integer intervalId) {
    this.intervalId = intervalId;
  }

  public Visit intervalId(Integer intervalId) {
    this.intervalId = intervalId;
    return this;
  }

 /**
   * Name of the interval (visit) for this visit instance
   * @return intervalName
  **/
  @JsonProperty("intervalName")
  public String getIntervalName() {
    return intervalName;
  }

  public void setIntervalName(String intervalName) {
    this.intervalName = intervalName;
  }

  public Visit intervalName(String intervalName) {
    this.intervalName = intervalName;
    return this;
  }

 /**
   * Mednet subject ID of the subject
   * @return subjectId
  **/
  @JsonProperty("subjectId")
  public Integer getSubjectId() {
    return subjectId;
  }

  public void setSubjectId(Integer subjectId) {
    this.subjectId = subjectId;
  }

  public Visit subjectId(Integer subjectId) {
    this.subjectId = subjectId;
    return this;
  }

 /**
   * Protocol-assigned subject identifier
   * @return subjectKey
  **/
  @JsonProperty("subjectKey")
  public String getSubjectKey() {
    return subjectKey;
  }

  public void setSubjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
  }

  public Visit subjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
    return this;
  }

 /**
   * Start date of the visit window (in YYYY-MM-DD format)
   * @return startDate
  **/
  @JsonProperty("startDate")
  public String getStartDate() {
    return startDate;
  }

  public void setStartDate(String startDate) {
    this.startDate = startDate;
  }

  public Visit startDate(String startDate) {
    this.startDate = startDate;
    return this;
  }

 /**
   * End date of the visit window (in YYYY-MM-DD format)
   * @return endDate
  **/
  @JsonProperty("endDate")
  public String getEndDate() {
    return endDate;
  }

  public void setEndDate(String endDate) {
    this.endDate = endDate;
  }

  public Visit endDate(String endDate) {
    this.endDate = endDate;
    return this;
  }

 /**
   * Due date of the visit (in YYYY-MM-DD format), if applicable
   * @return dueDate
  **/
  @JsonProperty("dueDate")
  public String getDueDate() {
    return dueDate;
  }

  public void setDueDate(String dueDate) {
    this.dueDate = dueDate;
  }

  public Visit dueDate(String dueDate) {
    this.dueDate = dueDate;
    return this;
  }

 /**
   * Actual date the visit took place (in YYYY-MM-DD format)
   * @return visitDate
  **/
  @JsonProperty("visitDate")
  public String getVisitDate() {
    return visitDate;
  }

  public void setVisitDate(String visitDate) {
    this.visitDate = visitDate;
  }

  public Visit visitDate(String visitDate) {
    this.visitDate = visitDate;
    return this;
  }

 /**
   * Name of the form used to capture the actual visit date
   * @return visitDateForm
  **/
  @JsonProperty("visitDateForm")
  public String getVisitDateForm() {
    return visitDateForm;
  }

  public void setVisitDateForm(String visitDateForm) {
    this.visitDateForm = visitDateForm;
  }

  public Visit visitDateForm(String visitDateForm) {
    this.visitDateForm = visitDateForm;
    return this;
  }

 /**
   * Variable name of the field capturing the actual visit date
   * @return visitDateQuestion
  **/
  @JsonProperty("visitDateQuestion")
  public String getVisitDateQuestion() {
    return visitDateQuestion;
  }

  public void setVisitDateQuestion(String visitDateQuestion) {
    this.visitDateQuestion = visitDateQuestion;
  }

  public Visit visitDateQuestion(String visitDateQuestion) {
    this.visitDateQuestion = visitDateQuestion;
    return this;
  }

 /**
   * Whether the visit instance is marked as deleted
   * @return deleted
  **/
  @JsonProperty("deleted")
  public Boolean getDeleted() {
    return deleted;
  }

  public void setDeleted(Boolean deleted) {
    this.deleted = deleted;
  }

  public Visit deleted(Boolean deleted) {
    this.deleted = deleted;
    return this;
  }

 /**
   * Date when this visit record was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Visit dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Date when this visit record was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public String getDateModified() {
    return dateModified;
  }

  public void setDateModified(String dateModified) {
    this.dateModified = dateModified;
  }

  public Visit dateModified(String dateModified) {
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
    Visit visit = (Visit) o;
    return Objects.equals(this.studyKey, visit.studyKey) &&
        Objects.equals(this.visitId, visit.visitId) &&
        Objects.equals(this.intervalId, visit.intervalId) &&
        Objects.equals(this.intervalName, visit.intervalName) &&
        Objects.equals(this.subjectId, visit.subjectId) &&
        Objects.equals(this.subjectKey, visit.subjectKey) &&
        Objects.equals(this.startDate, visit.startDate) &&
        Objects.equals(this.endDate, visit.endDate) &&
        Objects.equals(this.dueDate, visit.dueDate) &&
        Objects.equals(this.visitDate, visit.visitDate) &&
        Objects.equals(this.visitDateForm, visit.visitDateForm) &&
        Objects.equals(this.visitDateQuestion, visit.visitDateQuestion) &&
        Objects.equals(this.deleted, visit.deleted) &&
        Objects.equals(this.dateCreated, visit.dateCreated) &&
        Objects.equals(this.dateModified, visit.dateModified);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, visitId, intervalId, intervalName, subjectId, subjectKey, startDate, endDate, dueDate, visitDate, visitDateForm, visitDateQuestion, deleted, dateCreated, dateModified);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Visit {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    visitId: ").append(toIndentedString(visitId)).append("\n");
    sb.append("    intervalId: ").append(toIndentedString(intervalId)).append("\n");
    sb.append("    intervalName: ").append(toIndentedString(intervalName)).append("\n");
    sb.append("    subjectId: ").append(toIndentedString(subjectId)).append("\n");
    sb.append("    subjectKey: ").append(toIndentedString(subjectKey)).append("\n");
    sb.append("    startDate: ").append(toIndentedString(startDate)).append("\n");
    sb.append("    endDate: ").append(toIndentedString(endDate)).append("\n");
    sb.append("    dueDate: ").append(toIndentedString(dueDate)).append("\n");
    sb.append("    visitDate: ").append(toIndentedString(visitDate)).append("\n");
    sb.append("    visitDateForm: ").append(toIndentedString(visitDateForm)).append("\n");
    sb.append("    visitDateQuestion: ").append(toIndentedString(visitDateQuestion)).append("\n");
    sb.append("    deleted: ").append(toIndentedString(deleted)).append("\n");
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

