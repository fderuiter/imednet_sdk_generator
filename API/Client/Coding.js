goog.provide('API.Client.Coding');

/**
 * @record
 */
API.Client.Coding = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.studyKey;

/**
 * Name of the site associated with the coded data
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.siteName;

/**
 * Site ID associated with the coded data
 * @type {!number}
 * @export
 */
API.Client.Coding.prototype.siteId;

/**
 * Subject ID associated with the coded data
 * @type {!number}
 * @export
 */
API.Client.Coding.prototype.subjectId;

/**
 * Subject key (display ID) associated with the coded data
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.subjectKey;

/**
 * Form ID where the coded data originates
 * @type {!number}
 * @export
 */
API.Client.Coding.prototype.formId;

/**
 * Name of the form where the coded data originates
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.formName;

/**
 * Form key where the coded data originates
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.formKey;

/**
 * Revision number of the coding entry
 * @type {!number}
 * @export
 */
API.Client.Coding.prototype.revision;

/**
 * Record ID associated with the coded data
 * @type {!number}
 * @export
 */
API.Client.Coding.prototype.recordId;

/**
 * Variable name (field) that was coded
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.variable;

/**
 * Original value entered that required coding
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.value;

/**
 * Mednet coding ID
 * @type {!number}
 * @export
 */
API.Client.Coding.prototype.codingId;

/**
 * Standardized code assigned (e.g., dictionary term)
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.code;

/**
 * Name of the user who performed the coding
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.codedBy;

/**
 * Reason for coding or any notes on changes
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.reason;

/**
 * Name of the dictionary used (e.g., MedDRA)
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.dictionaryName;

/**
 * Version of the dictionary used
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.dictionaryVersion;

/**
 * Date when the coding was performed
 * @type {!string}
 * @export
 */
API.Client.Coding.prototype.dateCoded;

