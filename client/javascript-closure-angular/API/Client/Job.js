goog.provide('API.Client.Job');

/**
 * @record
 */
API.Client.Job = function() {}

/**
 * Unique job identifier
 * @type {!string}
 * @export
 */
API.Client.Job.prototype.jobId;

/**
 * Batch ID associated with the job (useful for linking with record creation requests)
 * @type {!string}
 * @export
 */
API.Client.Job.prototype.batchId;

/**
 * State of the job (e.g., completed, pending)
 * @type {!string}
 * @export
 */
API.Client.Job.prototype.state;

/**
 * Timestamp when the job was created
 * @type {!string}
 * @export
 */
API.Client.Job.prototype.dateCreated;

/**
 * Timestamp when the job started processing
 * @type {!string}
 * @export
 */
API.Client.Job.prototype.dateStarted;

/**
 * Timestamp when the job finished processing
 * @type {!string}
 * @export
 */
API.Client.Job.prototype.dateFinished;

