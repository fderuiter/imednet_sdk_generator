<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Subject
{
    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Mednet subject ID (internal numeric ID)
     * @DTA\Data(field="subjectId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $subject_id = null;

    /**
     * Client-assigned subject object identifier (OID)
     * @DTA\Data(field="subjectOid", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_oid = null;

    /**
     * Protocol-assigned subject identifier (display ID)
     * @DTA\Data(field="subjectKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_key = null;

    /**
     * Current status of the subject (e.g., Enrolled)
     * @DTA\Data(field="subjectStatus", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_status = null;

    /**
     * Mednet site ID the subject is associated with
     * @DTA\Data(field="siteId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $site_id = null;

    /**
     * Name of the site the subject is associated with
     * @DTA\Data(field="siteName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $site_name = null;

    /**
     * Whether the subject is marked as deleted
     * @DTA\Data(field="deleted", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     */
    public ?bool $deleted = null;

    /**
     * Subject’s enrollment start date
     * @DTA\Data(field="enrollmentStartDate", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $enrollment_start_date = null;

    /**
     * Date when this subject record was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

    /**
     * Date when this subject record was last modified
     * @DTA\Data(field="dateModified", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_modified = null;

    /**
     * List of keywords associated with the subject
     * @DTA\Data(field="keywords", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection8::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection8::class})
     */
    public ?\App\DTO\Collection8 $keywords = null;

}
