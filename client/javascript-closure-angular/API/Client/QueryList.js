goog.provide('API.Client.QueryList');

/**
 * @record
 */
API.Client.QueryList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.QueryList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.QueryList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Query>}
 * @export
 */
API.Client.QueryList.prototype.data;

