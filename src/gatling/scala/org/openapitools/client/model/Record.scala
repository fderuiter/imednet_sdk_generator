
package org.openapitools.client.model


case class Record (
    /* Unique study key */
    _studyKey: Option[String],
    /* Interval ID (visit definition) that this record is associated with */
    _intervalId: Option[Integer],
    /* Form ID of the form this record instance belongs to */
    _formId: Option[Integer],
    /* Form key of the form for this record instance */
    _formKey: Option[String],
    /* Site ID associated with the record */
    _siteId: Option[Integer],
    /* Unique record ID */
    _recordId: Option[Integer],
    /* Client-assigned record OID */
    _recordOid: Option[String],
    /* Type of record (e.g., SUBJECT for subject-related forms) */
    _recordType: Option[String],
    /* Current status of the record (e.g., Record Incomplete, Record Complete) */
    _recordStatus: Option[String],
    /* Whether the record is marked as deleted */
    _deleted: Option[Boolean],
    /* Date when this record was created */
    _dateCreated: Option[String],
    /* Date when this record was last modified */
    _dateModified: Option[String],
    /* Mednet subject ID that this record is associated with */
    _subjectId: Option[Integer],
    /* Client-assigned subject OID for the subject this record is associated with */
    _subjectOid: Option[String],
    /* Subject display ID that this record is associated with */
    _subjectKey: Option[String],
    /* Visit instance ID that this record is associated with (if applicable) */
    _visitId: Option[Integer],
    /* Record ID of the parent record if this record is a subrecord (if applicable) */
    _parentRecordId: Option[Integer],
    /* List of keywords associated with the record */
    _keywords: Option[List[Keyword]],
    /* Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names. */
    _recordData: Option[Map[String, AnyType]]
)
object Record {
    def toStringBody(var_studyKey: Object, var_intervalId: Object, var_formId: Object, var_formKey: Object, var_siteId: Object, var_recordId: Object, var_recordOid: Object, var_recordType: Object, var_recordStatus: Object, var_deleted: Object, var_dateCreated: Object, var_dateModified: Object, var_subjectId: Object, var_subjectOid: Object, var_subjectKey: Object, var_visitId: Object, var_parentRecordId: Object, var_keywords: Object, var_recordData: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"intervalId":$var_intervalId,"formId":$var_formId,"formKey":$var_formKey,"siteId":$var_siteId,"recordId":$var_recordId,"recordOid":$var_recordOid,"recordType":$var_recordType,"recordStatus":$var_recordStatus,"deleted":$var_deleted,"dateCreated":$var_dateCreated,"dateModified":$var_dateModified,"subjectId":$var_subjectId,"subjectOid":$var_subjectOid,"subjectKey":$var_subjectKey,"visitId":$var_visitId,"parentRecordId":$var_parentRecordId,"keywords":$var_keywords,"recordData":$var_recordData
        | }
        """.stripMargin
}
