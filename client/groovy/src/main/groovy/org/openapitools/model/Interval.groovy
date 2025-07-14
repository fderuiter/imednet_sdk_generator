package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ComponentsSchemasIntervalFormsItem;

@Canonical
class Interval {
    /* Unique study key */
    String studyKey
    /* Unique system identifier for the interval (visit definition) */
    Integer intervalId
    /* Name of the interval (visit) as defined in the study */
    String intervalName
    /* Description of the interval (visit) */
    String intervalDescription
    /* Sequence number of the interval in the schedule */
    Integer intervalSequence
    /* Identifier for the interval group (if intervals are grouped) */
    Integer intervalGroupId
    /* Name of the interval group */
    String intervalGroupName
    /* Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date) */
    String timeline
    /* Baseline interval used for calculating this interval’s dates */
    String definedUsingInterval
    /* Baseline form (name) from which the calculation date is taken */
    String windowCalculationForm
    /* Baseline field (variable name) from which the calculation date is taken */
    String windowCalculationDate
    /* Form used to capture the actual date for this interval */
    String actualDateForm
    /* Field (variable name) used to capture the actual date for this interval */
    String actualDate
    /* Number of days from the calculation date when the interval is due */
    Integer dueDateWillBeIn
    /* Number of days before the due date that are allowed (negative window) */
    Integer negativeSlack
    /* Number of days after the due date that are allowed (positive window) */
    Integer positiveSlack
    /* Number of days of grace period for ePRO completion after due date */
    Integer eproGracePeriod
    /* List of forms that are scheduled in this interval */
    List<ComponentsSchemasIntervalFormsItem> forms = new ArrayList<>()
    /* Whether the interval is soft-deleted (disabled) */
    Boolean disabled
    /* Date when this interval was created */
    String dateCreated
    /* Date when this interval was last modified */
    String dateModified
}
