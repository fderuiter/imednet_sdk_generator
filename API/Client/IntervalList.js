goog.provide('API.Client.IntervalList');

/**
 * @record
 */
API.Client.IntervalList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.IntervalList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.IntervalList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Interval>}
 * @export
 */
API.Client.IntervalList.prototype.data;

