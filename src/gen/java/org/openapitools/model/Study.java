package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Study  {
  
  @ApiModelProperty(value = "Sponsor key that this study belongs to")
 /**
   * Sponsor key that this study belongs to
  **/
  private String sponsorKey;

  @ApiModelProperty(value = "Unique study key")
 /**
   * Unique study key
  **/
  private String studyKey;

  @ApiModelProperty(value = "Mednet study ID (internal numeric identifier)")
 /**
   * Mednet study ID (internal numeric identifier)
  **/
  private Integer studyId;

  @ApiModelProperty(value = "Name of the study")
 /**
   * Name of the study
  **/
  private String studyName;

  @ApiModelProperty(value = "Description of the study")
 /**
   * Description of the study
  **/
  private String studyDescription;

  @ApiModelProperty(value = "Type of study (e.g., STUDY)")
 /**
   * Type of study (e.g., STUDY)
  **/
  private String studyType;

  @ApiModelProperty(value = "Date when the study record was created")
 /**
   * Date when the study record was created
  **/
  private String dateCreated;

  @ApiModelProperty(value = "Date when the study record was last modified")
 /**
   * Date when the study record was last modified
  **/
  private String dateModified;
 /**
   * Sponsor key that this study belongs to
   * @return sponsorKey
  **/
  @JsonProperty("sponsorKey")
  public String getSponsorKey() {
    return sponsorKey;
  }

  public void setSponsorKey(String sponsorKey) {
    this.sponsorKey = sponsorKey;
  }

  public Study sponsorKey(String sponsorKey) {
    this.sponsorKey = sponsorKey;
    return this;
  }

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

  public Study studyKey(String studyKey) {
    this.studyKey = studyKey;
    return this;
  }

 /**
   * Mednet study ID (internal numeric identifier)
   * @return studyId
  **/
  @JsonProperty("studyId")
  public Integer getStudyId() {
    return studyId;
  }

  public void setStudyId(Integer studyId) {
    this.studyId = studyId;
  }

  public Study studyId(Integer studyId) {
    this.studyId = studyId;
    return this;
  }

 /**
   * Name of the study
   * @return studyName
  **/
  @JsonProperty("studyName")
  public String getStudyName() {
    return studyName;
  }

  public void setStudyName(String studyName) {
    this.studyName = studyName;
  }

  public Study studyName(String studyName) {
    this.studyName = studyName;
    return this;
  }

 /**
   * Description of the study
   * @return studyDescription
  **/
  @JsonProperty("studyDescription")
  public String getStudyDescription() {
    return studyDescription;
  }

  public void setStudyDescription(String studyDescription) {
    this.studyDescription = studyDescription;
  }

  public Study studyDescription(String studyDescription) {
    this.studyDescription = studyDescription;
    return this;
  }

 /**
   * Type of study (e.g., STUDY)
   * @return studyType
  **/
  @JsonProperty("studyType")
  public String getStudyType() {
    return studyType;
  }

  public void setStudyType(String studyType) {
    this.studyType = studyType;
  }

  public Study studyType(String studyType) {
    this.studyType = studyType;
    return this;
  }

 /**
   * Date when the study record was created
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public String getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Study dateCreated(String dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

 /**
   * Date when the study record was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public String getDateModified() {
    return dateModified;
  }

  public void setDateModified(String dateModified) {
    this.dateModified = dateModified;
  }

  public Study dateModified(String dateModified) {
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
    Study study = (Study) o;
    return Objects.equals(this.sponsorKey, study.sponsorKey) &&
        Objects.equals(this.studyKey, study.studyKey) &&
        Objects.equals(this.studyId, study.studyId) &&
        Objects.equals(this.studyName, study.studyName) &&
        Objects.equals(this.studyDescription, study.studyDescription) &&
        Objects.equals(this.studyType, study.studyType) &&
        Objects.equals(this.dateCreated, study.dateCreated) &&
        Objects.equals(this.dateModified, study.dateModified);
  }

  @Override
  public int hashCode() {
    return Objects.hash(sponsorKey, studyKey, studyId, studyName, studyDescription, studyType, dateCreated, dateModified);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Study {\n");
    
    sb.append("    sponsorKey: ").append(toIndentedString(sponsorKey)).append("\n");
    sb.append("    studyKey: ").append(toIndentedString(studyKey)).append("\n");
    sb.append("    studyId: ").append(toIndentedString(studyId)).append("\n");
    sb.append("    studyName: ").append(toIndentedString(studyName)).append("\n");
    sb.append("    studyDescription: ").append(toIndentedString(studyDescription)).append("\n");
    sb.append("    studyType: ").append(toIndentedString(studyType)).append("\n");
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

