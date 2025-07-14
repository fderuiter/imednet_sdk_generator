
package org.openapitools.client.model


case class InlineObject2 (
    _metadata: Option[Metadata]
)
object InlineObject2 {
    def toStringBody(var_metadata: Object) =
        s"""
        | {
        | "metadata":$var_metadata
        | }
        """.stripMargin
}
