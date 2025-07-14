goog.provide('API.Client.StudyList');

/**
 * @record
 */
API.Client.StudyList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.StudyList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.StudyList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Study>}
 * @export
 */
API.Client.StudyList.prototype.data;

