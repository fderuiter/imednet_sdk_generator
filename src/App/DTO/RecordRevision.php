<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class RecordRevision
{
    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Unique system identifier for the record revision
     * @DTA\Data(field="recordRevisionId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $record_revision_id = null;

    /**
     * Unique system identifier of the related record
     * @DTA\Data(field="recordId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $record_id = null;

    /**
     * Client-assigned record OID (if any)
     * @DTA\Data(field="recordOid", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $record_oid = null;

    /**
     * Revision number of the record (version of the record status)
     * @DTA\Data(field="recordRevision", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $record_revision = null;

    /**
     * Revision number of the data within the record
     * @DTA\Data(field="dataRevision", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $data_revision = null;

    /**
     * Status of the record at this revision (user-defined status label)
     * @DTA\Data(field="recordStatus", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $record_status = null;

    /**
     * Mednet subject ID related to the record
     * @DTA\Data(field="subjectId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $subject_id = null;

    /**
     * Client-assigned subject OID related to the record
     * @DTA\Data(field="subjectOid", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_oid = null;

    /**
     * Subject display ID related to the record
     * @DTA\Data(field="subjectKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_key = null;

    /**
     * Site ID related to the record
     * @DTA\Data(field="siteId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $site_id = null;

    /**
     * Form key of the form that the record belongs to
     * @DTA\Data(field="formKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_key = null;

    /**
     * Interval ID (visit definition) related to the record
     * @DTA\Data(field="intervalId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $interval_id = null;

    /**
     * Role name of the user who saved the record revision
     * @DTA\Data(field="role", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $role = null;

    /**
     * Username of the user who saved the record revision
     * @DTA\Data(field="user", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $user = null;

    /**
     * Reason for change, if provided (for audit trail)
     * @DTA\Data(field="reasonForChange", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $reason_for_change = null;

    /**
     * Whether the record was deleted in this revision
     * @DTA\Data(field="deleted", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $deleted = null;

    /**
     * Date when this record revision was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

}
