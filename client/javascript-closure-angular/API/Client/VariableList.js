goog.provide('API.Client.VariableList');

/**
 * @record
 */
API.Client.VariableList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.VariableList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.VariableList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Variable>}
 * @export
 */
API.Client.VariableList.prototype.data;

