goog.provide('API.Client.QueryComment');

/**
 * @record
 */
API.Client.QueryComment = function() {}

/**
 * Sequence number of the comment/action in the query history
 * @type {!number}
 * @export
 */
API.Client.QueryComment.prototype.sequence;

/**
 * Status of the query after this comment (e.g., Open, Closed)
 * @type {!string}
 * @export
 */
API.Client.QueryComment.prototype.annotationStatus;

/**
 * Username of the user who made the comment or action
 * @type {!string}
 * @export
 */
API.Client.QueryComment.prototype.user;

/**
 * Text of the comment
 * @type {!string}
 * @export
 */
API.Client.QueryComment.prototype.comment;

/**
 * Whether the query was marked closed at this step
 * @type {!boolean}
 * @export
 */
API.Client.QueryComment.prototype.closed;

/**
 * Date of the comment or action
 * @type {!string}
 * @export
 */
API.Client.QueryComment.prototype.date;

