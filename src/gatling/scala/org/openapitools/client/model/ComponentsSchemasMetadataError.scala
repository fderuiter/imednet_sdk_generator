
package org.openapitools.client.model

import java.util.HashMap

case class ComponentsSchemasMetadataError (
    /* Error message describing the issue */
    _message: Option[String]
)
object ComponentsSchemasMetadataError {
    def toStringBody(var_message: Object) =
        s"""
        | {
        | "message":$var_message
        | }
        """.stripMargin
}
