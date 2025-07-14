package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.Role;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class User  {
  
  @ApiModelProperty(value = "Unique user ID (UUID)")
 /**
   * Unique user ID (UUID)
  **/
  private String userId;

  @ApiModelProperty(value = "User login name")
 /**
   * User login name
  **/
  private String login;

  @ApiModelProperty(value = "User first name")
 /**
   * User first name
  **/
  private String firstName;

  @ApiModelProperty(value = "User last name")
 /**
   * User last name
  **/
  private String lastName;

  @ApiModelProperty(value = "User email address")
 /**
   * User email address
  **/
  private String email;

  @ApiModelProperty(value = "Whether the user is active in the given study")
 /**
   * Whether the user is active in the given study
  **/
  private Boolean userActiveInStudy;

  @ApiModelProperty(value = "Roles that the user has in the study")
 /**
   * Roles that the user has in the study
  **/
  private List<Role> roles = new ArrayList<>();
 /**
   * Unique user ID (UUID)
   * @return userId
  **/
  @JsonProperty("userId")
  public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }

  public User userId(String userId) {
    this.userId = userId;
    return this;
  }

 /**
   * User login name
   * @return login
  **/
  @JsonProperty("login")
  public String getLogin() {
    return login;
  }

  public void setLogin(String login) {
    this.login = login;
  }

  public User login(String login) {
    this.login = login;
    return this;
  }

 /**
   * User first name
   * @return firstName
  **/
  @JsonProperty("firstName")
  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public User firstName(String firstName) {
    this.firstName = firstName;
    return this;
  }

 /**
   * User last name
   * @return lastName
  **/
  @JsonProperty("lastName")
  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public User lastName(String lastName) {
    this.lastName = lastName;
    return this;
  }

 /**
   * User email address
   * @return email
  **/
  @JsonProperty("email")
  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public User email(String email) {
    this.email = email;
    return this;
  }

 /**
   * Whether the user is active in the given study
   * @return userActiveInStudy
  **/
  @JsonProperty("userActiveInStudy")
  public Boolean getUserActiveInStudy() {
    return userActiveInStudy;
  }

  public void setUserActiveInStudy(Boolean userActiveInStudy) {
    this.userActiveInStudy = userActiveInStudy;
  }

  public User userActiveInStudy(Boolean userActiveInStudy) {
    this.userActiveInStudy = userActiveInStudy;
    return this;
  }

 /**
   * Roles that the user has in the study
   * @return roles
  **/
  @JsonProperty("roles")
  public List<Role> getRoles() {
    return roles;
  }

  public void setRoles(List<Role> roles) {
    this.roles = roles;
  }

  public User roles(List<Role> roles) {
    this.roles = roles;
    return this;
  }

  public User addRolesItem(Role rolesItem) {
    this.roles.add(rolesItem);
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
    User user = (User) o;
    return Objects.equals(this.userId, user.userId) &&
        Objects.equals(this.login, user.login) &&
        Objects.equals(this.firstName, user.firstName) &&
        Objects.equals(this.lastName, user.lastName) &&
        Objects.equals(this.email, user.email) &&
        Objects.equals(this.userActiveInStudy, user.userActiveInStudy) &&
        Objects.equals(this.roles, user.roles);
  }

  @Override
  public int hashCode() {
    return Objects.hash(userId, login, firstName, lastName, email, userActiveInStudy, roles);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class User {\n");
    
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    login: ").append(toIndentedString(login)).append("\n");
    sb.append("    firstName: ").append(toIndentedString(firstName)).append("\n");
    sb.append("    lastName: ").append(toIndentedString(lastName)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    userActiveInStudy: ").append(toIndentedString(userActiveInStudy)).append("\n");
    sb.append("    roles: ").append(toIndentedString(roles)).append("\n");
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

