goog.provide('API.Client.VisitList');

/**
 * @record
 */
API.Client.VisitList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.VisitList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.VisitList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Visit>}
 * @export
 */
API.Client.VisitList.prototype.data;

