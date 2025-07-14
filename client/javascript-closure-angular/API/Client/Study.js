goog.provide('API.Client.Study');

/**
 * @record
 */
API.Client.Study = function() {}

/**
 * Sponsor key that this study belongs to
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.sponsorKey;

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.studyKey;

/**
 * Mednet study ID (internal numeric identifier)
 * @type {!number}
 * @export
 */
API.Client.Study.prototype.studyId;

/**
 * Name of the study
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.studyName;

/**
 * Description of the study
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.studyDescription;

/**
 * Type of study (e.g., STUDY)
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.studyType;

/**
 * Date when the study record was created
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.dateCreated;

/**
 * Date when the study record was last modified
 * @type {!string}
 * @export
 */
API.Client.Study.prototype.dateModified;

