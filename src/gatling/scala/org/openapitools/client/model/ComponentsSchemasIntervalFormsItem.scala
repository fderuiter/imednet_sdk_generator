
package org.openapitools.client.model


case class ComponentsSchemasIntervalFormsItem (
    /* Form ID scheduled in the interval */
    _formId: Option[Integer],
    /* Form key scheduled in the interval */
    _formKey: Option[String],
    /* Form name scheduled in the interval */
    _formName: Option[String]
)
object ComponentsSchemasIntervalFormsItem {
    def toStringBody(var_formId: Object, var_formKey: Object, var_formName: Object) =
        s"""
        | {
        | "formId":$var_formId,"formKey":$var_formKey,"formName":$var_formName
        | }
        """.stripMargin
}
