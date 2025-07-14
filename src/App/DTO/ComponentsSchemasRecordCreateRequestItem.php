<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class ComponentsSchemasRecordCreateRequestItem
{
    /**
     * Form key identifying the eCRF to create or update
     * @DTA\Data(field="formKey")
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $form_key = null;

    /**
     * Form ID identifying the eCRF to create or update (alternative to formKey)
     * @DTA\Data(field="formId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $form_id = null;

    /**
     * Name of the site where the record should be created (for new subject registration)
     * @DTA\Data(field="siteName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $site_name = null;

    /**
     * Site ID for the record (alternative to siteName)
     * @DTA\Data(field="siteId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $site_id = null;

    /**
     * Subject identifier (display ID) for which to create or update the record
     * @DTA\Data(field="subjectKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_key = null;

    /**
     * Subject ID for which to create or update the record (alternative to subjectKey)
     * @DTA\Data(field="subjectId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $subject_id = null;

    /**
     * Subject OID for which to create or update the record (alternative to subjectKey)
     * @DTA\Data(field="subjectOid", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $subject_oid = null;

    /**
     * Name of the interval (visit) for a scheduled record update
     * @DTA\Data(field="intervalName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $interval_name = null;

    /**
     * Interval ID for a scheduled record update (alternative to intervalName)
     * @DTA\Data(field="intervalId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $interval_id = null;

    /**
     * Record ID for updating an existing unscheduled record (if applicable)
     * @DTA\Data(field="recordId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $record_id = null;

    /**
     * Record OID for updating an existing unscheduled record (if applicable)
     * @DTA\Data(field="recordOid", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $record_oid = null;

    /**
     * Key-value pairs of field names and values for the record data
     * @DTA\Data(field="data")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection22::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection22::class})
     */
    public ?\App\DTO\Collection22 $data = null;

}
