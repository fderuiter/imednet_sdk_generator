package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Role;

@Canonical
class User {
    /* Unique user ID (UUID) */
    String userId
    /* User login name */
    String login
    /* User first name */
    String firstName
    /* User last name */
    String lastName
    /* User email address */
    String email
    /* Whether the user is active in the given study */
    Boolean userActiveInStudy
    /* Roles that the user has in the study */
    List<Role> roles = new ArrayList<>()
}
