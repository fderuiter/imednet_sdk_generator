package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RecordJobStatus  {
  
  @ApiModelProperty(value = "Unique job identifier")
 /**
   * Unique job identifier
  **/
  private String jobId;

  @ApiModelProperty(value = "Batch ID used to track the job (identical to jobId in most cases)")
 /**
   * Batch ID used to track the job (identical to jobId in most cases)
  **/
  private String batchId;

  @ApiModelProperty(value = "Current state of the job (e.g., created, completed)")
 /**
   * Current state of the job (e.g., created, completed)
  **/
  private String state;
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

  public RecordJobStatus jobId(String jobId) {
    this.jobId = jobId;
    return this;
  }

 /**
   * Batch ID used to track the job (identical to jobId in most cases)
   * @return batchId
  **/
  @JsonProperty("batchId")
  public String getBatchId() {
    return batchId;
  }

  public void setBatchId(String batchId) {
    this.batchId = batchId;
  }

  public RecordJobStatus batchId(String batchId) {
    this.batchId = batchId;
    return this;
  }

 /**
   * Current state of the job (e.g., created, completed)
   * @return state
  **/
  @JsonProperty("state")
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public RecordJobStatus state(String state) {
    this.state = state;
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
    RecordJobStatus recordJobStatus = (RecordJobStatus) o;
    return Objects.equals(this.jobId, recordJobStatus.jobId) &&
        Objects.equals(this.batchId, recordJobStatus.batchId) &&
        Objects.equals(this.state, recordJobStatus.state);
  }

  @Override
  public int hashCode() {
    return Objects.hash(jobId, batchId, state);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RecordJobStatus {\n");
    
    sb.append("    jobId: ").append(toIndentedString(jobId)).append("\n");
    sb.append("    batchId: ").append(toIndentedString(batchId)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
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

