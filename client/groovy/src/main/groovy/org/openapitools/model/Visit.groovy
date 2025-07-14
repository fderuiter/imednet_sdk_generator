package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Visit {
    /* Unique study key */
    String studyKey
    /* Unique system identifier for the subject visit instance */
    Integer visitId
    /* Unique system identifier of the interval definition for this visit */
    Integer intervalId
    /* Name of the interval (visit) for this visit instance */
    String intervalName
    /* Mednet subject ID of the subject */
    Integer subjectId
    /* Protocol-assigned subject identifier */
    String subjectKey
    /* Start date of the visit window (in YYYY-MM-DD format) */
    String startDate
    /* End date of the visit window (in YYYY-MM-DD format) */
    String endDate
    /* Due date of the visit (in YYYY-MM-DD format), if applicable */
    String dueDate
    /* Actual date the visit took place (in YYYY-MM-DD format) */
    String visitDate
    /* Name of the form used to capture the actual visit date */
    String visitDateForm
    /* Variable name of the field capturing the actual visit date */
    String visitDateQuestion
    /* Whether the visit instance is marked as deleted */
    Boolean deleted
    /* Date when this visit record was created */
    String dateCreated
    /* Date when this visit record was last modified */
    String dateModified
}
