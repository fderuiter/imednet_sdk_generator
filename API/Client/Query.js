goog.provide('API.Client.Query');

/**
 * @record
 */
API.Client.Query = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Query.prototype.studyKey;

/**
 * Mednet subject ID associated with the query (if applicable)
 * @type {!number}
 * @export
 */
API.Client.Query.prototype.subjectId;

/**
 * Client-assigned subject OID (if applicable)
 * @type {!string}
 * @export
 */
API.Client.Query.prototype.subjectOid;

/**
 * Category/type of the query (e.g., subject, record, question)
 * @type {!string}
 * @export
 */
API.Client.Query.prototype.annotationType;

/**
 * Unique system identifier for the query
 * @type {!number}
 * @export
 */
API.Client.Query.prototype.annotationId;

/**
 * System text identifier for the query type/location (subject, record, question)
 * @type {!string}
 * @export
 */
API.Client.Query.prototype.type;

/**
 * Description of the query (e.g., reason or context)
 * @type {!string}
 * @export
 */
API.Client.Query.prototype.description;

/**
 * Record ID associated with the query (if applicable)
 * @type {!number}
 * @export
 */
API.Client.Query.prototype.recordId;

/**
 * Variable name (field) associated with the query (if applicable)
 * @type {!string}
 * @export
 */
API.Client.Query.prototype.variable;

/**
 * Subject display ID associated with the query (if applicable)
 * @type {!string}
 * @export
 */
API.Client.Query.prototype.subjectKey;

/**
 * Date when the query was created
 * @type {!string}
 * @export
 */
API.Client.Query.prototype.dateCreated;

/**
 * Date when the query was last modified
 * @type {!string}
 * @export
 */
API.Client.Query.prototype.dateModified;

/**
 * History of comments/actions on the query
 * @type {!Array<!API.Client.QueryComment>}
 * @export
 */
API.Client.Query.prototype.queryComments;

