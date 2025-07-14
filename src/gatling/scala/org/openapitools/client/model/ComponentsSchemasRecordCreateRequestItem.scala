
package org.openapitools.client.model


case class ComponentsSchemasRecordCreateRequestItem (
    /* Form key identifying the eCRF to create or update */
    _formKey: String,
    /* Form ID identifying the eCRF to create or update (alternative to formKey) */
    _formId: Option[Integer],
    /* Name of the site where the record should be created (for new subject registration) */
    _siteName: Option[String],
    /* Site ID for the record (alternative to siteName) */
    _siteId: Option[Integer],
    /* Subject identifier (display ID) for which to create or update the record */
    _subjectKey: Option[String],
    /* Subject ID for which to create or update the record (alternative to subjectKey) */
    _subjectId: Option[Integer],
    /* Subject OID for which to create or update the record (alternative to subjectKey) */
    _subjectOid: Option[String],
    /* Name of the interval (visit) for a scheduled record update */
    _intervalName: Option[String],
    /* Interval ID for a scheduled record update (alternative to intervalName) */
    _intervalId: Option[Integer],
    /* Record ID for updating an existing unscheduled record (if applicable) */
    _recordId: Option[Integer],
    /* Record OID for updating an existing unscheduled record (if applicable) */
    _recordOid: Option[String],
    /* Key-value pairs of field names and values for the record data */
    _data: Map[String, AnyType]
)
object ComponentsSchemasRecordCreateRequestItem {
    def toStringBody(var_formKey: Object, var_formId: Object, var_siteName: Object, var_siteId: Object, var_subjectKey: Object, var_subjectId: Object, var_subjectOid: Object, var_intervalName: Object, var_intervalId: Object, var_recordId: Object, var_recordOid: Object, var_data: Object) =
        s"""
        | {
        | "formKey":$var_formKey,"formId":$var_formId,"siteName":$var_siteName,"siteId":$var_siteId,"subjectKey":$var_subjectKey,"subjectId":$var_subjectId,"subjectOid":$var_subjectOid,"intervalName":$var_intervalName,"intervalId":$var_intervalId,"recordId":$var_recordId,"recordOid":$var_recordOid,"data":$var_data
        | }
        """.stripMargin
}
