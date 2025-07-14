goog.provide('API.Client.CodingList');

/**
 * @record
 */
API.Client.CodingList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.CodingList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.CodingList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Coding>}
 * @export
 */
API.Client.CodingList.prototype.data;

