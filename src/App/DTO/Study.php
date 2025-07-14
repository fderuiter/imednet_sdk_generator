<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

class Study
{
    /**
     * Sponsor key that this study belongs to
     * @DTA\Data(field="sponsorKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $sponsor_key = null;

    /**
     * Unique study key
     * @DTA\Data(field="studyKey", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_key = null;

    /**
     * Mednet study ID (internal numeric identifier)
     * @DTA\Data(field="studyId", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     */
    public ?int $study_id = null;

    /**
     * Name of the study
     * @DTA\Data(field="studyName", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_name = null;

    /**
     * Description of the study
     * @DTA\Data(field="studyDescription", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_description = null;

    /**
     * Type of study (e.g., STUDY)
     * @DTA\Data(field="studyType", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $study_type = null;

    /**
     * Date when the study record was created
     * @DTA\Data(field="dateCreated", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_created = null;

    /**
     * Date when the study record was last modified
     * @DTA\Data(field="dateModified", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     */
    public ?string $date_modified = null;

}
