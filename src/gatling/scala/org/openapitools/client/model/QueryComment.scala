
package org.openapitools.client.model


case class QueryComment (
    /* Sequence number of the comment/action in the query history */
    _sequence: Option[Integer],
    /* Status of the query after this comment (e.g., Open, Closed) */
    _annotationStatus: Option[String],
    /* Username of the user who made the comment or action */
    _user: Option[String],
    /* Text of the comment */
    _comment: Option[String],
    /* Whether the query was marked closed at this step */
    _closed: Option[Boolean],
    /* Date of the comment or action */
    _date: Option[String]
)
object QueryComment {
    def toStringBody(var_sequence: Object, var_annotationStatus: Object, var_user: Object, var_comment: Object, var_closed: Object, var_date: Object) =
        s"""
        | {
        | "sequence":$var_sequence,"annotationStatus":$var_annotationStatus,"user":$var_user,"comment":$var_comment,"closed":$var_closed,"date":$var_date
        | }
        """.stripMargin
}
