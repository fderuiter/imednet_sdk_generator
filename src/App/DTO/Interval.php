<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Interval
{
    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Unique system identifier for the interval (visit definition)
     * @DTA\Data(field="intervalId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $interval_id = null;

    /**
     * Name of the interval (visit) as defined in the study
     * @DTA\Data(field="intervalName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $interval_name = null;

    /**
     * Description of the interval (visit)
     * @DTA\Data(field="intervalDescription", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $interval_description = null;

    /**
     * Sequence number of the interval in the schedule
     * @DTA\Data(field="intervalSequence", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $interval_sequence = null;

    /**
     * Identifier for the interval group (if intervals are grouped)
     * @DTA\Data(field="intervalGroupId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $interval_group_id = null;

    /**
     * Name of the interval group
     * @DTA\Data(field="intervalGroupName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $interval_group_name = null;

    /**
     * Type of interval visit window (e.g., None, Due Date, Start - End Date, Actual Date)
     * @DTA\Data(field="timeline", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $timeline = null;

    /**
     * Baseline interval used for calculating this interval’s dates
     * @DTA\Data(field="definedUsingInterval", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $defined_using_interval = null;

    /**
     * Baseline form (name) from which the calculation date is taken
     * @DTA\Data(field="windowCalculationForm", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $window_calculation_form = null;

    /**
     * Baseline field (variable name) from which the calculation date is taken
     * @DTA\Data(field="windowCalculationDate", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $window_calculation_date = null;

    /**
     * Form used to capture the actual date for this interval
     * @DTA\Data(field="actualDateForm", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $actual_date_form = null;

    /**
     * Field (variable name) used to capture the actual date for this interval
     * @DTA\Data(field="actualDate", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $actual_date = null;

    /**
     * Number of days from the calculation date when the interval is due
     * @DTA\Data(field="dueDateWillBeIn", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $due_date_will_be_in = null;

    /**
     * Number of days before the due date that are allowed (negative window)
     * @DTA\Data(field="negativeSlack", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $negative_slack = null;

    /**
     * Number of days after the due date that are allowed (positive window)
     * @DTA\Data(field="positiveSlack", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $positive_slack = null;

    /**
     * Number of days of grace period for ePRO completion after due date
     * @DTA\Data(field="eproGracePeriod", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $epro_grace_period = null;

    /**
     * List of forms that are scheduled in this interval
     * @DTA\Data(field="forms", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection5::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection5::class})
     */
    public ?\App\DTO\Collection5 $forms = null;

    /**
     * Whether the interval is soft-deleted (disabled)
     * @DTA\Data(field="disabled", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $disabled = null;

    /**
     * Date when this interval was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

    /**
     * Date when this interval was last modified
     * @DTA\Data(field="dateModified", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_modified = null;

}
