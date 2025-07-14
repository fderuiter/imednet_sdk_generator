package org.openapitools.model;

import java.util.Date;
import org.openapitools.model.ComponentsSchemasMetadataError;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Metadata  {
  
  @ApiModelProperty(value = "HTTP status of the response (e.g., OK or ERROR)")
 /**
   * HTTP status of the response (e.g., OK or ERROR)
  **/
  private String status;

  @ApiModelProperty(value = "HTTP method of the request")
 /**
   * HTTP method of the request
  **/
  private String method;

  @ApiModelProperty(value = "Requested URI path")
 /**
   * Requested URI path
  **/
  private String path;

  @ApiModelProperty(value = "Timestamp when response was generated")
 /**
   * Timestamp when response was generated
  **/
  private Date timestamp;

  @ApiModelProperty(value = "")
  private ComponentsSchemasMetadataError error;
 /**
   * HTTP status of the response (e.g., OK or ERROR)
   * @return status
  **/
  @JsonProperty("status")
  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public Metadata status(String status) {
    this.status = status;
    return this;
  }

 /**
   * HTTP method of the request
   * @return method
  **/
  @JsonProperty("method")
  public String getMethod() {
    return method;
  }

  public void setMethod(String method) {
    this.method = method;
  }

  public Metadata method(String method) {
    this.method = method;
    return this;
  }

 /**
   * Requested URI path
   * @return path
  **/
  @JsonProperty("path")
  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }

  public Metadata path(String path) {
    this.path = path;
    return this;
  }

 /**
   * Timestamp when response was generated
   * @return timestamp
  **/
  @JsonProperty("timestamp")
  public Date getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(Date timestamp) {
    this.timestamp = timestamp;
  }

  public Metadata timestamp(Date timestamp) {
    this.timestamp = timestamp;
    return this;
  }

 /**
   * Get error
   * @return error
  **/
  @JsonProperty("error")
  public ComponentsSchemasMetadataError getError() {
    return error;
  }

  public void setError(ComponentsSchemasMetadataError error) {
    this.error = error;
  }

  public Metadata error(ComponentsSchemasMetadataError error) {
    this.error = error;
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
    Metadata metadata = (Metadata) o;
    return Objects.equals(this.status, metadata.status) &&
        Objects.equals(this.method, metadata.method) &&
        Objects.equals(this.path, metadata.path) &&
        Objects.equals(this.timestamp, metadata.timestamp) &&
        Objects.equals(this.error, metadata.error);
  }

  @Override
  public int hashCode() {
    return Objects.hash(status, method, path, timestamp, error);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Metadata {\n");
    
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    method: ").append(toIndentedString(method)).append("\n");
    sb.append("    path: ").append(toIndentedString(path)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    error: ").append(toIndentedString(error)).append("\n");
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

