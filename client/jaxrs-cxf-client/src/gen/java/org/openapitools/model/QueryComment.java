package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QueryComment  {
  
  @ApiModelProperty(value = "Sequence number of the comment/action in the query history")
 /**
   * Sequence number of the comment/action in the query history
  **/
  private Integer sequence;

  @ApiModelProperty(value = "Status of the query after this comment (e.g., Open, Closed)")
 /**
   * Status of the query after this comment (e.g., Open, Closed)
  **/
  private String annotationStatus;

  @ApiModelProperty(value = "Username of the user who made the comment or action")
 /**
   * Username of the user who made the comment or action
  **/
  private String user;

  @ApiModelProperty(value = "Text of the comment")
 /**
   * Text of the comment
  **/
  private String comment;

  @ApiModelProperty(value = "Whether the query was marked closed at this step")
 /**
   * Whether the query was marked closed at this step
  **/
  private Boolean closed;

  @ApiModelProperty(value = "Date of the comment or action")
 /**
   * Date of the comment or action
  **/
  private String date;
 /**
   * Sequence number of the comment/action in the query history
   * @return sequence
  **/
  @JsonProperty("sequence")
  public Integer getSequence() {
    return sequence;
  }

  public void setSequence(Integer sequence) {
    this.sequence = sequence;
  }

  public QueryComment sequence(Integer sequence) {
    this.sequence = sequence;
    return this;
  }

 /**
   * Status of the query after this comment (e.g., Open, Closed)
   * @return annotationStatus
  **/
  @JsonProperty("annotationStatus")
  public String getAnnotationStatus() {
    return annotationStatus;
  }

  public void setAnnotationStatus(String annotationStatus) {
    this.annotationStatus = annotationStatus;
  }

  public QueryComment annotationStatus(String annotationStatus) {
    this.annotationStatus = annotationStatus;
    return this;
  }

 /**
   * Username of the user who made the comment or action
   * @return user
  **/
  @JsonProperty("user")
  public String getUser() {
    return user;
  }

  public void setUser(String user) {
    this.user = user;
  }

  public QueryComment user(String user) {
    this.user = user;
    return this;
  }

 /**
   * Text of the comment
   * @return comment
  **/
  @JsonProperty("comment")
  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public QueryComment comment(String comment) {
    this.comment = comment;
    return this;
  }

 /**
   * Whether the query was marked closed at this step
   * @return closed
  **/
  @JsonProperty("closed")
  public Boolean getClosed() {
    return closed;
  }

  public void setClosed(Boolean closed) {
    this.closed = closed;
  }

  public QueryComment closed(Boolean closed) {
    this.closed = closed;
    return this;
  }

 /**
   * Date of the comment or action
   * @return date
  **/
  @JsonProperty("date")
  public String getDate() {
    return date;
  }

  public void setDate(String date) {
    this.date = date;
  }

  public QueryComment date(String date) {
    this.date = date;
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
    QueryComment queryComment = (QueryComment) o;
    return Objects.equals(this.sequence, queryComment.sequence) &&
        Objects.equals(this.annotationStatus, queryComment.annotationStatus) &&
        Objects.equals(this.user, queryComment.user) &&
        Objects.equals(this.comment, queryComment.comment) &&
        Objects.equals(this.closed, queryComment.closed) &&
        Objects.equals(this.date, queryComment.date);
  }

  @Override
  public int hashCode() {
    return Objects.hash(sequence, annotationStatus, user, comment, closed, date);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QueryComment {\n");
    
    sb.append("    sequence: ").append(toIndentedString(sequence)).append("\n");
    sb.append("    annotationStatus: ").append(toIndentedString(annotationStatus)).append("\n");
    sb.append("    user: ").append(toIndentedString(user)).append("\n");
    sb.append("    comment: ").append(toIndentedString(comment)).append("\n");
    sb.append("    closed: ").append(toIndentedString(closed)).append("\n");
    sb.append("    date: ").append(toIndentedString(date)).append("\n");
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

