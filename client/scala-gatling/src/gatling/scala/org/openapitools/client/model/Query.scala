
package org.openapitools.client.model


case class Query (
    /* Unique study key */
    _studyKey: Option[String],
    /* Mednet subject ID associated with the query (if applicable) */
    _subjectId: Option[Integer],
    /* Client-assigned subject OID (if applicable) */
    _subjectOid: Option[String],
    /* Category/type of the query (e.g., subject, record, question) */
    _annotationType: Option[String],
    /* Unique system identifier for the query */
    _annotationId: Option[Integer],
    /* System text identifier for the query type/location (subject, record, question) */
    _type: Option[String],
    /* Description of the query (e.g., reason or context) */
    _description: Option[String],
    /* Record ID associated with the query (if applicable) */
    _recordId: Option[Integer],
    /* Variable name (field) associated with the query (if applicable) */
    _variable: Option[String],
    /* Subject display ID associated with the query (if applicable) */
    _subjectKey: Option[String],
    /* Date when the query was created */
    _dateCreated: Option[String],
    /* Date when the query was last modified */
    _dateModified: Option[String],
    /* History of comments/actions on the query */
    _queryComments: Option[List[QueryComment]]
)
object Query {
    def toStringBody(var_studyKey: Object, var_subjectId: Object, var_subjectOid: Object, var_annotationType: Object, var_annotationId: Object, var_type: Object, var_description: Object, var_recordId: Object, var_variable: Object, var_subjectKey: Object, var_dateCreated: Object, var_dateModified: Object, var_queryComments: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"subjectId":$var_subjectId,"subjectOid":$var_subjectOid,"annotationType":$var_annotationType,"annotationId":$var_annotationId,"type":$var_type,"description":$var_description,"recordId":$var_recordId,"variable":$var_variable,"subjectKey":$var_subjectKey,"dateCreated":$var_dateCreated,"dateModified":$var_dateModified,"queryComments":$var_queryComments
        | }
        """.stripMargin
}
