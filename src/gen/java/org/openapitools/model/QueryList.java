package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.Metadata;
import org.openapitools.model.Pagination;
import org.openapitools.model.Query;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QueryList  {
  
  @ApiModelProperty(value = "")
  private Metadata metadata;

  @ApiModelProperty(value = "")
  private Pagination pagination;

  @ApiModelProperty(value = "")
  private List<Query> data = new ArrayList<>();
 /**
   * Get metadata
   * @return metadata
  **/
  @JsonProperty("metadata")
  public Metadata getMetadata() {
    return metadata;
  }

  public void setMetadata(Metadata metadata) {
    this.metadata = metadata;
  }

  public QueryList metadata(Metadata metadata) {
    this.metadata = metadata;
    return this;
  }

 /**
   * Get pagination
   * @return pagination
  **/
  @JsonProperty("pagination")
  public Pagination getPagination() {
    return pagination;
  }

  public void setPagination(Pagination pagination) {
    this.pagination = pagination;
  }

  public QueryList pagination(Pagination pagination) {
    this.pagination = pagination;
    return this;
  }

 /**
   * Get data
   * @return data
  **/
  @JsonProperty("data")
  public List<Query> getData() {
    return data;
  }

  public void setData(List<Query> data) {
    this.data = data;
  }

  public QueryList data(List<Query> data) {
    this.data = data;
    return this;
  }

  public QueryList addDataItem(Query dataItem) {
    this.data.add(dataItem);
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
    QueryList queryList = (QueryList) o;
    return Objects.equals(this.metadata, queryList.metadata) &&
        Objects.equals(this.pagination, queryList.pagination) &&
        Objects.equals(this.data, queryList.data);
  }

  @Override
  public int hashCode() {
    return Objects.hash(metadata, pagination, data);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QueryList {\n");
    
    sb.append("    metadata: ").append(toIndentedString(metadata)).append("\n");
    sb.append("    pagination: ").append(toIndentedString(pagination)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
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

