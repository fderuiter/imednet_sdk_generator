
package org.openapitools.client.model


case class InlineObject1 (
    _metadata: Option[Metadata]
)
object InlineObject1 {
    def toStringBody(var_metadata: Object) =
        s"""
        | {
        | "metadata":$var_metadata
        | }
        """.stripMargin
}
