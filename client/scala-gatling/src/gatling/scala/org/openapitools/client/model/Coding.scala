
package org.openapitools.client.model


case class Coding (
    /* Unique study key */
    _studyKey: Option[String],
    /* Name of the site associated with the coded data */
    _siteName: Option[String],
    /* Site ID associated with the coded data */
    _siteId: Option[Integer],
    /* Subject ID associated with the coded data */
    _subjectId: Option[Integer],
    /* Subject key (display ID) associated with the coded data */
    _subjectKey: Option[String],
    /* Form ID where the coded data originates */
    _formId: Option[Integer],
    /* Name of the form where the coded data originates */
    _formName: Option[String],
    /* Form key where the coded data originates */
    _formKey: Option[String],
    /* Revision number of the coding entry */
    _revision: Option[Integer],
    /* Record ID associated with the coded data */
    _recordId: Option[Integer],
    /* Variable name (field) that was coded */
    _variable: Option[String],
    /* Original value entered that required coding */
    _value: Option[String],
    /* Mednet coding ID */
    _codingId: Option[Integer],
    /* Standardized code assigned (e.g., dictionary term) */
    _code: Option[String],
    /* Name of the user who performed the coding */
    _codedBy: Option[String],
    /* Reason for coding or any notes on changes */
    _reason: Option[String],
    /* Name of the dictionary used (e.g., MedDRA) */
    _dictionaryName: Option[String],
    /* Version of the dictionary used */
    _dictionaryVersion: Option[String],
    /* Date when the coding was performed */
    _dateCoded: Option[String]
)
object Coding {
    def toStringBody(var_studyKey: Object, var_siteName: Object, var_siteId: Object, var_subjectId: Object, var_subjectKey: Object, var_formId: Object, var_formName: Object, var_formKey: Object, var_revision: Object, var_recordId: Object, var_variable: Object, var_value: Object, var_codingId: Object, var_code: Object, var_codedBy: Object, var_reason: Object, var_dictionaryName: Object, var_dictionaryVersion: Object, var_dateCoded: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"siteName":$var_siteName,"siteId":$var_siteId,"subjectId":$var_subjectId,"subjectKey":$var_subjectKey,"formId":$var_formId,"formName":$var_formName,"formKey":$var_formKey,"revision":$var_revision,"recordId":$var_recordId,"variable":$var_variable,"value":$var_value,"codingId":$var_codingId,"code":$var_code,"codedBy":$var_codedBy,"reason":$var_reason,"dictionaryName":$var_dictionaryName,"dictionaryVersion":$var_dictionaryVersion,"dateCoded":$var_dateCoded
        | }
        """.stripMargin
}
