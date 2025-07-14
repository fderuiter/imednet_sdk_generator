
package org.openapitools.client.model


case class Form (
    /* Unique study key */
    _studyKey: Option[String],
    /* Mednet Form ID */
    _formId: Option[Integer],
    /* User-defined form key */
    _formKey: Option[String],
    /* Name of the form (eCRF) */
    _formName: Option[String],
    /* Type of the form (e.g., Subject or Site) */
    _formType: Option[String],
    /* Number of modifications (revisions) of the form metadata */
    _revision: Option[Integer],
    /* Whether the form has an embedded log */
    _embeddedLog: Option[Boolean],
    /* Whether the form enforces record ownership */
    _enforceOwnership: Option[Boolean],
    /* Whether the form requires a user agreement */
    _userAgreement: Option[Boolean],
    /* Whether the form is marked as a subject record report */
    _subjectRecordReport: Option[Boolean],
    /* Whether the form is included in unscheduled visits */
    _unscheduledVisit: Option[Boolean],
    /* Whether the form is included in Other Forms category */
    _otherForms: Option[Boolean],
    /* Whether the form is an ePRO (electronic patient reported outcome) form */
    _eproForm: Option[Boolean],
    /* Whether the form allows copying of data */
    _allowCopy: Option[Boolean],
    /* Whether the form is soft-deleted (disabled) */
    _disabled: Option[Boolean],
    /* Date when this form was created */
    _dateCreated: Option[String],
    /* Date when this form was last modified */
    _dateModified: Option[String]
)
object Form {
    def toStringBody(var_studyKey: Object, var_formId: Object, var_formKey: Object, var_formName: Object, var_formType: Object, var_revision: Object, var_embeddedLog: Object, var_enforceOwnership: Object, var_userAgreement: Object, var_subjectRecordReport: Object, var_unscheduledVisit: Object, var_otherForms: Object, var_eproForm: Object, var_allowCopy: Object, var_disabled: Object, var_dateCreated: Object, var_dateModified: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"formId":$var_formId,"formKey":$var_formKey,"formName":$var_formName,"formType":$var_formType,"revision":$var_revision,"embeddedLog":$var_embeddedLog,"enforceOwnership":$var_enforceOwnership,"userAgreement":$var_userAgreement,"subjectRecordReport":$var_subjectRecordReport,"unscheduledVisit":$var_unscheduledVisit,"otherForms":$var_otherForms,"eproForm":$var_eproForm,"allowCopy":$var_allowCopy,"disabled":$var_disabled,"dateCreated":$var_dateCreated,"dateModified":$var_dateModified
        | }
        """.stripMargin
}
