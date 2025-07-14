goog.provide('API.Client.RecordRevision');

/**
 * @record
 */
API.Client.RecordRevision = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.studyKey;

/**
 * Unique system identifier for the record revision
 * @type {!number}
 * @export
 */
API.Client.RecordRevision.prototype.recordRevisionId;

/**
 * Unique system identifier of the related record
 * @type {!number}
 * @export
 */
API.Client.RecordRevision.prototype.recordId;

/**
 * Client-assigned record OID (if any)
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.recordOid;

/**
 * Revision number of the record (version of the record status)
 * @type {!number}
 * @export
 */
API.Client.RecordRevision.prototype.recordRevision;

/**
 * Revision number of the data within the record
 * @type {!number}
 * @export
 */
API.Client.RecordRevision.prototype.dataRevision;

/**
 * Status of the record at this revision (user-defined status label)
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.recordStatus;

/**
 * Mednet subject ID related to the record
 * @type {!number}
 * @export
 */
API.Client.RecordRevision.prototype.subjectId;

/**
 * Client-assigned subject OID related to the record
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.subjectOid;

/**
 * Subject display ID related to the record
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.subjectKey;

/**
 * Site ID related to the record
 * @type {!number}
 * @export
 */
API.Client.RecordRevision.prototype.siteId;

/**
 * Form key of the form that the record belongs to
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.formKey;

/**
 * Interval ID (visit definition) related to the record
 * @type {!number}
 * @export
 */
API.Client.RecordRevision.prototype.intervalId;

/**
 * Role name of the user who saved the record revision
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.role;

/**
 * Username of the user who saved the record revision
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.user;

/**
 * Reason for change, if provided (for audit trail)
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.reasonForChange;

/**
 * Whether the record was deleted in this revision
 * @type {!boolean}
 * @export
 */
API.Client.RecordRevision.prototype.deleted;

/**
 * Date when this record revision was created
 * @type {!string}
 * @export
 */
API.Client.RecordRevision.prototype.dateCreated;

