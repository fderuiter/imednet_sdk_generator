package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class RecordRevision {
    /* Unique study key */
    String studyKey
    /* Unique system identifier for the record revision */
    Integer recordRevisionId
    /* Unique system identifier of the related record */
    Integer recordId
    /* Client-assigned record OID (if any) */
    String recordOid
    /* Revision number of the record (version of the record status) */
    Integer recordRevision
    /* Revision number of the data within the record */
    Integer dataRevision
    /* Status of the record at this revision (user-defined status label) */
    String recordStatus
    /* Mednet subject ID related to the record */
    Integer subjectId
    /* Client-assigned subject OID related to the record */
    String subjectOid
    /* Subject display ID related to the record */
    String subjectKey
    /* Site ID related to the record */
    Integer siteId
    /* Form key of the form that the record belongs to */
    String formKey
    /* Interval ID (visit definition) related to the record */
    Integer intervalId
    /* Role name of the user who saved the record revision */
    String role
    /* Username of the user who saved the record revision */
    String user
    /* Reason for change, if provided (for audit trail) */
    String reasonForChange
    /* Whether the record was deleted in this revision */
    Boolean deleted
    /* Date when this record revision was created */
    String dateCreated
}
