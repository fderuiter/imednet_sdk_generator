
package org.openapitools.client.model


case class RecordRevisionList (
    _metadata: Option[Metadata],
    _pagination: Option[Pagination],
    _data: Option[List[RecordRevision]]
)
object RecordRevisionList {
    def toStringBody(var_metadata: Object, var_pagination: Object, var_data: Object) =
        s"""
        | {
        | "metadata":$var_metadata,"pagination":$var_pagination,"data":$var_data
        | }
        """.stripMargin
}
