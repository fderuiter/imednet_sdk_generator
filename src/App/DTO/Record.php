<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Record
{
    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Interval ID (visit definition) that this record is associated with
     * @DTA\Data(field="intervalId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $interval_id = null;

    /**
     * Form ID of the form this record instance belongs to
     * @DTA\Data(field="formId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $form_id = null;

    /**
     * Form key of the form for this record instance
     * @DTA\Data(field="formKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_key = null;

    /**
     * Site ID associated with the record
     * @DTA\Data(field="siteId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $site_id = null;

    /**
     * Unique record ID
     * @DTA\Data(field="recordId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $record_id = null;

    /**
     * Client-assigned record OID
     * @DTA\Data(field="recordOid", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $record_oid = null;

    /**
     * Type of record (e.g., SUBJECT for subject-related forms)
     * @DTA\Data(field="recordType", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $record_type = null;

    /**
     * Current status of the record (e.g., Record Incomplete, Record Complete)
     * @DTA\Data(field="recordStatus", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $record_status = null;

    /**
     * Whether the record is marked as deleted
     * @DTA\Data(field="deleted", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $deleted = null;

    /**
     * Date when this record was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

    /**
     * Date when this record was last modified
     * @DTA\Data(field="dateModified", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_modified = null;

    /**
     * Mednet subject ID that this record is associated with
     * @DTA\Data(field="subjectId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $subject_id = null;

    /**
     * Client-assigned subject OID for the subject this record is associated with
     * @DTA\Data(field="subjectOid", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_oid = null;

    /**
     * Subject display ID that this record is associated with
     * @DTA\Data(field="subjectKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_key = null;

    /**
     * Visit instance ID that this record is associated with (if applicable)
     * @DTA\Data(field="visitId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $visit_id = null;

    /**
     * Record ID of the parent record if this record is a subrecord (if applicable)
     * @DTA\Data(field="parentRecordId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $parent_record_id = null;

    /**
     * List of keywords associated with the record
     * @DTA\Data(field="keywords", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection19::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection19::class})
     */
    public ?\App\DTO\Collection19 $keywords = null;

    /**
     * Data fields and values captured in this record. The structure is dynamic, with keys corresponding to variable names.
     * @DTA\Data(field="recordData", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection20::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection20::class})
     */
    public ?\App\DTO\Collection20 $record_data = null;

}
