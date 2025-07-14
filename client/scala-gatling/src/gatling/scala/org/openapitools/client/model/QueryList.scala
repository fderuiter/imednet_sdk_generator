
package org.openapitools.client.model


case class QueryList (
    _metadata: Option[Metadata],
    _pagination: Option[Pagination],
    _data: Option[List[Query]]
)
object QueryList {
    def toStringBody(var_metadata: Object, var_pagination: Object, var_data: Object) =
        s"""
        | {
        | "metadata":$var_metadata,"pagination":$var_pagination,"data":$var_data
        | }
        """.stripMargin
}
