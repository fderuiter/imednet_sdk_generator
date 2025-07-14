
package org.openapitools.client.model


case class Sort (
    /* Name of the property by which the result is sorted */
    _property: Option[String],
    /* Sort direction (ASC or DESC) */
    _direction: Option[String]
)
object Sort {
    def toStringBody(var_property: Object, var_direction: Object) =
        s"""
        | {
        | "property":$var_property,"direction":$var_direction
        | }
        """.stripMargin
}
