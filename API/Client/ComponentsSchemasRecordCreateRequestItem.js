goog.provide('API.Client.components_schemas_RecordCreateRequest_item');

/**
 * @record
 */
API.Client.ComponentsSchemasRecordCreateRequestItem = function() {}

/**
 * Form key identifying the eCRF to create or update
 * @type {!string}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.formKey;

/**
 * Form ID identifying the eCRF to create or update (alternative to formKey)
 * @type {!number}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.formId;

/**
 * Name of the site where the record should be created (for new subject registration)
 * @type {!string}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.siteName;

/**
 * Site ID for the record (alternative to siteName)
 * @type {!number}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.siteId;

/**
 * Subject identifier (display ID) for which to create or update the record
 * @type {!string}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.subjectKey;

/**
 * Subject ID for which to create or update the record (alternative to subjectKey)
 * @type {!number}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.subjectId;

/**
 * Subject OID for which to create or update the record (alternative to subjectKey)
 * @type {!string}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.subjectOid;

/**
 * Name of the interval (visit) for a scheduled record update
 * @type {!string}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.intervalName;

/**
 * Interval ID for a scheduled record update (alternative to intervalName)
 * @type {!number}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.intervalId;

/**
 * Record ID for updating an existing unscheduled record (if applicable)
 * @type {!number}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.recordId;

/**
 * Record OID for updating an existing unscheduled record (if applicable)
 * @type {!string}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.recordOid;

/**
 * Key-value pairs of field names and values for the record data
 * @type {!Object<!string, API.Client.AnyType>}
 * @export
 */
API.Client.ComponentsSchemasRecordCreateRequestItem.prototype.data;

