package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Job  {
  
  @ApiModelProperty(value = "Unique job identifier")
 /**
   * Unique job identifier
  **/
  private String jobId;

  @ApiModelProperty(value = "Batch ID associated with the job (useful for linking with record creation requests)")
 /**
   * Batch ID associated with the job (useful for linking with record creation requests)
  **/
  private String batchId;

  @ApiModelProperty(value = "State of the job (e.g., completed, pending)")
 /**
   * State of the job (e.g., completed, pending)
  **/
  private String state;

  @ApiModelProperty(value = "Timestamp when the job was created")
 /**
   * Timestamp when the job was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Timestamp when the job started processing")
 /**
   * Timestamp when the job started processing
  **/
  private String dateStarted;

  @ApiModelProperty(value = "Timestamp when the job finished processing")
 /**
   * Timestamp when the job finished processing
  **/
  private String dateFinished;
 /**
   * Unique job identifier
   * @return jobId
  **/
  @JsonProperty("jobId")
  public String getJobId() {
    return jobId;
  }

  public void setJobId(String jobId) {
    this.jobId = jobId;
  }

  public Job jobId(String jobId) {
    this.jobId = jobId;
    return this;
  }

 /**
   * Batch ID associated with the job (useful for linking with record creation requests)
   * @return batchId
  **/
  @JsonProperty("batchId")
  public String getBatchId() {
    return batchId;
  }

  public void setBatchId(String batchId) {
    this.batchId = batchId;
  }

  public Job batchId(String batchId) {
    this.batchId = batchId;
    return this;
  }

 /**
   * State of the job (e.g., completed, pending)
   * @return state
  **/
  @JsonProperty("state")
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public Job state(String state) {
    this.state = state;
    return this;
  }

 /**
   * Timestamp when the job was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Job dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Timestamp when the job started processing
   * @return dateStarted
  **/
  @JsonProperty("dateStarted")
  public String getDateStarted() {
    return dateStarted;
  }

  public void setDateStarted(String dateStarted) {
    this.dateStarted = dateStarted;
  }

  public Job dateStarted(String dateStarted) {
    this.dateStarted = dateStarted;
    return this;
  }

 /**
   * Timestamp when the job finished processing
   * @return dateFinished
  **/
  @JsonProperty("dateFinished")
  public String getDateFinished() {
    return dateFinished;
  }

  public void setDateFinished(String dateFinished) {
    this.dateFinished = dateFinished;
  }

  public Job dateFinished(String dateFinished) {
    this.dateFinished = dateFinished;
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
    Job job = (Job) o;
    return Objects.equals(this.jobId, job.jobId) &&
        Objects.equals(this.batchId, job.batchId) &&
        Objects.equals(this.state, job.state) &&
        Objects.equals(this.dateCreated, job.dateCreated) &&
        Objects.equals(this.dateStarted, job.dateStarted) &&
        Objects.equals(this.dateFinished, job.dateFinished);
  }

  @Override
  public int hashCode() {
    return Objects.hash(jobId, batchId, state, dateCreated, dateStarted, dateFinished);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Job {\n");
    
    sb.append("    jobId: ").append(toIndentedString(jobId)).append("\n");
    sb.append("    batchId: ").append(toIndentedString(batchId)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
    sb.append("    dateStarted: ").append(toIndentedString(dateStarted)).append("\n");
    sb.append("    dateFinished: ").append(toIndentedString(dateFinished)).append("\n");
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

