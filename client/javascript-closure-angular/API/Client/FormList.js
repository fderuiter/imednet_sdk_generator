goog.provide('API.Client.FormList');

/**
 * @record
 */
API.Client.FormList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.FormList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.FormList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Form>}
 * @export
 */
API.Client.FormList.prototype.data;

