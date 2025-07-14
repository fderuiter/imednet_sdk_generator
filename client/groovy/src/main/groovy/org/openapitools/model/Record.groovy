package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import org.openapitools.model.Keyword;

@Canonical
class Record {
    /* Unique study key */
    String studyKey
    /* Interval ID (visit definition) that this record is associated with */
    Integer intervalId
    /* Form ID of the form this record instance belongs to */
    Integer formId
    /* Form key of the form for this record instance */
    String formKey
    /* Site ID associated with the record */
    Integer siteId
    /* Unique record ID */
    Integer recordId
    /* Client-assigned record OID */
    String recordOid
    /* Type of record (e.g., SUBJECT for subject-related forms) */
    String recordType
    /* Current status of the record (e.g., Record Incomplete, Record Complete) */
    String recordStatus
    /* Whether the record is marked as deleted */
    Boolean deleted
    /* Date when this record was created */
    String dateCreated
    /* Date when this record was last modified */
    String dateModified
    /* Mednet subject ID that this record is associated with */
    Integer subjectId
    /* Client-assigned subject OID for the subject this record is associated with */
    String subjectOid
    /* Subject display ID that this record is associated with */
    String subjectKey
    /* Visit instance ID that this record is associated with (if applicable) */
    Integer visitId
    /* Record ID of the parent record if this record is a subrecord (if applicable) */
    Integer parentRecordId
    /* List of keywords associated with the record */
    List<Keyword> keywords = new ArrayList<>()
    /* Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. */
    Map<String, Object> recordData = new HashMap<>()
}
