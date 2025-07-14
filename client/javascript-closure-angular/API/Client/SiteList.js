goog.provide('API.Client.SiteList');

/**
 * @record
 */
API.Client.SiteList = function() {}

/**
 * @type {!API.Client.Metadata}
 * @export
 */
API.Client.SiteList.prototype.metadata;

/**
 * @type {!API.Client.Pagination}
 * @export
 */
API.Client.SiteList.prototype.pagination;

/**
 * @type {!Array<!API.Client.Site>}
 * @export
 */
API.Client.SiteList.prototype.data;

