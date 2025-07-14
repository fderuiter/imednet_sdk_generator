package org.openapitools.model;

import java.util.HashMap;
import java.util.Map;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ComponentsSchemasRecordCreateRequestItem  {
  
  @ApiModelProperty(required = true, value = "Form key identifying the eCRF to create or update")
 /**
   * Form key identifying the eCRF to create or update
  **/
  private String formKey;

  @ApiModelProperty(value = "Form ID identifying the eCRF to create or update (alternative to formKey)")
 /**
   * Form ID identifying the eCRF to create or update (alternative to formKey)
  **/
  private Integer formId;

  @ApiModelProperty(value = "Name of the site where the record should be created (for new subject registration)")
 /**
   * Name of the site where the record should be created (for new subject registration)
  **/
  private String siteName;

  @ApiModelProperty(value = "Site ID for the record (alternative to siteName)")
 /**
   * Site ID for the record (alternative to siteName)
  **/
  private Integer siteId;

  @ApiModelProperty(value = "Subject identifier (display ID) for which to create or update the record")
 /**
   * Subject identifier (display ID) for which to create or update the record
  **/
  private String subjectKey;

  @ApiModelProperty(value = "Subject ID for which to create or update the record (alternative to subjectKey)")
 /**
   * Subject ID for which to create or update the record (alternative to subjectKey)
  **/
  private Integer subjectId;

  @ApiModelProperty(value = "Subject OID for which to create or update the record (alternative to subjectKey)")
 /**
   * Subject OID for which to create or update the record (alternative to subjectKey)
  **/
  private String subjectOid;

  @ApiModelProperty(value = "Name of the interval (visit) for a scheduled record update")
 /**
   * Name of the interval (visit) for a scheduled record update
  **/
  private String intervalName;

  @ApiModelProperty(value = "Interval ID for a scheduled record update (alternative to intervalName)")
 /**
   * Interval ID for a scheduled record update (alternative to intervalName)
  **/
  private Integer intervalId;

  @ApiModelProperty(value = "Record ID for updating an existing unscheduled record (if applicable)")
 /**
   * Record ID for updating an existing unscheduled record (if applicable)
  **/
  private Integer recordId;

  @ApiModelProperty(value = "Record OID for updating an existing unscheduled record (if applicable)")
 /**
   * Record OID for updating an existing unscheduled record (if applicable)
  **/
  private String recordOid;

  @ApiModelProperty(required = true, value = "Key-value pairs of field names and values for the record data")
 /**
   * Key-value pairs of field names and values for the record data
  **/
  private Map<String, Object> data = new HashMap<>();
 /**
   * Form key identifying the eCRF to create or update
   * @return formKey
  **/
  @JsonProperty("formKey")
  public String getFormKey() {
    return formKey;
  }

  public void setFormKey(String formKey) {
    this.formKey = formKey;
  }

  public ComponentsSchemasRecordCreateRequestItem formKey(String formKey) {
    this.formKey = formKey;
    return this;
  }

 /**
   * Form ID identifying the eCRF to create or update (alternative to formKey)
   * @return formId
  **/
  @JsonProperty("formId")
  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }

  public ComponentsSchemasRecordCreateRequestItem formId(Integer formId) {
    this.formId = formId;
    return this;
  }

 /**
   * Name of the site where the record should be created (for new subject registration)
   * @return siteName
  **/
  @JsonProperty("siteName")
  public String getSiteName() {
    return siteName;
  }

  public void setSiteName(String siteName) {
    this.siteName = siteName;
  }

  public ComponentsSchemasRecordCreateRequestItem siteName(String siteName) {
    this.siteName = siteName;
    return this;
  }

 /**
   * Site ID for the record (alternative to siteName)
   * @return siteId
  **/
  @JsonProperty("siteId")
  public Integer getSiteId() {
    return siteId;
  }

  public void setSiteId(Integer siteId) {
    this.siteId = siteId;
  }

  public ComponentsSchemasRecordCreateRequestItem siteId(Integer siteId) {
    this.siteId = siteId;
    return this;
  }

 /**
   * Subject identifier (display ID) for which to create or update the record
   * @return subjectKey
  **/
  @JsonProperty("subjectKey")
  public String getSubjectKey() {
    return subjectKey;
  }

  public void setSubjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
  }

  public ComponentsSchemasRecordCreateRequestItem subjectKey(String subjectKey) {
    this.subjectKey = subjectKey;
    return this;
  }

 /**
   * Subject ID for which to create or update the record (alternative to subjectKey)
   * @return subjectId
  **/
  @JsonProperty("subjectId")
  public Integer getSubjectId() {
    return subjectId;
  }

  public void setSubjectId(Integer subjectId) {
    this.subjectId = subjectId;
  }

  public ComponentsSchemasRecordCreateRequestItem subjectId(Integer subjectId) {
    this.subjectId = subjectId;
    return this;
  }

 /**
   * Subject OID for which to create or update the record (alternative to subjectKey)
   * @return subjectOid
  **/
  @JsonProperty("subjectOid")
  public String getSubjectOid() {
    return subjectOid;
  }

  public void setSubjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
  }

  public ComponentsSchemasRecordCreateRequestItem subjectOid(String subjectOid) {
    this.subjectOid = subjectOid;
    return this;
  }

 /**
   * Name of the interval (visit) for a scheduled record update
   * @return intervalName
  **/
  @JsonProperty("intervalName")
  public String getIntervalName() {
    return intervalName;
  }

  public void setIntervalName(String intervalName) {
    this.intervalName = intervalName;
  }

  public ComponentsSchemasRecordCreateRequestItem intervalName(String intervalName) {
    this.intervalName = intervalName;
    return this;
  }

 /**
   * Interval ID for a scheduled record update (alternative to intervalName)
   * @return intervalId
  **/
  @JsonProperty("intervalId")
  public Integer getIntervalId() {
    return intervalId;
  }

  public void setIntervalId(Integer intervalId) {
    this.intervalId = intervalId;
  }

  public ComponentsSchemasRecordCreateRequestItem intervalId(Integer intervalId) {
    this.intervalId = intervalId;
    return this;
  }

 /**
   * Record ID for updating an existing unscheduled record (if applicable)
   * @return recordId
  **/
  @JsonProperty("recordId")
  public Integer getRecordId() {
    return recordId;
  }

  public void setRecordId(Integer recordId) {
    this.recordId = recordId;
  }

  public ComponentsSchemasRecordCreateRequestItem recordId(Integer recordId) {
    this.recordId = recordId;
    return this;
  }

 /**
   * Record OID for updating an existing unscheduled record (if applicable)
   * @return recordOid
  **/
  @JsonProperty("recordOid")
  public String getRecordOid() {
    return recordOid;
  }

  public void setRecordOid(String recordOid) {
    this.recordOid = recordOid;
  }

  public ComponentsSchemasRecordCreateRequestItem recordOid(String recordOid) {
    this.recordOid = recordOid;
    return this;
  }

 /**
   * Key-value pairs of field names and values for the record data
   * @return data
  **/
  @JsonProperty("data")
  public Map<String, Object> getData() {
    return data;
  }

  public void setData(Map<String, Object> data) {
    this.data = data;
  }

  public ComponentsSchemasRecordCreateRequestItem data(Map<String, Object> data) {
    this.data = data;
    return this;
  }

  public ComponentsSchemasRecordCreateRequestItem putDataItem(String key, Object dataItem) {
    this.data.put(key, dataItem);
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
    ComponentsSchemasRecordCreateRequestItem componentsSchemasRecordCreateRequestItem = (ComponentsSchemasRecordCreateRequestItem) o;
    return Objects.equals(this.formKey, componentsSchemasRecordCreateRequestItem.formKey) &&
        Objects.equals(this.formId, componentsSchemasRecordCreateRequestItem.formId) &&
        Objects.equals(this.siteName, componentsSchemasRecordCreateRequestItem.siteName) &&
        Objects.equals(this.siteId, componentsSchemasRecordCreateRequestItem.siteId) &&
        Objects.equals(this.subjectKey, componentsSchemasRecordCreateRequestItem.subjectKey) &&
        Objects.equals(this.subjectId, componentsSchemasRecordCreateRequestItem.subjectId) &&
        Objects.equals(this.subjectOid, componentsSchemasRecordCreateRequestItem.subjectOid) &&
        Objects.equals(this.intervalName, componentsSchemasRecordCreateRequestItem.intervalName) &&
        Objects.equals(this.intervalId, componentsSchemasRecordCreateRequestItem.intervalId) &&
        Objects.equals(this.recordId, componentsSchemasRecordCreateRequestItem.recordId) &&
        Objects.equals(this.recordOid, componentsSchemasRecordCreateRequestItem.recordOid) &&
        Objects.equals(this.data, componentsSchemasRecordCreateRequestItem.data);
  }

  @Override
  public int hashCode() {
    return Objects.hash(formKey, formId, siteName, siteId, subjectKey, subjectId, subjectOid, intervalName, intervalId, recordId, recordOid, data);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ComponentsSchemasRecordCreateRequestItem {\n");
    
    sb.append("    formKey: ").append(toIndentedString(formKey)).append("\n");
    sb.append("    formId: ").append(toIndentedString(formId)).append("\n");
    sb.append("    siteName: ").append(toIndentedString(siteName)).append("\n");
    sb.append("    siteId: ").append(toIndentedString(siteId)).append("\n");
    sb.append("    subjectKey: ").append(toIndentedString(subjectKey)).append("\n");
    sb.append("    subjectId: ").append(toIndentedString(subjectId)).append("\n");
    sb.append("    subjectOid: ").append(toIndentedString(subjectOid)).append("\n");
    sb.append("    intervalName: ").append(toIndentedString(intervalName)).append("\n");
    sb.append("    intervalId: ").append(toIndentedString(intervalId)).append("\n");
    sb.append("    recordId: ").append(toIndentedString(recordId)).append("\n");
    sb.append("    recordOid: ").append(toIndentedString(recordOid)).append("\n");
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

