package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class Role {
    /* Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond]) */
    List<Integer> dateCreated = new ArrayList<>()
    /* Timestamp when the role assignment was last modified */
    List<Integer> dateModified = new ArrayList<>()
    /* Unique role ID (UUID) */
    String roleId
    /* Community ID or level associated with the role */
    Integer communityId
    /* Name of the role */
    String name
    /* Description of the role */
    String description
    /* Role level or hierarchy */
    Integer level
    /* Role type/category */
    String type
    /* Whether the role is inactive */
    Boolean inactive
}
