goog.provide('API.Client.User');

/**
 * @record
 */
API.Client.User = function() {}

/**
 * Unique user ID (UUID)
 * @type {!string}
 * @export
 */
API.Client.User.prototype.userId;

/**
 * User login name
 * @type {!string}
 * @export
 */
API.Client.User.prototype.login;

/**
 * User first name
 * @type {!string}
 * @export
 */
API.Client.User.prototype.firstName;

/**
 * User last name
 * @type {!string}
 * @export
 */
API.Client.User.prototype.lastName;

/**
 * User email address
 * @type {!string}
 * @export
 */
API.Client.User.prototype.email;

/**
 * Whether the user is active in the given study
 * @type {!boolean}
 * @export
 */
API.Client.User.prototype.userActiveInStudy;

/**
 * Roles that the user has in the study
 * @type {!Array<!API.Client.Role>}
 * @export
 */
API.Client.User.prototype.roles;

