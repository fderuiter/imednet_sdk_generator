goog.provide('API.Client.Form');

/**
 * @record
 */
API.Client.Form = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Form.prototype.studyKey;

/**
 * Mednet Form ID
 * @type {!number}
 * @export
 */
API.Client.Form.prototype.formId;

/**
 * User-defined form key
 * @type {!string}
 * @export
 */
API.Client.Form.prototype.formKey;

/**
 * Name of the form (eCRF)
 * @type {!string}
 * @export
 */
API.Client.Form.prototype.formName;

/**
 * Type of the form (e.g., Subject or Site)
 * @type {!string}
 * @export
 */
API.Client.Form.prototype.formType;

/**
 * Number of modifications (revisions) of the form metadata
 * @type {!number}
 * @export
 */
API.Client.Form.prototype.revision;

/**
 * Whether the form has an embedded log
 * @type {!boolean}
 * @export
 */
API.Client.Form.prototype.embeddedLog;

/**
 * Whether the form enforces record ownership
 * @type {!boolean}
 * @export
 */
API.Client.Form.prototype.enforceOwnership;

/**
 * Whether the form requires a user agreement
 * @type {!boolean}
 * @export
 */
API.Client.Form.prototype.userAgreement;

/**
 * Whether the form is marked as a subject record report
 * @type {!boolean}
 * @export
 */
API.Client.Form.prototype.subjectRecordReport;

/**
 * Whether the form is included in unscheduled visits
 * @type {!boolean}
 * @export
 */
API.Client.Form.prototype.unscheduledVisit;

/**
 * Whether the form is included in Other Forms category
 * @type {!boolean}
 * @export
 */
API.Client.Form.prototype.otherForms;

/**
 * Whether the form is an ePRO (electronic patient reported outcome) form
 * @type {!boolean}
 * @export
 */
API.Client.Form.prototype.eproForm;

/**
 * Whether the form allows copying of data
 * @type {!boolean}
 * @export
 */
API.Client.Form.prototype.allowCopy;

/**
 * Whether the form is soft-deleted (disabled)
 * @type {!boolean}
 * @export
 */
API.Client.Form.prototype.disabled;

/**
 * Date when this form was created
 * @type {!string}
 * @export
 */
API.Client.Form.prototype.dateCreated;

/**
 * Date when this form was last modified
 * @type {!string}
 * @export
 */
API.Client.Form.prototype.dateModified;

