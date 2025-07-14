package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Keyword  {
  
  @ApiModelProperty(value = "Name of the keyword")
 /**
   * Name of the keyword
  **/
  private String keywordName;

  @ApiModelProperty(value = "Key of the keyword (short code)")
 /**
   * Key of the keyword (short code)
  **/
  private String keywordKey;

  @ApiModelProperty(value = "Internal keyword ID")
 /**
   * Internal keyword ID
  **/
  private Integer keywordId;

  @ApiModelProperty(value = "Date when this keyword was added")
 /**
   * Date when this keyword was added
  **/
  private String dateAdded;
 /**
   * Name of the keyword
   * @return keywordName
  **/
  @JsonProperty("keywordName")
  public String getKeywordName() {
    return keywordName;
  }

  public void setKeywordName(String keywordName) {
    this.keywordName = keywordName;
  }

  public Keyword keywordName(String keywordName) {
    this.keywordName = keywordName;
    return this;
  }

 /**
   * Key of the keyword (short code)
   * @return keywordKey
  **/
  @JsonProperty("keywordKey")
  public String getKeywordKey() {
    return keywordKey;
  }

  public void setKeywordKey(String keywordKey) {
    this.keywordKey = keywordKey;
  }

  public Keyword keywordKey(String keywordKey) {
    this.keywordKey = keywordKey;
    return this;
  }

 /**
   * Internal keyword ID
   * @return keywordId
  **/
  @JsonProperty("keywordId")
  public Integer getKeywordId() {
    return keywordId;
  }

  public void setKeywordId(Integer keywordId) {
    this.keywordId = keywordId;
  }

  public Keyword keywordId(Integer keywordId) {
    this.keywordId = keywordId;
    return this;
  }

 /**
   * Date when this keyword was added
   * @return dateAdded
  **/
  @JsonProperty("dateAdded")
  public String getDateAdded() {
    return dateAdded;
  }

  public void setDateAdded(String dateAdded) {
    this.dateAdded = dateAdded;
  }

  public Keyword dateAdded(String dateAdded) {
    this.dateAdded = dateAdded;
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
    Keyword keyword = (Keyword) o;
    return Objects.equals(this.keywordName, keyword.keywordName) &&
        Objects.equals(this.keywordKey, keyword.keywordKey) &&
        Objects.equals(this.keywordId, keyword.keywordId) &&
        Objects.equals(this.dateAdded, keyword.dateAdded);
  }

  @Override
  public int hashCode() {
    return Objects.hash(keywordName, keywordKey, keywordId, dateAdded);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Keyword {\n");
    
    sb.append("    keywordName: ").append(toIndentedString(keywordName)).append("\n");
    sb.append("    keywordKey: ").append(toIndentedString(keywordKey)).append("\n");
    sb.append("    keywordId: ").append(toIndentedString(keywordId)).append("\n");
    sb.append("    dateAdded: ").append(toIndentedString(dateAdded)).append("\n");
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

