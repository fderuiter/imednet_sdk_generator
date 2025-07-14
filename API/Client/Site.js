goog.provide('API.Client.Site');

/**
 * @record
 */
API.Client.Site = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Site.prototype.studyKey;

/**
 * Unique site ID
 * @type {!number}
 * @export
 */
API.Client.Site.prototype.siteId;

/**
 * Name of the site
 * @type {!string}
 * @export
 */
API.Client.Site.prototype.siteName;

/**
 * Enrollment status of the site
 * @type {!string}
 * @export
 */
API.Client.Site.prototype.siteEnrollmentStatus;

/**
 * Date when this site was created
 * @type {!string}
 * @export
 */
API.Client.Site.prototype.dateCreated;

/**
 * Date when this site was last modified
 * @type {!string}
 * @export
 */
API.Client.Site.prototype.dateModified;

