
package org.openapitools.client.model


case class Visit (
    /* Unique study key */
    _studyKey: Option[String],
    /* Unique system identifier for the subject visit instance */
    _visitId: Option[Integer],
    /* Unique system identifier of the interval definition for this visit */
    _intervalId: Option[Integer],
    /* Name of the interval (visit) for this visit instance */
    _intervalName: Option[String],
    /* Mednet subject ID of the subject */
    _subjectId: Option[Integer],
    /* Protocol-assigned subject identifier */
    _subjectKey: Option[String],
    /* Start date of the visit window (in YYYY-MM-DD format) */
    _startDate: Option[String],
    /* End date of the visit window (in YYYY-MM-DD format) */
    _endDate: Option[String],
    /* Due date of the visit (in YYYY-MM-DD format), if applicable */
    _dueDate: Option[String],
    /* Actual date the visit took place (in YYYY-MM-DD format) */
    _visitDate: Option[String],
    /* Name of the form used to capture the actual visit date */
    _visitDateForm: Option[String],
    /* Variable name of the field capturing the actual visit date */
    _visitDateQuestion: Option[String],
    /* Whether the visit instance is marked as deleted */
    _deleted: Option[Boolean],
    /* Date when this visit record was created */
    _dateCreated: Option[String],
    /* Date when this visit record was last modified */
    _dateModified: Option[String]
)
object Visit {
    def toStringBody(var_studyKey: Object, var_visitId: Object, var_intervalId: Object, var_intervalName: Object, var_subjectId: Object, var_subjectKey: Object, var_startDate: Object, var_endDate: Object, var_dueDate: Object, var_visitDate: Object, var_visitDateForm: Object, var_visitDateQuestion: Object, var_deleted: Object, var_dateCreated: Object, var_dateModified: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"visitId":$var_visitId,"intervalId":$var_intervalId,"intervalName":$var_intervalName,"subjectId":$var_subjectId,"subjectKey":$var_subjectKey,"startDate":$var_startDate,"endDate":$var_endDate,"dueDate":$var_dueDate,"visitDate":$var_visitDate,"visitDateForm":$var_visitDateForm,"visitDateQuestion":$var_visitDateQuestion,"deleted":$var_deleted,"dateCreated":$var_dateCreated,"dateModified":$var_dateModified
        | }
        """.stripMargin
}
