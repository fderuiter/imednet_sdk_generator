goog.provide('API.Client.SubjectList');

/**
 * @record
 */
API.Client.SubjectList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.SubjectList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.SubjectList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Subject>}
 * @export
 */
API.Client.SubjectList.prototype.data;

