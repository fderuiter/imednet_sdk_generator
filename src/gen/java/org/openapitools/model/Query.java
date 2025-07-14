package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.QueryComment;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Query  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Mednet subject ID associated with the query (if applicable)")
 /**
   * Mednet subject ID associated with the query (if applicable)
  **/
  private Integer subjectId;

  @ApiModelProperty(value = "Client-assigned subject OID (if applicable)")
 /**
   * Client-assigned subject OID (if applicable)
  **/
  private String subjectOid;

  @ApiModelProperty(value = "Category/type of the query (e.g., subject, record, question)")
 /**
   * Category/type of the query (e.g., subject, record, question)
  **/
  private String annotationType;

  @ApiModelProperty(value = "Unique system identifier for the query")
 /**
   * Unique system identifier for the query
  **/
  private Integer annotationId;

  @ApiModelProperty(value = "System text identifier for the query type/location (subject, record, question)")
 /**
   * System text identifier for the query type/location (subject, record, question)
  **/
  private String type;

  @ApiModelProperty(value = "Description of the query (e.g., reason or context)")
 /**
   * Description of the query (e.g., reason or context)
  **/
  private String description;

  @ApiModelProperty(value = "Record ID associated with the query (if applicable)")
 /**
   * Record ID associated with the query (if applicable)
  **/
  private Integer recordId;

  @ApiModelProperty(value = "Variable name (field) associated with the query (if applicable)")
 /**
   * Variable name (field) associated with the query (if applicable)
  **/
  private String variable;

  @ApiModelProperty(value = "Subject display ID associated with the query (if applicable)")
 /**
   * Subject display ID associated with the query (if applicable)
  **/
  private String subjectKey;

  @ApiModelProperty(value = "Date when the query was created")
 /**
   * Date when the query was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Date when the query was last modified")
 /**
   * Date when the query was last modified
  **/
  private String dateModified;

  @ApiModelProperty(value = "History of comments/actions on the query")
 /**
   * History of comments/actions on the query
  **/
  private List<QueryComment> queryComments = new ArrayList<>();
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

  public Query studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Mednet subject ID associated with the query (if applicable)
   * @return subjectId
  **/
  @JsonProperty("subjectId")
  public Integer getSubjectId() {
    return subjectId;
  }

  public void setSubjectId(Integer subjectId) {
    this.subjectId = subjectId;
  }

  public Query subjectId(Integer subjectId) {
    this.subjectId = subjectId;
    return this;
  }

 /**
   * Client-assigned subject OID (if applicable)
   * @return subjectOid
  **/
  @JsonProperty("subjectOid")
  public String getSubjectOid() {
    return subjectOid;
  }

  public void setSubjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
  }

  public Query subjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
    return this;
  }

 /**
   * Category/type of the query (e.g., subject, record, question)
   * @return annotationType
  **/
  @JsonProperty("annotationType")
  public String getAnnotationType() {
    return annotationType;
  }

  public void setAnnotationType(String annotationType) {
    this.annotationType = annotationType;
  }

  public Query annotationType(String annotationType) {
    this.annotationType = annotationType;
    return this;
  }

 /**
   * Unique system identifier for the query
   * @return annotationId
  **/
  @JsonProperty("annotationId")
  public Integer getAnnotationId() {
    return annotationId;
  }

  public void setAnnotationId(Integer annotationId) {
    this.annotationId = annotationId;
  }

  public Query annotationId(Integer annotationId) {
    this.annotationId = annotationId;
    return this;
  }

 /**
   * System text identifier for the query type/location (subject, record, question)
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Query type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Description of the query (e.g., reason or context)
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Query description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Record ID associated with the query (if applicable)
   * @return recordId
  **/
  @JsonProperty("recordId")
  public Integer getRecordId() {
    return recordId;
  }

  public void setRecordId(Integer recordId) {
    this.recordId = recordId;
  }

  public Query recordId(Integer recordId) {
    this.recordId = recordId;
    return this;
  }

 /**
   * Variable name (field) associated with the query (if applicable)
   * @return variable
  **/
  @JsonProperty("variable")
  public String getVariable() {
    return variable;
  }

  public void setVariable(String variable) {
    this.variable = variable;
  }

  public Query variable(String variable) {
    this.variable = variable;
    return this;
  }

 /**
   * Subject display ID associated with the query (if applicable)
   * @return subjectKey
  **/
  @JsonProperty("subjectKey")
  public String getSubjectKey() {
    return subjectKey;
  }

  public void setSubjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
  }

  public Query subjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
    return this;
  }

 /**
   * Date when the query was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Query dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Date when the query was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public String getDateModified() {
    return dateModified;
  }

  public void setDateModified(String dateModified) {
    this.dateModified = dateModified;
  }

  public Query dateModified(String dateModified) {
    this.dateModified = dateModified;
    return this;
  }

 /**
   * History of comments/actions on the query
   * @return queryComments
  **/
  @JsonProperty("queryComments")
  public List<QueryComment> getQueryComments() {
    return queryComments;
  }

  public void setQueryComments(List<QueryComment> queryComments) {
    this.queryComments = queryComments;
  }

  public Query queryComments(List<QueryComment> queryComments) {
    this.queryComments = queryComments;
    return this;
  }

  public Query addQueryCommentsItem(QueryComment queryCommentsItem) {
    this.queryComments.add(queryCommentsItem);
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
    Query query = (Query) o;
    return Objects.equals(this.studyKey, query.studyKey) &&
        Objects.equals(this.subjectId, query.subjectId) &&
        Objects.equals(this.subjectOid, query.subjectOid) &&
        Objects.equals(this.annotationType, query.annotationType) &&
        Objects.equals(this.annotationId, query.annotationId) &&
        Objects.equals(this.type, query.type) &&
        Objects.equals(this.description, query.description) &&
        Objects.equals(this.recordId, query.recordId) &&
        Objects.equals(this.variable, query.variable) &&
        Objects.equals(this.subjectKey, query.subjectKey) &&
        Objects.equals(this.dateCreated, query.dateCreated) &&
        Objects.equals(this.dateModified, query.dateModified) &&
        Objects.equals(this.queryComments, query.queryComments);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, subjectId, subjectOid, annotationType, annotationId, type, description, recordId, variable, subjectKey, dateCreated, dateModified, queryComments);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Query {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    subjectId: ").append(toIndentedString(subjectId)).append("\n");
    sb.append("    subjectOid: ").append(toIndentedString(subjectOid)).append("\n");
    sb.append("    annotationType: ").append(toIndentedString(annotationType)).append("\n");
    sb.append("    annotationId: ").append(toIndentedString(annotationId)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    recordId: ").append(toIndentedString(recordId)).append("\n");
    sb.append("    variable: ").append(toIndentedString(variable)).append("\n");
    sb.append("    subjectKey: ").append(toIndentedString(subjectKey)).append("\n");
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
    sb.append("    dateModified: ").append(toIndentedString(dateModified)).append("\n");
    sb.append("    queryComments: ").append(toIndentedString(queryComments)).append("\n");
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

