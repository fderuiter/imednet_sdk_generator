goog.provide('API.Client.UserList');

/**
 * @record
 */
API.Client.UserList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.UserList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.UserList.prototype.pagination;

/**
 * @type {!Array<!API.Client.User>}
 * @export
 */
API.Client.UserList.prototype.data;

