goog.provide('API.Client.Interval');

/**
 * @record
 */
API.Client.Interval = function() {}

/**
 * Unique study key
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.studyKey;

/**
 * Unique system identifier for the interval (visit definition)
 * @type {!number}
 * @export
 */
API.Client.Interval.prototype.intervalId;

/**
 * Name of the interval (visit) as defined in the study
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.intervalName;

/**
 * Description of the interval (visit)
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.intervalDescription;

/**
 * Sequence number of the interval in the schedule
 * @type {!number}
 * @export
 */
API.Client.Interval.prototype.intervalSequence;

/**
 * Identifier for the interval group (if intervals are grouped)
 * @type {!number}
 * @export
 */
API.Client.Interval.prototype.intervalGroupId;

/**
 * Name of the interval group
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.intervalGroupName;

/**
 * Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.timeline;

/**
 * Baseline interval used for calculating this interval’s dates
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.definedUsingInterval;

/**
 * Baseline form (name) from which the calculation date is taken
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.windowCalculationForm;

/**
 * Baseline field (variable name) from which the calculation date is taken
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.windowCalculationDate;

/**
 * Form used to capture the actual date for this interval
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.actualDateForm;

/**
 * Field (variable name) used to capture the actual date for this interval
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.actualDate;

/**
 * Number of days from the calculation date when the interval is due
 * @type {!number}
 * @export
 */
API.Client.Interval.prototype.dueDateWillBeIn;

/**
 * Number of days before the due date that are allowed (negative window)
 * @type {!number}
 * @export
 */
API.Client.Interval.prototype.negativeSlack;

/**
 * Number of days after the due date that are allowed (positive window)
 * @type {!number}
 * @export
 */
API.Client.Interval.prototype.positiveSlack;

/**
 * Number of days of grace period for ePRO completion after due date
 * @type {!number}
 * @export
 */
API.Client.Interval.prototype.eproGracePeriod;

/**
 * List of forms that are scheduled in this interval
 * @type {!Array<!API.Client.components_schemas_Interval_forms_item>}
 * @export
 */
API.Client.Interval.prototype.forms;

/**
 * Whether the interval is soft-deleted (disabled)
 * @type {!boolean}
 * @export
 */
API.Client.Interval.prototype.disabled;

/**
 * Date when this interval was created
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.dateCreated;

/**
 * Date when this interval was last modified
 * @type {!string}
 * @export
 */
API.Client.Interval.prototype.dateModified;

