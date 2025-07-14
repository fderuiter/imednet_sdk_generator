goog.provide('API.Client.Subject');

/**
 * @record
 */
API.Client.Subject = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Subject.prototype.studyKey;

/**
 * Mednet subject ID (internal numeric ID)
 * @type {!number}
 * @export
 */
API.Client.Subject.prototype.subjectId;

/**
 * Client-assigned subject object identifier (OID)
 * @type {!string}
 * @export
 */
API.Client.Subject.prototype.subjectOid;

/**
 * Protocol-assigned subject identifier (display ID)
 * @type {!string}
 * @export
 */
API.Client.Subject.prototype.subjectKey;

/**
 * Current status of the subject (e.g., Enrolled)
 * @type {!string}
 * @export
 */
API.Client.Subject.prototype.subjectStatus;

/**
 * Mednet site ID the subject is associated with
 * @type {!number}
 * @export
 */
API.Client.Subject.prototype.siteId;

/**
 * Name of the site the subject is associated with
 * @type {!string}
 * @export
 */
API.Client.Subject.prototype.siteName;

/**
 * Whether the subject is marked as deleted
 * @type {!boolean}
 * @export
 */
API.Client.Subject.prototype.deleted;

/**
 * Subject’s enrollment start date
 * @type {!string}
 * @export
 */
API.Client.Subject.prototype.enrollmentStartDate;

/**
 * Date when this subject record was created
 * @type {!string}
 * @export
 */
API.Client.Subject.prototype.dateCreated;

/**
 * Date when this subject record was last modified
 * @type {!string}
 * @export
 */
API.Client.Subject.prototype.dateModified;

/**
 * List of keywords associated with the subject
 * @type {!Array<!API.Client.Keyword>}
 * @export
 */
API.Client.Subject.prototype.keywords;

