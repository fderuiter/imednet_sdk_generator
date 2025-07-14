
package org.openapitools.client.model


case class InlineObject4 (
    _metadata: Option[Metadata]
)
object InlineObject4 {
    def toStringBody(var_metadata: Object) =
        s"""
        | {
        | "metadata":$var_metadata
        | }
        """.stripMargin
}
