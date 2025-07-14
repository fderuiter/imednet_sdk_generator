
package org.openapitools.client.model

import java.time.OffsetDateTime

case class Metadata (
    /* HTTP status of the response (e.g., OK or ERROR) */
    _status: Option[String],
    /* HTTP method of the request */
    _method: Option[String],
    /* Requested URI path */
    _path: Option[String],
    /* Timestamp when response was generated */
    _timestamp: Option[OffsetDateTime],
    _error: Option[ComponentsSchemasMetadataError]
)
object Metadata {
    def toStringBody(var_status: Object, var_method: Object, var_path: Object, var_timestamp: Object, var_error: Object) =
        s"""
        | {
        | "status":$var_status,"method":$var_method,"path":$var_path,"timestamp":$var_timestamp,"error":$var_error
        | }
        """.stripMargin
}
