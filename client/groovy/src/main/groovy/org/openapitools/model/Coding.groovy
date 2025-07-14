package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Coding {
    /* Unique study key */
    String studyKey
    /* Name of the site associated with the coded data */
    String siteName
    /* Site ID associated with the coded data */
    Integer siteId
    /* Subject ID associated with the coded data */
    Integer subjectId
    /* Subject key (display ID) associated with the coded data */
    String subjectKey
    /* Form ID where the coded data originates */
    Integer formId
    /* Name of the form where the coded data originates */
    String formName
    /* Form key where the coded data originates */
    String formKey
    /* Revision number of the coding entry */
    Integer revision
    /* Record ID associated with the coded data */
    Integer recordId
    /* Variable name (field) that was coded */
    String variable
    /* Original value entered that required coding */
    String value
    /* Mednet coding ID */
    Integer codingId
    /* Standardized code assigned (e.g., dictionary term) */
    String code
    /* Name of the user who performed the coding */
    String codedBy
    /* Reason for coding or any notes on changes */
    String reason
    /* Name of the dictionary used (e.g., MedDRA) */
    String dictionaryName
    /* Version of the dictionary used */
    String dictionaryVersion
    /* Date when the coding was performed */
    String dateCoded
}
