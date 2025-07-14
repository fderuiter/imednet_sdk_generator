
package org.openapitools.client.model


case class Subject (
    /* Unique study key */
    _studyKey: Option[String],
    /* Mednet subject ID (internal numeric ID) */
    _subjectId: Option[Integer],
    /* Client-assigned subject object identifier (OID) */
    _subjectOid: Option[String],
    /* Protocol-assigned subject identifier (display ID) */
    _subjectKey: Option[String],
    /* Current status of the subject (e.g., Enrolled) */
    _subjectStatus: Option[String],
    /* Mednet site ID the subject is associated with */
    _siteId: Option[Integer],
    /* Name of the site the subject is associated with */
    _siteName: Option[String],
    /* Whether the subject is marked as deleted */
    _deleted: Option[Boolean],
    /* Subject’s enrollment start date */
    _enrollmentStartDate: Option[String],
    /* Date when this subject record was created */
    _dateCreated: Option[String],
    /* Date when this subject record was last modified */
    _dateModified: Option[String],
    /* List of keywords associated with the subject */
    _keywords: Option[List[Keyword]]
)
object Subject {
    def toStringBody(var_studyKey: Object, var_subjectId: Object, var_subjectOid: Object, var_subjectKey: Object, var_subjectStatus: Object, var_siteId: Object, var_siteName: Object, var_deleted: Object, var_enrollmentStartDate: Object, var_dateCreated: Object, var_dateModified: Object, var_keywords: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"subjectId":$var_subjectId,"subjectOid":$var_subjectOid,"subjectKey":$var_subjectKey,"subjectStatus":$var_subjectStatus,"siteId":$var_siteId,"siteName":$var_siteName,"deleted":$var_deleted,"enrollmentStartDate":$var_enrollmentStartDate,"dateCreated":$var_dateCreated,"dateModified":$var_dateModified,"keywords":$var_keywords
        | }
        """.stripMargin
}
