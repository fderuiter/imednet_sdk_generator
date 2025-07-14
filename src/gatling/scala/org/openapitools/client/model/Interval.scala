
package org.openapitools.client.model


case class Interval (
    /* Unique study key */
    _studyKey: Option[String],
    /* Unique system identifier for the interval (visit definition) */
    _intervalId: Option[Integer],
    /* Name of the interval (visit) as defined in the study */
    _intervalName: Option[String],
    /* Description of the interval (visit) */
    _intervalDescription: Option[String],
    /* Sequence number of the interval in the schedule */
    _intervalSequence: Option[Integer],
    /* Identifier for the interval group (if intervals are grouped) */
    _intervalGroupId: Option[Integer],
    /* Name of the interval group */
    _intervalGroupName: Option[String],
    /* Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) */
    _timeline: Option[String],
    /* Baseline interval used for calculating this interval’s dates */
    _definedUsingInterval: Option[String],
    /* Baseline form (name) from which the calculation date is taken */
    _windowCalculationForm: Option[String],
    /* Baseline field (variable name) from which the calculation date is taken */
    _windowCalculationDate: Option[String],
    /* Form used to capture the actual date for this interval */
    _actualDateForm: Option[String],
    /* Field (variable name) used to capture the actual date for this interval */
    _actualDate: Option[String],
    /* Number of days from the calculation date when the interval is due */
    _dueDateWillBeIn: Option[Integer],
    /* Number of days before the due date that are allowed (negative window) */
    _negativeSlack: Option[Integer],
    /* Number of days after the due date that are allowed (positive window) */
    _positiveSlack: Option[Integer],
    /* Number of days of grace period for ePRO completion after due date */
    _eproGracePeriod: Option[Integer],
    /* List of forms that are scheduled in this interval */
    _forms: Option[List[ComponentsSchemasIntervalFormsItem]],
    /* Whether the interval is soft-deleted (disabled) */
    _disabled: Option[Boolean],
    /* Date when this interval was created */
    _dateCreated: Option[String],
    /* Date when this interval was last modified */
    _dateModified: Option[String]
)
object Interval {
    def toStringBody(var_studyKey: Object, var_intervalId: Object, var_intervalName: Object, var_intervalDescription: Object, var_intervalSequence: Object, var_intervalGroupId: Object, var_intervalGroupName: Object, var_timeline: Object, var_definedUsingInterval: Object, var_windowCalculationForm: Object, var_windowCalculationDate: Object, var_actualDateForm: Object, var_actualDate: Object, var_dueDateWillBeIn: Object, var_negativeSlack: Object, var_positiveSlack: Object, var_eproGracePeriod: Object, var_forms: Object, var_disabled: Object, var_dateCreated: Object, var_dateModified: Object) =
        s"""
        | {
        | "studyKey":$var_studyKey,"intervalId":$var_intervalId,"intervalName":$var_intervalName,"intervalDescription":$var_intervalDescription,"intervalSequence":$var_intervalSequence,"intervalGroupId":$var_intervalGroupId,"intervalGroupName":$var_intervalGroupName,"timeline":$var_timeline,"definedUsingInterval":$var_definedUsingInterval,"windowCalculationForm":$var_windowCalculationForm,"windowCalculationDate":$var_windowCalculationDate,"actualDateForm":$var_actualDateForm,"actualDate":$var_actualDate,"dueDateWillBeIn":$var_dueDateWillBeIn,"negativeSlack":$var_negativeSlack,"positiveSlack":$var_positiveSlack,"eproGracePeriod":$var_eproGracePeriod,"forms":$var_forms,"disabled":$var_disabled,"dateCreated":$var_dateCreated,"dateModified":$var_dateModified
        | }
        """.stripMargin
}
