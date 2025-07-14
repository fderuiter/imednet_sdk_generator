goog.provide('API.Client.Visit');

/**
 * @record
 */
API.Client.Visit = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.studyKey;

/**
 * Unique system identifier for the subject visit instance
 * @type {!number}
 * @export
 */
API.Client.Visit.prototype.visitId;

/**
 * Unique system identifier of the interval definition for this visit
 * @type {!number}
 * @export
 */
API.Client.Visit.prototype.intervalId;

/**
 * Name of the interval (visit) for this visit instance
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.intervalName;

/**
 * Mednet subject ID of the subject
 * @type {!number}
 * @export
 */
API.Client.Visit.prototype.subjectId;

/**
 * Protocol-assigned subject identifier
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.subjectKey;

/**
 * Start date of the visit window (in YYYY-MM-DD format)
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.startDate;

/**
 * End date of the visit window (in YYYY-MM-DD format)
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.endDate;

/**
 * Due date of the visit (in YYYY-MM-DD format), if applicable
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.dueDate;

/**
 * Actual date the visit took place (in YYYY-MM-DD format)
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.visitDate;

/**
 * Name of the form used to capture the actual visit date
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.visitDateForm;

/**
 * Variable name of the field capturing the actual visit date
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.visitDateQuestion;

/**
 * Whether the visit instance is marked as deleted
 * @type {!boolean}
 * @export
 */
API.Client.Visit.prototype.deleted;

/**
 * Date when this visit record was created
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.dateCreated;

/**
 * Date when this visit record was last modified
 * @type {!string}
 * @export
 */
API.Client.Visit.prototype.dateModified;

