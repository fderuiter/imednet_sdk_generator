
package org.openapitools.client.model


case class Variable (
    /* Unique study key */
    _studyKey: Option[String],
    /* Mednet variable ID */
    _variableId: Option[Integer],
    /* Type of the variable (field type), e.g., RADIO, TEXT, etc. */
    _variableType: Option[String],
    /* Name of the variable (question text or label) */
    _variableName: Option[String],
    /* Sequence of the variable on the form */
    _sequence: Option[Integer],
    /* Number of modifications of the variable (via form metadata revisions) */
    _revision: Option[Integer],
    /* Whether the variable is marked as disabled (deleted) */
    _disabled: Option[Boolean],
    /* Date when this variable was created */
    _dateCreated: Option[String],
    /* Date when this variable was last modified */
    _dateModified: Option[String],
    /* ID of the form that this variable belongs to */
    _formId: Option[Integer],
    /* Client-assigned variable OID */
    _variableOid: Option[String],
    /* Whether the variable is marked as deleted */
    _deleted: Option[Boolean],
    /* Form key of the form that this variable belongs to */
    _formKey: Option[String],
    /* Name of the form that this variable belongs to */
    _formName: Option[String],
    /* User-defined identifier (field name) for the variable */
    _label: Option[String],
    /* Whether the variable is flagged as blinded (hidden in certain contexts) */
    _blinded: Option[Boolean]
)
object Variable {
    def toStringBody(var_studyKey: Object, var_variableId: Object, var_variableType: Object, var_variableName: Object, var_sequence: Object, var_revision: Object, var_disabled: Object, var_dateCreated: Object, var_dateModified: Object, var_formId: Object, var_variableOid: Object, var_deleted: Object, var_formKey: Object, var_formName: Object, var_label: Object, var_blinded: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"variableId":$var_variableId,"variableType":$var_variableType,"variableName":$var_variableName,"sequence":$var_sequence,"revision":$var_revision,"disabled":$var_disabled,"dateCreated":$var_dateCreated,"dateModified":$var_dateModified,"formId":$var_formId,"variableOid":$var_variableOid,"deleted":$var_deleted,"formKey":$var_formKey,"formName":$var_formName,"label":$var_label,"blinded":$var_blinded
        | }
        """.stripMargin
}
