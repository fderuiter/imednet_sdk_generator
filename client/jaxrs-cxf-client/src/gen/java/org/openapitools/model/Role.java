package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Role  {
  
  @ApiModelProperty(value = "Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])")
 /**
   * Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])
  **/
  private List<Integer> dateCreated = new ArrayList<>();

  @ApiModelProperty(value = "Timestamp when the role assignment was last modified")
 /**
   * Timestamp when the role assignment was last modified
  **/
  private List<Integer> dateModified = new ArrayList<>();

  @ApiModelProperty(value = "Unique role ID (UUID)")
 /**
   * Unique role ID (UUID)
  **/
  private String roleId;

  @ApiModelProperty(value = "Community ID or level associated with the role")
 /**
   * Community ID or level associated with the role
  **/
  private Integer communityId;

  @ApiModelProperty(value = "Name of the role")
 /**
   * Name of the role
  **/
  private String name;

  @ApiModelProperty(value = "Description of the role")
 /**
   * Description of the role
  **/
  private String description;

  @ApiModelProperty(value = "Role level or hierarchy")
 /**
   * Role level or hierarchy
  **/
  private Integer level;

  @ApiModelProperty(value = "Role type/category")
 /**
   * Role type/category
  **/
  private String type;

  @ApiModelProperty(value = "Whether the role is inactive")
 /**
   * Whether the role is inactive
  **/
  private Boolean inactive;
 /**
   * Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])
   * @return dateCreated
  **/
  @JsonProperty("dateCreated")
  public List<Integer> getDateCreated() {
    return dateCreated;
  }

  public void setDateCreated(List<Integer> dateCreated) {
    this.dateCreated = dateCreated;
  }

  public Role dateCreated(List<Integer> dateCreated) {
    this.dateCreated = dateCreated;
    return this;
  }

  public Role addDateCreatedItem(Integer dateCreatedItem) {
    this.dateCreated.add(dateCreatedItem);
    return this;
  }

 /**
   * Timestamp when the role assignment was last modified
   * @return dateModified
  **/
  @JsonProperty("dateModified")
  public List<Integer> getDateModified() {
    return dateModified;
  }

  public void setDateModified(List<Integer> dateModified) {
    this.dateModified = dateModified;
  }

  public Role dateModified(List<Integer> dateModified) {
    this.dateModified = dateModified;
    return this;
  }

  public Role addDateModifiedItem(Integer dateModifiedItem) {
    this.dateModified.add(dateModifiedItem);
    return this;
  }

 /**
   * Unique role ID (UUID)
   * @return roleId
  **/
  @JsonProperty("roleId")
  public String getRoleId() {
    return roleId;
  }

  public void setRoleId(String roleId) {
    this.roleId = roleId;
  }

  public Role roleId(String roleId) {
    this.roleId = roleId;
    return this;
  }

 /**
   * Community ID or level associated with the role
   * @return communityId
  **/
  @JsonProperty("communityId")
  public Integer getCommunityId() {
    return communityId;
  }

  public void setCommunityId(Integer communityId) {
    this.communityId = communityId;
  }

  public Role communityId(Integer communityId) {
    this.communityId = communityId;
    return this;
  }

 /**
   * Name of the role
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Role name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Description of the role
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Role description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Role level or hierarchy
   * @return level
  **/
  @JsonProperty("level")
  public Integer getLevel() {
    return level;
  }

  public void setLevel(Integer level) {
    this.level = level;
  }

  public Role level(Integer level) {
    this.level = level;
    return this;
  }

 /**
   * Role type/category
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Role type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Whether the role is inactive
   * @return inactive
  **/
  @JsonProperty("inactive")
  public Boolean getInactive() {
    return inactive;
  }

  public void setInactive(Boolean inactive) {
    this.inactive = inactive;
  }

  public Role inactive(Boolean inactive) {
    this.inactive = inactive;
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
    Role role = (Role) o;
    return Objects.equals(this.dateCreated, role.dateCreated) &&
        Objects.equals(this.dateModified, role.dateModified) &&
        Objects.equals(this.roleId, role.roleId) &&
        Objects.equals(this.communityId, role.communityId) &&
        Objects.equals(this.name, role.name) &&
        Objects.equals(this.description, role.description) &&
        Objects.equals(this.level, role.level) &&
        Objects.equals(this.type, role.type) &&
        Objects.equals(this.inactive, role.inactive);
  }

  @Override
  public int hashCode() {
    return Objects.hash(dateCreated, dateModified, roleId, communityId, name, description, level, type, inactive);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Role {\n");
    
    sb.append("    dateCreated: ").append(toIndentedString(dateCreated)).append("\n");
    sb.append("    dateModified: ").append(toIndentedString(dateModified)).append("\n");
    sb.append("    roleId: ").append(toIndentedString(roleId)).append("\n");
    sb.append("    communityId: ").append(toIndentedString(communityId)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    level: ").append(toIndentedString(level)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    inactive: ").append(toIndentedString(inactive)).append("\n");
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

