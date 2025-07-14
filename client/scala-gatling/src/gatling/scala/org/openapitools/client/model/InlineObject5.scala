
package org.openapitools.client.model


case class InlineObject5 (
    _metadata: Option[Metadata]
)
object InlineObject5 {
    def toStringBody(var_metadata: Object) =
        s"""
        | {
        | "metadata":$var_metadata
        | }
        """.stripMargin
}
