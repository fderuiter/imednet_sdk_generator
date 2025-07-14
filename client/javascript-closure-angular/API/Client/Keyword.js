goog.provide('API.Client.Keyword');

/**
 * @record
 */
API.Client.Keyword = function() {}

/**
 * Name of the keyword
 * @type {!string}
 * @export
 */
API.Client.Keyword.prototype.keywordName;

/**
 * Key of the keyword (short code)
 * @type {!string}
 * @export
 */
API.Client.Keyword.prototype.keywordKey;

/**
 * Internal keyword ID
 * @type {!number}
 * @export
 */
API.Client.Keyword.prototype.keywordId;

/**
 * Date when this keyword was added
 * @type {!string}
 * @export
 */
API.Client.Keyword.prototype.dateAdded;

