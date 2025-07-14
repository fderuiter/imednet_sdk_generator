goog.provide('API.Client.RecordJobStatus');

/**
 * @record
 */
API.Client.RecordJobStatus = function() {}

/**
 * Unique job identifier
 * @type {!string}
 * @export
 */
API.Client.RecordJobStatus.prototype.jobId;

/**
 * Batch ID used to track the job (identical to jobId in most cases)
 * @type {!string}
 * @export
 */
API.Client.RecordJobStatus.prototype.batchId;

/**
 * Current state of the job (e.g., created, completed)
 * @type {!string}
 * @export
 */
API.Client.RecordJobStatus.prototype.state;

