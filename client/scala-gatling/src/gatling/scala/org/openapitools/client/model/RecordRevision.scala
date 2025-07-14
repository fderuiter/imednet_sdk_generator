
package org.openapitools.client.model


case class RecordRevision (
    /* Unique study key */
    _studyKey: Option[String],
    /* Unique system identifier for the record revision */
    _recordRevisionId: Option[Integer],
    /* Unique system identifier of the related record */
    _recordId: Option[Integer],
    /* Client-assigned record OID (if any) */
    _recordOid: Option[String],
    /* Revision number of the record (version of the record status) */
    _recordRevision: Option[Integer],
    /* Revision number of the data within the record */
    _dataRevision: Option[Integer],
    /* Status of the record at this revision (user-defined status label) */
    _recordStatus: Option[String],
    /* Mednet subject ID related to the record */
    _subjectId: Option[Integer],
    /* Client-assigned subject OID related to the record */
    _subjectOid: Option[String],
    /* Subject display ID related to the record */
    _subjectKey: Option[String],
    /* Site ID related to the record */
    _siteId: Option[Integer],
    /* Form key of the form that the record belongs to */
    _formKey: Option[String],
    /* Interval ID (visit definition) related to the record */
    _intervalId: Option[Integer],
    /* Role name of the user who saved the record revision */
    _role: Option[String],
    /* Username of the user who saved the record revision */
    _user: Option[String],
    /* Reason for change, if provided (for audit trail) */
    _reasonForChange: Option[String],
    /* Whether the record was deleted in this revision */
    _deleted: Option[Boolean],
    /* Date when this record revision was created */
    _dateCreated: Option[String]
)
object RecordRevision {
    def toStringBody(var_studyKey: Object, var_recordRevisionId: Object, var_recordId: Object, var_recordOid: Object, var_recordRevision: Object, var_dataRevision: Object, var_recordStatus: Object, var_subjectId: Object, var_subjectOid: Object, var_subjectKey: Object, var_siteId: Object, var_formKey: Object, var_intervalId: Object, var_role: Object, var_user: Object, var_reasonForChange: Object, var_deleted: Object, var_dateCreated: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"recordRevisionId":$var_recordRevisionId,"recordId":$var_recordId,"recordOid":$var_recordOid,"recordRevision":$var_recordRevision,"dataRevision":$var_dataRevision,"recordStatus":$var_recordStatus,"subjectId":$var_subjectId,"subjectOid":$var_subjectOid,"subjectKey":$var_subjectKey,"siteId":$var_siteId,"formKey":$var_formKey,"intervalId":$var_intervalId,"role":$var_role,"user":$var_user,"reasonForChange":$var_reasonForChange,"deleted":$var_deleted,"dateCreated":$var_dateCreated
        | }
        """.stripMargin
}
