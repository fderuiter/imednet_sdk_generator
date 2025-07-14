<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Visit
{
    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Unique system identifier for the subject visit instance
     * @DTA\Data(field="visitId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $visit_id = null;

    /**
     * Unique system identifier of the interval definition for this visit
     * @DTA\Data(field="intervalId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $interval_id = null;

    /**
     * Name of the interval (visit) for this visit instance
     * @DTA\Data(field="intervalName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $interval_name = null;

    /**
     * Mednet subject ID of the subject
     * @DTA\Data(field="subjectId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $subject_id = null;

    /**
     * Protocol-assigned subject identifier
     * @DTA\Data(field="subjectKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_key = null;

    /**
     * Start date of the visit window (in YYYY-MM-DD format)
     * @DTA\Data(field="startDate", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $start_date = null;

    /**
     * End date of the visit window (in YYYY-MM-DD format)
     * @DTA\Data(field="endDate", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $end_date = null;

    /**
     * Due date of the visit (in YYYY-MM-DD format), if applicable
     * @DTA\Data(field="dueDate", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $due_date = null;

    /**
     * Actual date the visit took place (in YYYY-MM-DD format)
     * @DTA\Data(field="visitDate", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $visit_date = null;

    /**
     * Name of the form used to capture the actual visit date
     * @DTA\Data(field="visitDateForm", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $visit_date_form = null;

    /**
     * Variable name of the field capturing the actual visit date
     * @DTA\Data(field="visitDateQuestion", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $visit_date_question = null;

    /**
     * Whether the visit instance is marked as deleted
     * @DTA\Data(field="deleted", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $deleted = null;

    /**
     * Date when this visit record was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

    /**
     * Date when this visit record was last modified
     * @DTA\Data(field="dateModified", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_modified = null;

}
