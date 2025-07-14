
package org.openapitools.client.model


case class InlineObject (
    _metadata: Option[Metadata]
)
object InlineObject {
    def toStringBody(var_metadata: Object) =
        s"""
        | {
        | "metadata":$var_metadata
        | }
        """.stripMargin
}
