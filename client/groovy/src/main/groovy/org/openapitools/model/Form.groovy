package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Form {
    /* Unique study key */
    String studyKey
    /* Mednet Form ID */
    Integer formId
    /* User-defined form key */
    String formKey
    /* Name of the form (eCRF) */
    String formName
    /* Type of the form (e.g., Subject or Site) */
    String formType
    /* Number of modifications (revisions) of the form metadata */
    Integer revision
    /* Whether the form has an embedded log */
    Boolean embeddedLog
    /* Whether the form enforces record ownership */
    Boolean enforceOwnership
    /* Whether the form requires a user agreement */
    Boolean userAgreement
    /* Whether the form is marked as a subject record report */
    Boolean subjectRecordReport
    /* Whether the form is included in unscheduled visits */
    Boolean unscheduledVisit
    /* Whether the form is included in Other Forms category */
    Boolean otherForms
    /* Whether the form is an ePRO (electronic patient reported outcome) form */
    Boolean eproForm
    /* Whether the form allows copying of data */
    Boolean allowCopy
    /* Whether the form is soft-deleted (disabled) */
    Boolean disabled
    /* Date when this form was created */
    String dateCreated
    /* Date when this form was last modified */
    String dateModified
}
