package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.Sort;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Pagination  {
  
  @ApiModelProperty(value = "Current index page returned")
 /**
   * Current index page returned
  **/
  private Integer currentPage;

  @ApiModelProperty(value = "Number of items per page returned")
 /**
   * Number of items per page returned
  **/
  private Integer size;

  @ApiModelProperty(value = "Total number of pages available")
 /**
   * Total number of pages available
  **/
  private Integer totalPages;

  @ApiModelProperty(value = "Total number of elements (items) available")
 /**
   * Total number of elements (items) available
  **/
  private Integer totalElements;

  @ApiModelProperty(value = "")
  private List<Sort> sort = new ArrayList<>();
 /**
   * Current index page returned
   * @return currentPage
  **/
  @JsonProperty("currentPage")
  public Integer getCurrentPage() {
    return currentPage;
  }

  public void setCurrentPage(Integer currentPage) {
    this.currentPage = currentPage;
  }

  public Pagination currentPage(Integer currentPage) {
    this.currentPage = currentPage;
    return this;
  }

 /**
   * Number of items per page returned
   * @return size
  **/
  @JsonProperty("size")
  public Integer getSize() {
    return size;
  }

  public void setSize(Integer size) {
    this.size = size;
  }

  public Pagination size(Integer size) {
    this.size = size;
    return this;
  }

 /**
   * Total number of pages available
   * @return totalPages
  **/
  @JsonProperty("totalPages")
  public Integer getTotalPages() {
    return totalPages;
  }

  public void setTotalPages(Integer totalPages) {
    this.totalPages = totalPages;
  }

  public Pagination totalPages(Integer totalPages) {
    this.totalPages = totalPages;
    return this;
  }

 /**
   * Total number of elements (items) available
   * @return totalElements
  **/
  @JsonProperty("totalElements")
  public Integer getTotalElements() {
    return totalElements;
  }

  public void setTotalElements(Integer totalElements) {
    this.totalElements = totalElements;
  }

  public Pagination totalElements(Integer totalElements) {
    this.totalElements = totalElements;
    return this;
  }

 /**
   * Get sort
   * @return sort
  **/
  @JsonProperty("sort")
  public List<Sort> getSort() {
    return sort;
  }

  public void setSort(List<Sort> sort) {
    this.sort = sort;
  }

  public Pagination sort(List<Sort> sort) {
    this.sort = sort;
    return this;
  }

  public Pagination addSortItem(Sort sortItem) {
    this.sort.add(sortItem);
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
    Pagination pagination = (Pagination) o;
    return Objects.equals(this.currentPage, pagination.currentPage) &&
        Objects.equals(this.size, pagination.size) &&
        Objects.equals(this.totalPages, pagination.totalPages) &&
        Objects.equals(this.totalElements, pagination.totalElements) &&
        Objects.equals(this.sort, pagination.sort);
  }

  @Override
  public int hashCode() {
    return Objects.hash(currentPage, size, totalPages, totalElements, sort);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Pagination {\n");
    
    sb.append("    currentPage: ").append(toIndentedString(currentPage)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
    sb.append("    totalPages: ").append(toIndentedString(totalPages)).append("\n");
    sb.append("    totalElements: ").append(toIndentedString(totalElements)).append("\n");
    sb.append("    sort: ").append(toIndentedString(sort)).append("\n");
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

