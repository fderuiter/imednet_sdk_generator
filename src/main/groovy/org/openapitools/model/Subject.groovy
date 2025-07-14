package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Keyword;

@Canonical
class Subject {
    /* Unique study key */
    String studyKey
    /* Mednet subject ID (internal numeric ID) */
    Integer subjectId
    /* Client-assigned subject object identifier (OID) */
    String subjectOid
    /* Protocol-assigned subject identifier (display ID) */
    String subjectKey
    /* Current status of the subject (e.g., Enrolled) */
    String subjectStatus
    /* Mednet site ID the subject is associated with */
    Integer siteId
    /* Name of the site the subject is associated with */
    String siteName
    /* Whether the subject is marked as deleted */
    Boolean deleted
    /* Subject’s enrollment start date */
    String enrollmentStartDate
    /* Date when this subject record was created */
    String dateCreated
    /* Date when this subject record was last modified */
    String dateModified
    /* List of keywords associated with the subject */
    List<Keyword> keywords = new ArrayList<>()
}
