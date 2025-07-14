goog.provide('API.Client.Pagination');

/**
 * @record
 */
API.Client.Pagination = function() {}

/**
 * Current index page returned
 * @type {!number}
 * @export
 */
API.Client.Pagination.prototype.currentPage;

/**
 * Number of items per page returned
 * @type {!number}
 * @export
 */
API.Client.Pagination.prototype.size;

/**
 * Total number of pages available
 * @type {!number}
 * @export
 */
API.Client.Pagination.prototype.totalPages;

/**
 * Total number of elements (items) available
 * @type {!number}
 * @export
 */
API.Client.Pagination.prototype.totalElements;

/**
 * @type {!Array<!API.Client.Sort>}
 * @export
 */
API.Client.Pagination.prototype.sort;

