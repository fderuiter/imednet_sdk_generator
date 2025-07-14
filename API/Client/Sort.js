goog.provide('API.Client.Sort');

/**
 * @record
 */
API.Client.Sort = function() {}

/**
 * Name of the property by which the result is sorted
 * @type {!string}
 * @export
 */
API.Client.Sort.prototype.property;

/**
 * Sort direction (ASC or DESC)
 * @type {!string}
 * @export
 */
API.Client.Sort.prototype.direction;

/** @enum {string} */
API.Client.Sort.DirectionEnum = { 
  ASC: 'ASC',
  DESC: 'DESC',
}
