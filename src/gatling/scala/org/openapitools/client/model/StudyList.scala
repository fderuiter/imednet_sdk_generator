
package org.openapitools.client.model


case class StudyList (
    _metadata: Option[Metadata],
    _pagination: Option[Pagination],
    _data: Option[List[Study]]
)
object StudyList {
    def toStringBody(var_metadata: Object, var_pagination: Object, var_data: Object) =
        s"""
        | {
        | "metadata":$var_metadata,"pagination":$var_pagination,"data":$var_data
        | }
        """.stripMargin
}
