goog.provide('API.Client.Metadata');

/**
 * @record
 */
API.Client.Metadata = function() {}

/**
 * HTTP status of the response (e.g., OK or ERROR)
 * @type {!string}
 * @export
 */
API.Client.Metadata.prototype.status;

/**
 * HTTP method of the request
 * @type {!string}
 * @export
 */
API.Client.Metadata.prototype.method;

/**
 * Requested URI path
 * @type {!string}
 * @export
 */
API.Client.Metadata.prototype.path;

/**
 * Timestamp when response was generated
 * @type {!Date}
 * @export
 */
API.Client.Metadata.prototype.timestamp;

/**
 * @type {!API.Client.components_schemas_Metadata_error}
 * @export
 */
API.Client.Metadata.prototype.error;

