package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Sort  {
  
  @ApiModelProperty(value = "Name of the property by which the result is sorted")
 /**
   * Name of the property by which the result is sorted
  **/
  private String property;

public enum DirectionEnum {

ASC(String.valueOf("ASC")), DESC(String.valueOf("DESC"));


    private String value;

    DirectionEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static DirectionEnum fromValue(String value) {
        for (DirectionEnum b : DirectionEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(value = "Sort direction (ASC or DESC)")
 /**
   * Sort direction (ASC or DESC)
  **/
  private DirectionEnum direction;
 /**
   * Name of the property by which the result is sorted
   * @return property
  **/
  @JsonProperty("property")
  public String getProperty() {
    return property;
  }

  public void setProperty(String property) {
    this.property = property;
  }

  public Sort property(String property) {
    this.property = property;
    return this;
  }

 /**
   * Sort direction (ASC or DESC)
   * @return direction
  **/
  @JsonProperty("direction")
  public String getDirection() {
    if (direction == null) {
      return null;
    }
    return direction.value();
  }

  public void setDirection(DirectionEnum direction) {
    this.direction = direction;
  }

  public Sort direction(DirectionEnum direction) {
    this.direction = direction;
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
    Sort sort = (Sort) o;
    return Objects.equals(this.property, sort.property) &&
        Objects.equals(this.direction, sort.direction);
  }

  @Override
  public int hashCode() {
    return Objects.hash(property, direction);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Sort {\n");
    
    sb.append("    property: ").append(toIndentedString(property)).append("\n");
    sb.append("    direction: ").append(toIndentedString(direction)).append("\n");
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

