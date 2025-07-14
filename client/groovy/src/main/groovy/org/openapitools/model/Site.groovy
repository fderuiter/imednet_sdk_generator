package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Site {
    /* Unique study key */
    String studyKey
    /* Unique site ID */
    Integer siteId
    /* Name of the site */
    String siteName
    /* Enrollment status of the site */
    String siteEnrollmentStatus
    /* Date when this site was created */
    String dateCreated
    /* Date when this site was last modified */
    String dateModified
}
