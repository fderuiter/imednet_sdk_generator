goog.provide('API.Client.Record');

/**
 * @record
 */
API.Client.Record = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Record.prototype.studyKey;

/**
 * Interval ID (visit definition) that this record is associated with
 * @type {!number}
 * @export
 */
API.Client.Record.prototype.intervalId;

/**
 * Form ID of the form this record instance belongs to
 * @type {!number}
 * @export
 */
API.Client.Record.prototype.formId;

/**
 * Form key of the form for this record instance
 * @type {!string}
 * @export
 */
API.Client.Record.prototype.formKey;

/**
 * Site ID associated with the record
 * @type {!number}
 * @export
 */
API.Client.Record.prototype.siteId;

/**
 * Unique record ID
 * @type {!number}
 * @export
 */
API.Client.Record.prototype.recordId;

/**
 * Client-assigned record OID
 * @type {!string}
 * @export
 */
API.Client.Record.prototype.recordOid;

/**
 * Type of record (e.g., SUBJECT for subject-related forms)
 * @type {!string}
 * @export
 */
API.Client.Record.prototype.recordType;

/**
 * Current status of the record (e.g., Record Incomplete, Record Complete)
 * @type {!string}
 * @export
 */
API.Client.Record.prototype.recordStatus;

/**
 * Whether the record is marked as deleted
 * @type {!boolean}
 * @export
 */
API.Client.Record.prototype.deleted;

/**
 * Date when this record was created
 * @type {!string}
 * @export
 */
API.Client.Record.prototype.dateCreated;

/**
 * Date when this record was last modified
 * @type {!string}
 * @export
 */
API.Client.Record.prototype.dateModified;

/**
 * Mednet subject ID that this record is associated with
 * @type {!number}
 * @export
 */
API.Client.Record.prototype.subjectId;

/**
 * Client-assigned subject OID for the subject this record is associated with
 * @type {!string}
 * @export
 */
API.Client.Record.prototype.subjectOid;

/**
 * Subject display ID that this record is associated with
 * @type {!string}
 * @export
 */
API.Client.Record.prototype.subjectKey;

/**
 * Visit instance ID that this record is associated with (if applicable)
 * @type {!number}
 * @export
 */
API.Client.Record.prototype.visitId;

/**
 * Record ID of the parent record if this record is a subrecord (if applicable)
 * @type {!number}
 * @export
 */
API.Client.Record.prototype.parentRecordId;

/**
 * List of keywords associated with the record
 * @type {!Array<!API.Client.Keyword>}
 * @export
 */
API.Client.Record.prototype.keywords;

/**
 * Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.
 * @type {!Object<!string, API.Client.AnyType>}
 * @export
 */
API.Client.Record.prototype.recordData;

