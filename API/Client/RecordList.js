goog.provide('API.Client.RecordList');

/**
 * @record
 */
API.Client.RecordList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.RecordList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.RecordList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Record>}
 * @export
 */
API.Client.RecordList.prototype.data;

