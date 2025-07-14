package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Site  {
  
  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Unique site ID")
 /**
   * Unique site ID
  **/
  private Integer siteId;

  @ApiModelProperty(value = "Name of the site")
 /**
   * Name of the site
  **/
  private String siteName;

  @ApiModelProperty(value = "Enrollment status of the site")
 /**
   * Enrollment status of the site
  **/
  private String siteEnrollmentStatus;

  @ApiModelProperty(value = "Date when this site was created")
 /**
   * Date when this site was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Date when this site was last modified")
 /**
   * Date when this site was last modified
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

  public Site studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Unique site ID
   * @return siteId
  **/
  @JsonProperty("siteId")
  public Integer getSiteId() {
    return siteId;
  }

  public void setSiteId(Integer siteId) {
    this.siteId = siteId;
  }

  public Site siteId(Integer siteId) {
    this.siteId = siteId;
    return this;
  }

 /**
   * Name of the site
   * @return siteName
  **/
  @JsonProperty("siteName")
  public String getSiteName() {
    return siteName;
  }

  public void setSiteName(String siteName) {
    this.siteName = siteName;
  }

  public Site siteName(String siteName) {
    this.siteName = siteName;
    return this;
  }

 /**
   * Enrollment status of the site
   * @return siteEnrollmentStatus
  **/
  @JsonProperty("siteEnrollmentStatus")
  public String getSiteEnrollmentStatus() {
    return siteEnrollmentStatus;
  }

  public void setSiteEnrollmentStatus(String siteEnrollmentStatus) {
    this.siteEnrollmentStatus = siteEnrollmentStatus;
  }

  public Site siteEnrollmentStatus(String siteEnrollmentStatus) {
    this.siteEnrollmentStatus = siteEnrollmentStatus;
    return this;
  }

 /**
   * Date when this site was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Site dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Date when this site was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public String getDateModified() {
    return dateModified;
  }

  public void setDateModified(String dateModified) {
    this.dateModified = dateModified;
  }

  public Site dateModified(String dateModified) {
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
    Site site = (Site) o;
    return Objects.equals(this.studyKey, site.studyKey) &&
        Objects.equals(this.siteId, site.siteId) &&
        Objects.equals(this.siteName, site.siteName) &&
        Objects.equals(this.siteEnrollmentStatus, site.siteEnrollmentStatus) &&
        Objects.equals(this.dateCreated, site.dateCreated) &&
        Objects.equals(this.dateModified, site.dateModified);
  }

  @Override
  public int hashCode() {
    return Objects.hash(studyKey, siteId, siteName, siteEnrollmentStatus, dateCreated, dateModified);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Site {\n");
    
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    siteId: ").append(toIndentedString(siteId)).append("\n");
    sb.append("    siteName: ").append(toIndentedString(siteName)).append("\n");
    sb.append("    siteEnrollmentStatus: ").append(toIndentedString(siteEnrollmentStatus)).append("\n");
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

