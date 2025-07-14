package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Study {
    /* Sponsor key that this study belongs to */
    String sponsorKey
    /* Unique study key */
    String studyKey
    /* Mednet study ID (internal numeric identifier) */
    Integer studyId
    /* Name of the study */
    String studyName
    /* Description of the study */
    String studyDescription
    /* Type of study (e.g., STUDY) */
    String studyType
    /* Date when the study record was created */
    String dateCreated
    /* Date when the study record was last modified */
    String dateModified
}
