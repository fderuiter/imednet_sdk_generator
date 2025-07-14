goog.provide('API.Client.Role');

/**
 * @record
 */
API.Client.Role = function() {}

/**
 * Timestamp when the role assignment was created (as [year, month, day, hour, minute, second, nanosecond])
 * @type {!Array<!number>}
 * @export
 */
API.Client.Role.prototype.dateCreated;

/**
 * Timestamp when the role assignment was last modified
 * @type {!Array<!number>}
 * @export
 */
API.Client.Role.prototype.dateModified;

/**
 * Unique role ID (UUID)
 * @type {!string}
 * @export
 */
API.Client.Role.prototype.roleId;

/**
 * Community ID or level associated with the role
 * @type {!number}
 * @export
 */
API.Client.Role.prototype.communityId;

/**
 * Name of the role
 * @type {!string}
 * @export
 */
API.Client.Role.prototype.name;

/**
 * Description of the role
 * @type {!string}
 * @export
 */
API.Client.Role.prototype.description;

/**
 * Role level or hierarchy
 * @type {!number}
 * @export
 */
API.Client.Role.prototype.level;

/**
 * Role type/category
 * @type {!string}
 * @export
 */
API.Client.Role.prototype.type;

/**
 * Whether the role is inactive
 * @type {!boolean}
 * @export
 */
API.Client.Role.prototype.inactive;

