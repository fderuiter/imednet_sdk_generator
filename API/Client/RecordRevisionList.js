goog.provide('API.Client.RecordRevisionList');

/**
 * @record
 */
API.Client.RecordRevisionList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.RecordRevisionList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.RecordRevisionList.prototype.pagination;

/**
 * @type {!Array<!API.Client.RecordRevision>}
 * @export
 */
API.Client.RecordRevisionList.prototype.data;

